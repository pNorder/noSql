db.cities.aggregate([
    {
        $geoNear: {
            near: [45.52, -122.67],
            distanceField: 'dist'
        }
    },
    {
        $sort: {
            population: -1
        }
    },
    {
        $project: {
            _id: 0,
            name: 1,
            population: 1,
            dist: 1
        }
    }
])
