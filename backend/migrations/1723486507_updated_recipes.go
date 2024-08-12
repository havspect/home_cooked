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

		// update
		edit_image_url := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "fv7yci6z",
			"name": "image_url",
			"type": "file",
			"required": false,
			"presentable": true,
			"unique": false,
			"options": {
				"mimeTypes": [
					"image/vnd.mozilla.apng",
					"image/jpeg",
					"image/png"
				],
				"thumbs": [],
				"maxSelect": 1,
				"maxSize": 5242880,
				"protected": false
			}
		}`), edit_image_url); err != nil {
			return err
		}
		collection.Schema.AddField(edit_image_url)

		// update
		edit_note := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "pmrmyf8l",
			"name": "note",
			"type": "text",
			"required": false,
			"presentable": false,
			"unique": false,
			"options": {
				"min": null,
				"max": null,
				"pattern": ""
			}
		}`), edit_note); err != nil {
			return err
		}
		collection.Schema.AddField(edit_note)

		return dao.SaveCollection(collection)
	}, func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("5eu5zmp8licfre1")
		if err != nil {
			return err
		}

		// update
		edit_image_url := &schema.SchemaField{}
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
					"image/jpeg",
					"image/png"
				],
				"thumbs": [],
				"maxSelect": 1,
				"maxSize": 5242880,
				"protected": false
			}
		}`), edit_image_url); err != nil {
			return err
		}
		collection.Schema.AddField(edit_image_url)

		// update
		edit_note := &schema.SchemaField{}
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
		}`), edit_note); err != nil {
			return err
		}
		collection.Schema.AddField(edit_note)

		return dao.SaveCollection(collection)
	})
}
