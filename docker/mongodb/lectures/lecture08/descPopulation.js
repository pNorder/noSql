db.cities.aggregate([
    {
        $match: {
            'timezone': {
                $eq: 'Europe/London'
            }
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
            population: 1
        }
    }
])
