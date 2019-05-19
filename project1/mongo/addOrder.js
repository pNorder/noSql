function addOrder(user, recipe){
    var recipeDoc = db.recipes.findOne({"_id": recipe});
    for(var i = 0; i < recipeDoc.ingredients.length; i++){
        var ingrName = recipeDoc.ingredients[i];
        var requiredAmt = recipeDoc.quantities[i];

        var ingredientDoc = db.ingredients.findOne({name: ingrName});
        var currentAmt = ingredientDoc.quantity;
        if(requiredAmt > currentAmt){
            print(`Error: Not enough ${ingrName}\n`);
        } else {
            var updatedAmt = currentAmt - requiredAmt;
            db.ingredients.update({name: ingrName}, {$set:{
                quantity: updatedAmt}
            });
            var newOrder = {
                userID: user,
                recipe: recipe,
                timestamp: + new Date()
            }

            db.orders.insert(newOrder);
        }
    }
}