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

		// add
		new_weekplan_recipes := &schema.SchemaField{}
		if err := json.Unmarshal([]byte(`{
			"system": false,
			"id": "ytxe0xwt",
			"name": "weekplan_recipes",
			"type": "relation",
			"required": false,
			"presentable": false,
			"unique": false,
			"options": {
				"collectionId": "iv9v63sjv37z5z1",
				"cascadeDelete": false,
				"minSelect": null,
				"maxSelect": null,
				"displayFields": null
			}
		}`), new_weekplan_recipes); err != nil {
			return err
		}
		collection.Schema.AddField(new_weekplan_recipes)

		return dao.SaveCollection(collection)
	}, func(db dbx.Builder) error {
		dao := daos.New(db);

		collection, err := dao.FindCollectionByNameOrId("yb09gejc4mrnc0b")
		if err != nil {
			return err
		}

		// remove
		collection.Schema.RemoveField("ytxe0xwt")

		return dao.SaveCollection(collection)
	})
}
