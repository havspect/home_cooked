package main

import (
	"io"
	"log"
	"net/http"

	"github.com/labstack/echo/v5"
	"github.com/pocketbase/pocketbase"
	"github.com/pocketbase/pocketbase/core"
	"github.com/pocketbase/pocketbase/forms"
	"github.com/pocketbase/pocketbase/models"
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
		//Create Default Collection
		collection, err := app.Dao().FindCollectionByNameOrId("collections")
		if err != nil {
			return err
		}

		collections_record := models.NewRecord(collection)

		// set individual fields
		// or bulk load with record.Load(map[string]any{...})
		collections_record.Set("name", "default")
		collections_record.Set("owner_id", e.Record.Id)

		if err := app.Dao().SaveRecord(collections_record); err != nil {
			return err
		}
		//Create Default Weekplan
		weekplan, err := app.Dao().FindCollectionByNameOrId("weekplans")
		if err != nil {
			return err
		}

		weekplan_record := models.NewRecord(weekplan)

		// set individual fields
		// or bulk load with record.Load(map[string]any{...})
		weekplan_record.Set("title", "default")
		weekplan_record.Set("owner_id", e.Record.Id)

		if err := app.Dao().SaveRecord(weekplan_record); err != nil {
			return err
		}

		resp, err := http.Get("https://api.dicebear.com/8.x/personas/svg?seed=" + e.Record.Id)
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
