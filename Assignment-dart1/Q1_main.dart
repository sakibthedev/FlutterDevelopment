import 'dart:io';

List<Map<String, dynamic>> items = [];

void addItem() {

print("Add Item:");

print("Enter item name: ");
String name = stdin.readLineSync()!;

print("Enter Item ID:");

int itemid = int.parse(stdin.readLineSync()!);

print("Enter Item Price:");
double price = double.parse(stdin.readLineSync()!);

items.add({
  "name": name,
  "id": itemid,
  "price": price,
});

print("Item added successfully!");
}

void removeItem() {
print("Enter item ID to remove: ");
int itemid = int.parse(stdin.readLineSync()!);

bool found = false;

for (var item in items) {
    if (item["id"] == itemid) {
      items.remove(item);
      found = true;
      break;
    }}

if (found) {
    print("Item removed successfully.");
  } else {
    print("Item not found.");
  } 

}

void displayItems() {
  if (items.isEmpty) {
    print("No items available.");
  } else {
    print("Items:");
    for (var item in items) {
      print("ID: ${item["id"]}, Name: ${item["name"]}, Price: ${item["price"]}");
    }
  }
}

void calculateTotalInventoryValue() {
  
  double totalValue = 0.0;

  for (var item in items) {
    totalValue += item["price"];
  }

  print("Total Inventory Value: ${totalValue.toString()}");
}


void main() {
  while (true) {
    print("\nMini Grocery Inventory");
    print("1. Add Item");
    print("2. Remove Item");
    print("3. Display Items");
    print("4. Calculate Total Inventory Value");
    print("5. Exit");
    print("Enter your choice: ");
    
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addItem();
        break;
      case 2:
        removeItem();
        break;
      case 3:
        displayItems();
        break;
      case 4:
        calculateTotalInventoryValue();
        break;
      case 5:
        print("Exiting...");
        return;
      default:
        print("Invalid choice. Please try again.");
    }
  }
}
