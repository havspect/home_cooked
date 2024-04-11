/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("z6cdnd5qd9ticp6")

  collection.listRule = "    @request.auth.id ?= users.id"
  collection.viewRule = ""

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("z6cdnd5qd9ticp6")

  collection.listRule = null
  collection.viewRule = null

  return dao.saveCollection(collection)
})
