package migrations

import (
	"encoding/json"

	"github.com/pocketbase/dbx"
	"github.com/pocketbase/pocketbase/daos"
	m "github.com/pocketbase/pocketbase/migrations"
	"github.com/pocketbase/pocketbase/models"
)

func init() {
	m.Register(func(db dbx.Builder) error {
		jsonData := `{
			"id": "r105kzi07jijbuy",
			"created": "2024-08-12 18:18:14.124Z",
			"updated": "2024-08-12 18:18:14.124Z",
			"name": "weekplan_shares",
			"type": "base",
			"system": false,
			"schema": [
				{
					"system": false,
					"id": "ufyv36in",
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
				},
				{
					"system": false,
					"id": "uwvpaftr",
					"name": "user_id",
					"type": "relation",
					"required": true,
					"presentable": false,
					"unique": false,
					"options": {
						"collectionId": "_pb_users_auth_",
						"cascadeDelete": false,
						"minSelect": null,
						"maxSelect": 1,
						"displayFields": null
					}
				}
			],
			"indexes": [
				"CREATE UNIQUE INDEX ` + "`" + `idx_uOoVyHE` + "`" + ` ON ` + "`" + `weekplan_shares` + "`" + ` (\n  ` + "`" + `weekplan_id` + "`" + `,\n  ` + "`" + `user_id` + "`" + `\n)"
			],
			"listRule": null,
			"viewRule": null,
			"createRule": null,
			"updateRule": null,
			"deleteRule": null,
			"options": {}
		}`

		collection := &models.Collection{}
		if err := json.Unmarshal([]byte(jsonData), &collection); err != nil {
			return err
		}

		return daos.New(db).SaveCollection(collection)
	}, func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("r105kzi07jijbuy")
		if err != nil {
			return err
		}

		return dao.DeleteCollection(collection)
	})
}
