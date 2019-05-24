function(doc){
    if('_id' in doc && '_conflicts' in doc){
        doc.conflicts.forEach(function(conflict){
        emit(doc._id, conflict);})
    }
}
