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
			"CREATE UNIQUE INDEX ` + "`" + `idx_r3lXhqn` + "`" + ` ON ` + "`" + `collections` + "`" + ` (\n  ` + "`" + `name` + "`" + `,\n  ` + "`" + `owner` + "`" + `\n)"
		]`), &collection.Indexes); err != nil {
			return err
		}

		// update
		edit_owner := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "swc2fxpz",
			"name": "owner",
			"type": "relation",
			"required": false,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "_pb_users_auth_",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": 1,
				"displayFields": null
			}
		}`), edit_owner); err != nil {
			return err
		}
		collection.Schema.AddField(edit_owner)

		return dao.SaveCollection(collection)
	}, func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("p4641jl06iu4jgj")
		if err != nil {
			return err
		}

		if err := json.Unmarshal([]byte(`[
			"CREATE UNIQUE INDEX ` + "`" + `idx_r3lXhqn` + "`" + ` ON ` + "`" + `collections` + "`" + ` (\n  ` + "`" + `name` + "`" + `,\n  ` + "`" + `owner_id` + "`" + `\n)"
		]`), &collection.Indexes); err != nil {
			return err
		}

		// update
		edit_owner := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "swc2fxpz",
			"name": "owner_id",
			"type": "relation",
			"required": false,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "_pb_users_auth_",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": 1,
				"displayFields": null
			}
		}`), edit_owner); err != nil {
			return err
		}
		collection.Schema.AddField(edit_owner)

		return dao.SaveCollection(collection)
	})
}