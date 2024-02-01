class GroceryData{
  List<Map<String, dynamic>> groceryList = [
  {
    'id': 1,
    'name': 'Apple',
    'description': 'Fresh and juicy apple',
    'price': 2.5,
    'imageUrl': 'data:image/jpeg;base64,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',
  },
  {
    'id': 2,
    'name': 'Banana',
    'description': 'Ripe banana',
    'price': 1.0,
    'imageUrl': 'data:image/jpeg;base64,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',
  },
  {
    'id': 3,
    'name': 'Carrot',
    'description': 'Organic carrot',
    'price': 1.5,
    'imageUrl': 'https://example.com/carrot.jpg',
  },
  {
    'id': 4,
    'name': 'Milk',
    'description': 'Fresh cows milk',
    'price': 2.0,
    'imageUrl': 'https://example.com/milk.jpg',
  },
  {
    'id': 5,
    'name': 'Eggs',
    'description': 'Farm-fresh eggs',
    'price': 3.0,
    'imageUrl': 'https://example.com/eggs.jpg',
  },
  {
    'id': 6,
    'name': 'Tomato',
    'description': 'Red and ripe tomato',
    'price': 1.2,
    'imageUrl': 'https://example.com/tomato.jpg',
  },
  {
    'id': 7,
    'name': 'Bread',
    'description': 'Whole wheat bread',
    'price': 2.8,
    'imageUrl': 'https://example.com/bread.jpg',
  },
  {
    'id': 8,
    'name': 'Spinach',
    'description': 'Fresh spinach leaves',
    'price': 1.7,
    'imageUrl': 'https://example.com/spinach.jpg',
  },
  {
    'id': 9,
    'name': 'Orange',
    'description': 'Sweet and tangy orange',
    'price': 1.8,
    'imageUrl': 'https://example.com/orange.jpg',
  },
  {
    'id': 10,
    'name': 'Potato',
    'description': 'Farm-fresh potatoes',
    'price': 1.3,
    'imageUrl': 'https://example.com/potato.jpg',
  },
];

}