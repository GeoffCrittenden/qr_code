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
                   'fajita',
                   'tomato',
                   'corn',
                   'green',
                   'red',
                   'sour',
                   'cheese',
                   'guacamole',
                   'lettuce',
                   'chips',
                   'large',
                   'small' ]

chipotle_items.each { |item| Item.create(restaurant_id: restaurant.id, name: item) }