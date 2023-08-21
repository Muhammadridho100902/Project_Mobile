void main() {
  /**
   * initializer constructor adalah tempat dimana kita bisa mengubah field pada object, sebelum block body constructor
   * hal ini menjadi lebih mudah dibanding mengubah field  di dalam block constructor
   */

  var customer = Customer("Muhammad Ridho");
  print(customer.fullName);
  print(customer.firstName);
  print(customer.lastName);
}

class Customer {
  // ini namanya field
  String firstName = "";
  String lastName = "";
  String fullName = "";

  Customer(this.fullName)
      : firstName = fullName.split(" ")[0],
        lastName = fullName.split(" ")[1] {
    print("Create new Customer");
  }
}
