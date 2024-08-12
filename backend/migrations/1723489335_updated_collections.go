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

		collection, err := dao.FindCollectionByNameOrId("p4641jl06iu4jgj")
		if err != nil {
			return err
		}

		if err := json.Unmarshal([]byte(`[
			"CREATE UNIQUE INDEX ` + "`" + `idx_r3lXhqn` + "`" + ` ON ` + "`" + `collections` + "`" + ` (\n  ` + "`" + `title` + "`" + `,\n  ` + "`" + `owner` + "`" + `\n)"
		]`), &collection.Indexes); err != nil {
			return err
		}

		// update
		edit_title := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "pfcjencd",
			"name": "title",
			"type": "text",
			"required": true,
			"presentable": true,
			"unique": false,
			"options": {
				"min": null,
				"max": null,
				"pattern": ""
			}
		}`), edit_title); err != nil {
			return err
		}
		collection.Schema.AddField(edit_title)

		return dao.SaveCollection(collection)
	}, func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("p4641jl06iu4jgj")
		if err != nil {
			return err
		}

		if err := json.Unmarshal([]byte(`[
			"CREATE UNIQUE INDEX ` + "`" + `idx_r3lXhqn` + "`" + ` ON ` + "`" + `collections` + "`" + ` (\n  ` + "`" + `name` + "`" + `,\n  ` + "`" + `owner` + "`" + `\n)"
		]`), &collection.Indexes); err != nil {
			return err
		}

		// update
		edit_title := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "pfcjencd",
			"name": "name",
			"type": "text",
			"required": true,
			"presentable": true,
			"unique": false,
			"options": {
				"min": null,
				"max": null,
				"pattern": ""
			}
		}`), edit_title); err != nil {
			return err
		}
		collection.Schema.AddField(edit_title)

		return dao.SaveCollection(collection)
	})
}
