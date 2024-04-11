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
			"id": "5eu5zmp8licfre1",
			"created": "2024-04-11 11:17:05.428Z",
			"updated": "2024-04-11 11:17:05.428Z",
			"name": "recipes",
			"type": "base",
			"system": false,
			"schema": [
				{
					"system": false,
					"id": "1ok9etvh",
					"name": "title",
					"type": "text",
					"required": true,
					"presentable": false,
					"unique": false,
					"options": {
						"min": null,
						"max": null,
						"pattern": ""
					}
				},
				{
					"system": false,
					"id": "4sphgffd",
					"name": "link",
					"type": "url",
					"required": false,
					"presentable": false,
					"unique": false,
					"options": {
						"exceptDomains": null,
						"onlyDomains": null
					}
				}
			],
			"indexes": [
				"CREATE UNIQUE INDEX ` + "`" + `idx_j830pmv` + "`" + ` ON ` + "`" + `recipes` + "`" + ` (` + "`" + `title` + "`" + `)"
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

		collection, err := dao.FindCollectionByNameOrId("5eu5zmp8licfre1")
		if err != nil {
			return err
		}

		return dao.DeleteCollection(collection)
	})
}
