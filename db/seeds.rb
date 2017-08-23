# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

menu_item = MenuItem.all

menu_item.each do |item|
  item.destroy.save unless item.nil?
end

puts ' -//- cleaning;'

# "BREAKFAST MENU"
section = 'BREAKFAST'
second_section = 'Bagels with Spreads'

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Assorted Bagels',
  price: '$1',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bagel w/Butter',
  price: '$2',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bagel w/Regular Cream Cheese',
  price: '$3',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bagel w/Scallion Cream Cheese',
  price: '$3.50',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bagel w/Vegatable Cream Cheese',
  price: '$3.50',
  description: '',
  extras: ''
)

# Egg Sandwiches
second_section = 'Egg Sandwiches'
MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bagel w/Eggs',
  price: '$3.50',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bagel w/Eggs and Cheese',
  price: '$4',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Croissant w/Eggs',
  price: '$4',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Croissant w/Eggs and Cheese',
  price: '$4.50',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bagel w/Eggs Salad',
  price: '$4.75',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bagel w/Tuna Salad',
  price: '$4.75',
  description: '',
  extras: ''
)

# Pastries
second_section = 'Pastries'
MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Croissant',
  price: '$2.50',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Cheese/Chocolate Danish',
  price: '$2.50',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Assorted Muffins',
  price: '$2.50',
  description: '',
  extras: ''
)


section = 'PIZZA'
second_section = 'Round Pies - (Slices/10" Pie/18" Pie)'
MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Regular',
  price: '$2.75/$8.50/$18',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Whole Wheat',
  price: '$10.50/$20',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Extra Cheese',
  price: '$3/$9.50/$20',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Mushroom',
  price: '$3.50/$9.50/$20',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Blanca',
  price: '$3.50/$10.50/$22',
  description: 'Mozzarella with Ricotta cheese',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Jalapeno',
  price: '$3.50/$9.50/$22',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Pineapple',
  price: '$3.50/$9.50/$22',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Mixed Olives',
  price: '$3.50/$9.50/$22',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Vegatable',
  price: '$3.50/$10.50/$24',
  description: 'Mixed Fresh Vegatables',
  extras: ''
)


MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Broccoli',
  price: '$3.50/$10.50/$24',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Spinach',
  price: '$3.50/$10.50/$24',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Eggplant',
  price: '$3.50/$10.50/$24',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Margherita',
  price: '$3.50/$10.50/$24',
  description: 'Fresh Mozzarella, Marinara Sauce, Fresh Basil',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Pepperoni/Bacon (Soy)',
  price: '$4/$11/$26',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Additional Toppings',
  price: 'Available',
  description: 'Corn, Red Onions, Tomatoes, Bell Peppers, etc...',
  extras: ''
)

second_section = 'Square Pies'

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Grandma',
  price: '$4/$28',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Sicilian',
  price: '$4/$28',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bruschetta',
  price: '$4/$28',
  description: 'Chopped Tomatoes and Onions w/ Fresh Mozzarella',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Vodka Slice',
  price: '$4/$28',
  description: 'Vodka Sauce, Mozzarella, Fresh Basil',
  extras: ''
)

second_section = 'Family Special (Monday-Thursday)'

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Family Special - 1',
  price: '$22',
  description: 'One regular 18" pie, one large french fries and one 2L soda',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Family Special - 2',
  price: '$28',
  description: 'One vegetable 18" pie, one large cheese fries and one 2L soda',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Family Special - 3',
  price: '$36',
  description: 'One square pie, 6pc garlic knots, 6pc mozzarella sticks and one 2L soda',
  extras: ''
)

#MenuItem.create(
#  section: section,
#  second_section: second_section,
#  name: 'Rego House Special',
#  price: '$4/$28',
#  description: '',
#  extras: ''
#)

# LUNCH/DINNER
section = 'LUNCH/DINNER'
second_section = 'Salad'

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Fresh Garden Salad',
  price: '$10',
  description: 'Romaine Lettuce, Tomatoes, Cucumbers, Onions',
  extras: 'Dressing: choose from thousand island & balsamic vinaigrette olive lemon oil'
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Greek Mediterranean Salad',
  price: '$10',
  description: 'Romaine Lettuce, Feta Cheese, Olives, Tomatos and Cucumber tossed with olive oil',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Caesar Salad',
  price: '$10',
  description: 'Romaine Lettuce, Croutons, parmesan cheese tossed with caesar dressing',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Make Your Own Salad',
  price: '$10',
  description: 'Romaine Lettuce, Croutons, parmesan cheese tossed with caesar dressing',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: '',
  price: '',
  description: 'Extra charge of $2 for avocado, tuna, hard-boiled eggs',
  extras: ''
)

second_section = 'Pasta'

#MenuItem.create(
#  section: section,
#  second_section: second_section,
#  name: 'Mac N Cheese',
#  price: '$8',
#  description: '',
#  extras: ''
#)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Baked Ziti',
  price: '$10',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Spicy Ziti',
  price: '$10',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Fettuchine Alfredo',
  price: '$10',
  description: '',
  extras: ''
)

#MenuItem.create(
#  section: section,
#  second_section: second_section,
#  name: 'Fettuchine Alfredo',
#  price: '$11',
#  description: '',
#  extras: ''
#)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Penne A La Vodka',
  price: '$10',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Eggplant Parmesan',
  price: '$10',
  description: 'Penne Pasta in Pink Souce',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Whole Wheat Penne Pomodoro',
  price: '$12',
  description: 'Penne Pasta in Pink Souce',
  extras: ''
)

second_section = 'Calzone Rolls'
MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Cheese Calzone Roll',
  price: '$5',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Vegatable Calzone Roll',
  price: '$5',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Deep Fried Calzone Roll',
  price: '$6',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Custom Calzone Roll',
  price: '$7',
  description: '',
  extras: ''
)

second_section = 'Side Orders'

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Cinnamon Twists (9Pc)',
  price: '$5',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'French Fries',
  price: '$3.75',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Cheese Fries',
  price: '$5.25',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Spicy Fries',
  price: '$4.50',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Mzzarella Sticks (6 pieces)',
  price: '$6',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Garlic Knots (6 pieces)',
  price: '$2',
  description: '',
  extras: ''
)

second_section = 'Falafel in Pita'
MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Falafel in Pita',
  price: '$6',
  description: '',
  extras: ''
)


second_section = 'Soup'
MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Split Pea',
  price: '$4',
  description: 'Comes with 3pc garlic knots',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Soup of the Day',
  price: '$4',
  description: 'Comes with 3pc garlic knots',
  extras: ''
)

section = 'HOT BEVARAGES'
second_section = ''
MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Regular Tea',
  price: 'SM:$1.50    LG:$2',
  description: 'Black/Green',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Tea',
  price: 'SM:$1.75    LG:$2.25',
  description: 'Assorted Flavored',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Hot Coffee',
  price: 'SM:$1.50    LG:$2',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Hot Chocolate',
  price: 'SM:$2    LG:$2.25',
  description: '',
  extras: ''
)

section = 'COLD BEVARAGES'
second_section = ''
MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Iced Coffee',
  price: 'SM:$2.50    LG:$3.50',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Snapple',
  price: '$2',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Bottled Water',
  price: '$1.25',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Soda Bottle (20oz)',
  price: '$2.25',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Israeli Drink',
  price: '$2',
  description: '',
  extras: ''
)

MenuItem.create(
  section: section,
  second_section: second_section,
  name: 'Orange Juice',
  price: '16oz:$4.50   24oz:6$:00',
  description: 'Freshly Squeezed',
  extras: ''
)


puts ' -//- menu created;'
