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

		// add
		new_recipes := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "qyxi4daa",
			"name": "recipes",
			"type": "relation",
			"required": true,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "5eu5zmp8licfre1",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": null,
				"displayFields": null
			}
		}`), new_recipes); err != nil {
			return err
		}
		collection.Schema.AddField(new_recipes)

		return dao.SaveCollection(collection)
	}, func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("p4641jl06iu4jgj")
		if err != nil {
			return err
		}

		// remove
		collection.Schema.RemoveField("qyxi4daa")

		return dao.SaveCollection(collection)
	})
}
