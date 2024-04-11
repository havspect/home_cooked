/// <reference path="../pb_data/types.d.ts" />
migrate((db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("z6cdnd5qd9ticp6")

  collection.listRule = "  @request.auth.id ?= users.id"
  collection.viewRule = "  @request.auth.id ?= users.id"
  collection.createRule = "@request.auth.id = owner.id"
  collection.updateRule = "@request.auth.id = owner.id"
  collection.deleteRule = "@request.auth.id = owner.id"

  return dao.saveCollection(collection)
}, (db) => {
  const dao = new Dao(db)
  const collection = dao.findCollectionByNameOrId("z6cdnd5qd9ticp6")

  collection.listRule = "    @request.auth.id ?= users.id"
  collection.viewRule = ""
  collection.createRule = null
  collection.updateRule = null
  collection.deleteRule = null

  return dao.saveCollection(collection)
})
