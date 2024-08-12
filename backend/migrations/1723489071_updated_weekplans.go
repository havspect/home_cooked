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

		collection, err := dao.FindCollectionByNameOrId("yb09gejc4mrnc0b")
		if err != nil {
			return err
		}

		if err := json.Unmarshal([]byte(`[
			"CREATE UNIQUE INDEX ` + "`" + `idx_rqTCf5c` + "`" + ` ON ` + "`" + `weekplans` + "`" + ` (\n  ` + "`" + `title` + "`" + `,\n  ` + "`" + `owner` + "`" + `\n)"
		]`), &collection.Indexes); err != nil {
			return err
		}

		// add
		new_shared_users := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "hgw3ynaw",
			"name": "shared_users",
			"type": "relation",
			"required": false,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "_pb_users_auth_",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": null,
				"displayFields": null
			}
		}`), new_shared_users); err != nil {
			return err
		}
		collection.Schema.AddField(new_shared_users)

		// update
		edit_owner := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "klt8bbgv",
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

		collection, err := dao.FindCollectionByNameOrId("yb09gejc4mrnc0b")
		if err != nil {
			return err
		}

		if err := json.Unmarshal([]byte(`[
			"CREATE UNIQUE INDEX ` + "`" + `idx_rqTCf5c` + "`" + ` ON ` + "`" + `weekplans` + "`" + ` (\n  ` + "`" + `title` + "`" + `,\n  ` + "`" + `owner_id` + "`" + `\n)"
		]`), &collection.Indexes); err != nil {
			return err
		}

		// remove
		collection.Schema.RemoveField("hgw3ynaw")

		// update
		edit_owner := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "klt8bbgv",
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
