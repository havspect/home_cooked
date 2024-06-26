/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("z6cdnd5qd9ticp6")

  collection.listRule = ""
  collection.viewRule = ""

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("z6cdnd5qd9ticp6")

  collection.listRule = "  @request.auth.id ?= users.id"
  collection.viewRule = "  @request.auth.id ?= users.id"

  return dao.saveCollection(collection)
})
