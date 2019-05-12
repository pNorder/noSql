db.cities.find({
    location: {
        $geoWithin: {
            $centerSphere: [ [51.509865, -0.118092], 100/3963.2 ]
        }
    }
})