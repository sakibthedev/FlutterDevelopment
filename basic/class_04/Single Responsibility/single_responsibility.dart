/*
Bad Desgin(God Class) = Giving too much Responsibility to class
*/

class User {
  // God Class
  void register() {} // User Shouldn't be concered about registering workflow
  void login() {} //
  void sendEmail() {}
  void
  saveToDatabase() {} // User Shouldn't be concered about saving into database
  void genrateReport() {}
} // Ingore making god class

class Auth {
  void register() {}
  void login() {}
}
