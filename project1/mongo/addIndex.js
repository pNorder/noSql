printjson(db.orders.find({"recipe": "4"}).explain());
db.orders.createIndex({"recipe": 1});
printjson(db.orders.find({"recipe": "4"}).explain());