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

		collection, err := dao.FindCollectionByNameOrId("iv9v63sjv37z5z1")
		if err != nil {
			return err
		}

		collection.Name = "weekplan_recipes"

		if err := json.Unmarshal([]byte(`[
			"CREATE INDEX ` + "`" + `idx_Z0UBzJu` + "`" + ` ON ` + "`" + `weekplan_recipes` + "`" + ` (\n  ` + "`" + `weekplan_id` + "`" + `,\n  ` + "`" + `recipe_id` + "`" + `,\n  ` + "`" + `date` + "`" + `\n)"
		]`), &collection.Indexes); err != nil {
			return err
		}

		// update
		edit_weekplan_id := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "sxl9qfz7",
			"name": "weekplan_id",
			"type": "relation",
			"required": true,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "yb09gejc4mrnc0b",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": 1,
				"displayFields": null
			}
		}`), edit_weekplan_id); err != nil {
			return err
		}
		collection.Schema.AddField(edit_weekplan_id)

		// update
		edit_recipe_id := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "a09t9tls",
			"name": "recipe_id",
			"type": "relation",
			"required": true,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "5eu5zmp8licfre1",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": 1,
				"displayFields": null
			}
		}`), edit_recipe_id); err != nil {
			return err
		}
		collection.Schema.AddField(edit_recipe_id)

		return dao.SaveCollection(collection)
	}, func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("iv9v63sjv37z5z1")
		if err != nil {
			return err
		}

		collection.Name = "weekplans_recipes"

		if err := json.Unmarshal([]byte(`[]`), &collection.Indexes); err != nil {
			return err
		}

		// update
		edit_weekplan_id := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "sxl9qfz7",
			"name": "weekplan",
			"type": "relation",
			"required": true,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "yb09gejc4mrnc0b",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": 1,
				"displayFields": null
			}
		}`), edit_weekplan_id); err != nil {
			return err
		}
		collection.Schema.AddField(edit_weekplan_id)

		// update
		edit_recipe_id := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "a09t9tls",
			"name": "recipe",
			"type": "relation",
			"required": true,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "5eu5zmp8licfre1",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": 1,
				"displayFields": null
			}
		}`), edit_recipe_id); err != nil {
			return err
		}
		collection.Schema.AddField(edit_recipe_id)

		return dao.SaveCollection(collection)
	})
}
