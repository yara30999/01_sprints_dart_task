void main() {
  const double taxRate = 0.10;
  double totalPriceTaxesFree = 0.0;

  List<Map<String, dynamic>> groceryItems = [
    {'name': 'Meat', 'price': 290.99},
    {'name': 'Eggs', 'price': 170.99},
    {'name': 'Milk', 'price': 22.99},
    {'name': 'Bread', 'price': 10.00},
    {'name': 'Cheese', 'price': 70.99},
    {'name': 'Fruits', 'price': 30.99},
  ];

  // Calculate total price using a loop
  for (var item in groceryItems) {
    totalPriceTaxesFree += item['price'];
    print('Item: ${item['name']}, Price: E£ ${item['price']}');
  }

  // Calculate tax amount
  double taxAmount = totalPriceTaxesFree * taxRate;

  // Calculate final price including tax
  double finalPrice = totalPriceTaxesFree + taxAmount;

  print('Subtotal: E£ ${totalPriceTaxesFree.toStringAsFixed(2)}');
  print('Tax Rate: ${(taxRate * 100)}%');
  print('Tax Amount: E£ ${taxAmount.toStringAsFixed(2)}');
  print('Total Price (including tax): E£ ${finalPrice.toStringAsFixed(2)}');
}
