package main

import (
	"io"
	"log"
	"net/http"

	"github.com/labstack/echo/v5"
	"github.com/pocketbase/pocketbase"
	"github.com/pocketbase/pocketbase/core"
	"github.com/pocketbase/pocketbase/forms"
	"github.com/pocketbase/pocketbase/plugins/migratecmd"
	"github.com/pocketbase/pocketbase/tools/filesystem"
)

func main() {
	app := pocketbase.New()

	migratecmd.MustRegister(app, app.RootCmd, migratecmd.Config{
		// enable auto creation of migration files when making collection changes in the Admin UI
		// (the isGoRun check is to enable it only during development)
		Automigrate: true,
	})

	app.OnBeforeServe().Add(func(e *core.ServeEvent) error {
		e.Router.GET("/hello/:name", func(c echo.Context) error {
			name := c.PathParam("name")

			return c.JSON(http.StatusOK, map[string]string{"message": "Hello " + name})
		} /* optional middlewares */)

		return nil
	})

	// fires only for "users" and "articles" collections
	app.OnRecordAfterCreateRequest("users").Add(func(e *core.RecordCreateEvent) error {
		resp, err := http.Get("https://api.dicebear.com/8.x/personas/svg")
		if err != nil {
			return err
		}

		defer resp.Body.Close()

		b, err := io.ReadAll(resp.Body)
		if err != nil {
			log.Fatalln(err)
		}

		record := e.Record

		form := forms.NewRecordUpsert(app, record)

		file, err := filesystem.NewFileFromBytes(b, "avatar.svg")
		if err != nil {
			return err
		}

		// add files to upload
		form.AddFiles("avatar", file)

		// Submit handles validation, upload and record persistence
		return form.Submit()
	})

	if err := app.Start(); err != nil {
		log.Fatal(err)
	}
}
