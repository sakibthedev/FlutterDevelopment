// class Payment {
//   void pay(String type) {
//     if (type == "card") {
//       print("Paying with Card");
//     } else if (type == "bkash") {
//       print("Paying with Bkash");
//     } else if (type == "paypal") {
//       print("Paying with PayPal");
//     } else if (type == "nagad") {
//       print("Paying with Nagad");
//     }
//   }
// }

abstract class PaymentMethod {
  void pay();
}

class CardPayment extends PaymentMethod {
  @override
  void pay() {
    print("Paying by card");
  }
}

class BkashaPayment extends PaymentMethod {
  @override
  void pay() {
    print("Paying with Bkash");
  }
}

class NagadPayment extends PaymentMethod {
  @override
  void pay() {
    print("Paying with Nagad");
  }
}

void processPayment(PaymentMethod payment) {
  payment.pay(); // BkashaPayment.pay()
}

void main() {
  processPayment(BkashaPayment());
}
