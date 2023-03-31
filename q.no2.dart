List<Map<String, dynamic>> products = [
  {"name": "Product A", "price": 10.0, "quantity": 5},
  {"name": "Product B", "price": 20.0, "quantity": 3},
  {"name": "Product C", "price": 15.0, "quantity": 2},
  {"name": "Product D", "price": 8.0, "quantity": 10},
];

products.sort((a, b) => (b["price"] * b["quantity"]).compareTo(a["price"] * a["quantity"]));

print(products);
[
  {name: Product D, price: 8.0, quantity: 10},
  {name: Product B, price: 20.0, quantity: 3},
  {name: Product A, price: 10.0, quantity: 5},
  {name: Product C, price: 15.0, quantity: 2}
]
