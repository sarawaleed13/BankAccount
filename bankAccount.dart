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
      
    }
  }

  // deposit method
  void deposit(double amount) {
    if (amount <= 0) {
      print('Not positive.');
    } else {
      balance += amount;
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

  var acc2 = BankAccount.forBalance('85634');
  print(' ${acc2.account} ${acc2.balance}');

}