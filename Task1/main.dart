import 'BankAccount.dart';
import 'dart:io';
void main() {
  //Task1
  bool flag = true;
  int cnt = 0;
  BankAccount account = BankAccount(1, "unknow", 0.0);
  while(flag)
  {
    print("Enter id:");
    int id = int.parse(stdin.readLineSync()!);
    if(id > 0)
    {
      print("Enter accountOnwer:");
      String accountOwner = stdin.readLineSync()!;
      if(accountOwner != "")
      {
        print("Enter balance:");
        double balance = double.parse(stdin.readLineSync()!);
        if(balance >= 0)
        {
          account.setId(id + cnt);
          account.setAccountOnwer(accountOwner);
          account.setBalance(balance);
          cnt++;
          flag = false;
        }
        else
        {
          print("Balance cannot be negative!");
        }
      }
      else
      {
        print("The account owner field cannot be empty!");
      }
    }
    else
    {
      print("ID value cannot be less than 1!");
    }
  }
  print(account);
  account.deposit(500.0);
  print(account.getBalance());
  account.withdraw(200.0);
  print(account.getBalance());
}