package migrations

import (
	"encoding/json"

	"github.com/pocketbase/dbx"
	"github.com/pocketbase/pocketbase/daos"
	m "github.com/pocketbase/pocketbase/migrations"
	"github.com/pocketbase/pocketbase/models/schema"
)

func init() {
	m.Register(func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("5eu5zmp8licfre1")
		if err != nil {
			return err
		}

		// add
		new_image := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "fv7yci6z",
			"name": "image",
			"type": "file",
			"required": false,
			"presentable": true,
			"unique": false,
			"options": {
				"mimeTypes": [
					"image/vnd.mozilla.apng",
					"image/jpeg"
				],
				"thumbs": [],
				"maxSelect": 1,
				"maxSize": 5242880,
				"protected": false
			}
		}`), new_image); err != nil {
			return err
		}
		collection.Schema.AddField(new_image)

		// add
		new_source := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "x689mpkd",
			"name": "source",
			"type": "text",
			"required": false,
			"presentable": false,
			"unique": false,
			"options": {
				"min": null,
				"max": null,
				"pattern": ""
			}
		}`), new_source); err != nil {
			return err
		}
		collection.Schema.AddField(new_source)

		// add
		new_text := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "pmrmyf8l",
			"name": "text",
			"type": "text",
			"required": false,
			"presentable": false,
			"unique": false,
			"options": {
				"min": null,
				"max": null,
				"pattern": ""
			}
		}`), new_text); err != nil {
			return err
		}
		collection.Schema.AddField(new_text)

		return dao.SaveCollection(collection)
	}, func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("5eu5zmp8licfre1")
		if err != nil {
			return err
		}

		// remove
		collection.Schema.RemoveField("fv7yci6z")

		// remove
		collection.Schema.RemoveField("x689mpkd")

		// remove
		collection.Schema.RemoveField("pmrmyf8l")

		return dao.SaveCollection(collection)
	})
}
