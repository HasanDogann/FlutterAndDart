class Customer {
  int? _customerId;

  //Costumer(this._customerId);
  Customer(int customerNo) {
    _idCheck(customerNo);
  }

  String get showCustomerId => "Customer id is : $_customerId";
  

  void set giveCustomerId(int no){
        if (no > 300) {
      _customerId = no;
    } else
      return;
  }


  void _idCheck(int no) {
    if (no > 300) {
      _customerId = no;
    } else
      return;
  }

  void giveInfo() {
    print("Customer is created and ID is : $_customerId ");
  }
}
