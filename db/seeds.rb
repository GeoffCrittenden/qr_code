restaurant = Restaurant.create(name: 'Chipotle')

chipotle_items = [ 'burrito',
                   'bowl',
                   'tacos',
                   'salad',
                   'chicken',
                   'steak',
                   'sofritas',
                   'barbacoa',
                   'carnitas',
                   'white',
                   'brown',
                   'black',
                   'pinto',
                   'fajita veggies',
                   'fresh tomato salsa',
                   'roasted chili-corn salsa',
                   'tomatillo-green chili salsa',
                   'tomatillo-red chili salsa',
                   'sour cream',
                   'cheese',
                   'guacamole',
                   'lettuce',
                   'chips',
                   'large soda pop',
                   'small soda pop' ]

chipotle_items.each { |item| Item.create(restaurant_id: restaurant.id, name: item) }