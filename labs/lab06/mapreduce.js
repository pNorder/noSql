map = function() {
    var longitude = this.location.longitude;
    var truncLong = Math.trunc(longitude);
    emit(truncLong, 1);
}


reduce = function(key,values) {
    var count = 0;
    values.forEach(function(v){
        count+=v;
    });
    //reference used from different problem 
    //https://stackoverflow.com/questions/16174591/mongo-count-the-number-of-word-occurrences-in-a-set-of-documents
    return count;
}

results = db.runCommand({
    mapReduce: 'cities',
    map: map,
    reduce: reduce,
    out: 'cities.report'
})
