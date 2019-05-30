function(doc){
    if('name' in doc){
        emit(doc.random, doc.name);
    }
}
