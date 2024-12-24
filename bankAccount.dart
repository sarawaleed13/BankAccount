class BankAccount {
   String account;
  double balance;

  // Constructor for accountID and balance
  BankAccount(this.account,this.balance);
  // NAmed consteructor
 BankAccount.forBalance(String accountID)
      : this.account = accountID,
        this.balance = 0; 

 
  void withdraw(num amount) {
    if (amount <= 0) {
      print('Not positive.');
    } else if (amount > balance) {
      print(' Balance is not suffectent .');
    } else {
      balance -= amount;//deduct amount;
        print('Withdrawal of \$${amount.toStringAsFixed(2)} successful.');
    }
  }

  // deposit method
  void deposit(double amount) {
    if (amount <= 0) {
      print('Not positive.');
    } else {
      balance += amount;
       print('Deposit of \$${amount.toStringAsFixed(2)} successful.');
    }
  }

  //  display method
  void displayAccountInfo() {
    print('Account ID: $account');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }
}
void main(){

  var acc1 = BankAccount('85637', 100);
  print(' ${acc1.account} ${acc1.balance}');
  // Perform deposit and withdrawal operations for Account 1
  acc1.deposit(100); // Valid deposit
  acc1.withdraw(100); // Valid withdrawal
  acc1.withdraw(1000.0); // Insufficient balance
  acc1.withdraw(-100.0); // Invalid withdrawal amount
  acc1.deposit(-100.0); // Invalid deposit amount
  acc1.displayAccountInfo();
  print('//*********************************************** */');
  var acc2 = BankAccount.forBalance('85634');
  print(' ${acc2.account} ${acc2.balance}');
  // Perform deposit and withdrawal operations for Account 1
  acc2.deposit(100); // Valid deposit
  acc2.withdraw(100); // Valid withdrawal
  acc2.withdraw(1000.0); // Insufficient balance
  acc2.withdraw(-100.0); // Invalid withdrawal amount
  acc2.deposit(-100.0); // Invalid deposit amount
}
