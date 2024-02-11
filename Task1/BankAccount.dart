class BankAccount {
  int id;
  String accountOwner;
  double balance;

  BankAccount(this.id, this.accountOwner, this.balance);

  void setId(int id) {
    this.id = id;
  }
  int getId() {
    return id;
  }
  void setAccountOnwer(String owner)
  {
    this.accountOwner = owner;
  }

  String getAccountOwner() {
    return accountOwner;
  }

  double getBalance() {
    return balance;
  }

  void setBalance(double balance) {
    this.balance = balance;
  }

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("Insufficient funds");
    }
  }

  @override
  String toString() {
    return 'BankAccount{id: $id, accountOwner: $accountOwner, balance: $balance}';
  }
}


