{
  "$GMObject":"",
  "%Name":"obj_tower",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_tower",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"tower_health","filters":[],"listItems":[],"multiselect":false,"name":"tower_health","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"build_cost","filters":[],"listItems":[],"multiselect":false,"name":"build_cost","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"attack_range","filters":[],"listItems":[],"multiselect":false,"name":"attack_range","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"150","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"projectile_speed","filters":[],"listItems":[],"multiselect":false,"name":"projectile_speed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"fire_rate","filters":[],"listItems":[],"multiselect":false,"name":"fire_rate","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"20","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"target","filters":[],"listItems":[],"multiselect":false,"name":"target","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"ammo_type","filters":[],"listItems":[],"multiselect":false,"name":"ammo_type","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_arrow","path":"objects/obj_arrow/obj_arrow.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_arrow","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"can_fire","filters":[],"listItems":[],"multiselect":false,"name":"can_fire","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"true","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_tower",
    "path":"sprites/spr_tower/spr_tower.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}