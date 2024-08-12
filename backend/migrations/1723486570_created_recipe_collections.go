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
			"id": "9rcyubqsd22tuen",
			"created": "2024-08-12 18:16:10.393Z",
			"updated": "2024-08-12 18:16:10.393Z",
			"name": "recipe_collections",
			"type": "base",
			"system": false,
			"schema": [
				{
					"system": false,
					"id": "sf5iezic",
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
				},
				{
					"system": false,
					"id": "li3sjfyd",
					"name": "collection_id",
					"type": "relation",
					"required": true,
					"presentable": false,
					"unique": false,
					"options": {
						"collectionId": "p4641jl06iu4jgj",
						"cascadeDelete": false,
						"minSelect": null,
						"maxSelect": 1,
						"displayFields": null
					}
				}
			],
			"indexes": [
				"CREATE UNIQUE INDEX ` + "`" + `idx_78nQPOp` + "`" + ` ON ` + "`" + `recipe_collections` + "`" + ` (\n  ` + "`" + `recipe_id` + "`" + `,\n  ` + "`" + `collection_id` + "`" + `\n)"
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

		collection, err := dao.FindCollectionByNameOrId("9rcyubqsd22tuen")
		if err != nil {
			return err
		}

		return dao.DeleteCollection(collection)
	})
}
