
void main() {
  var a = bankAccount(101, 500);
  var b = bankAccount.empty();

  print(a.deposit(200));    
  print(a.withdraw(300));   
   
  print(b.balance);         
}
class bankAccount {
  late int accountID;
  late double balance;
  bankAccount(this.accountID, this.balance);
  bankAccount.empty() : accountID = 0, balance = 0;

  String withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      return 'withdraw = $amount your balance = $balance';
    }
    return 'your balance less than amount';
  }

  // Deposits money into the account
  String deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      return ' your balance = $balance';
    }
    return 'Invalid deposit amount';
  }
}
