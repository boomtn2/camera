// ignore_for_file: public_member_api_docs, sort_constructors_first

List<Account> listAccount = [
  Account(user: "admin", pass: "admin"),
  Account(user: "1", pass: "1")
];

class Account {
  String user;
  String pass;

  Account({
    required this.user,
    required this.pass,
  });
}
