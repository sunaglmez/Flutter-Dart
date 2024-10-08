// Abstract class for an account
abstract class Account {
  String owner;
  double balance;

  Account(this.owner, this.balance);

  void deposit(double amount);
  void withdraw(double amount);

  void displayBalance() {
    print('Account Owner: $owner, Balance: \$$balance');
  }
}

// Concrete class: Bank Account
class BankAccount extends Account {
  BankAccount(String owner, double balance) : super(owner, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print('\$$amount deposited. New balance: \$$balance');
  }

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('\$$amount withdrawn. New balance: \$$balance');
    } else {
      throw InsufficientFundsException(owner, balance, amount);
    }
  }
}

// Concrete class: Credit Account
class CreditAccount extends Account {
  double creditLimit;

  CreditAccount(String owner, double balance, this.creditLimit) : super(owner, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print('\$$amount deposited. New balance: \$$balance');
  }

  @override
  void withdraw(double amount) {
    if (balance + creditLimit >= amount) {
      balance -= amount;
      print('\$$amount withdrawn using credit. New balance: \$$balance');
    } else {
      throw InsufficientFundsException(owner, balance, amount);
    }
  }
}

// Mixin for logging transactions
mixin TransactionLogger {
  void logTransaction(String message) {
    final timestamp = DateTime.now();
    print('[$timestamp] $message');
  }
}

// Utility class for currency conversion
class CurrencyConverter {
  static const double usdToEurRate = 0.85;

  static double convertUsdToEur(double amount) {
    return amount * usdToEurRate;
  }
}

// Custom exception for insufficient funds
class InsufficientFundsException implements Exception {
  String owner;
  double balance;
  double amountRequested;

  InsufficientFundsException(this.owner, this.balance, this.amountRequested);

  @override
  String toString() {
    return 'Insufficient funds for $owner. Requested: \$$amountRequested, Available: \$$balance';
  }
}

// Generic class for transaction history
class TransactionHistory<T> {
  List<T> transactions = [];

  void addTransaction(T transaction) {
    transactions.add(transaction);
  }

  void showTransactions() {
    for (var transaction in transactions) {
      print(transaction);
    }
  }
}

// A class that combines the mixin and extends functionality
class AdvancedBankAccount extends BankAccount with TransactionLogger {
  AdvancedBankAccount(String owner, double balance) : super(owner, balance);

  @override
  void deposit(double amount) {
    super.deposit(amount);
    logTransaction('Deposited \$$amount to $owner\'s account.');
  }

  @override
  void withdraw(double amount) {
    try {
      super.withdraw(amount);
      logTransaction('Withdrew \$$amount from $owner\'s account.');
    } catch (e) {
      logTransaction(e.toString());
      print(e);
    }
  }
}

void main() {
  // Creating bank account and credit account objects
  BankAccount myBankAccount = BankAccount('Alice', 500);
  CreditAccount myCreditAccount = CreditAccount('Bob', 100, 300);

  myBankAccount.deposit(100);
  myBankAccount.withdraw(200);
  myBankAccount.displayBalance();

  myCreditAccount.deposit(50);
  myCreditAccount.withdraw(200); // Uses credit
  myCreditAccount.displayBalance();

  // Using static method from CurrencyConverter class
  double amountInEur = CurrencyConverter.convertUsdToEur(100);
  print('100 USD in EUR: €$amountInEur');

  // Using AdvancedBankAccount with TransactionLogger mixin
  AdvancedBankAccount advancedAccount = AdvancedBankAccount('Charlie', 1000);
  advancedAccount.deposit(500);
  advancedAccount.withdraw(2000); // Insufficient funds, should trigger exception

  // Storing transaction history using generics
  TransactionHistory<String> transactionHistory = TransactionHistory<String>();
  transactionHistory.addTransaction('Deposited 500 to Alice\'s account');
  transactionHistory.addTransaction('Withdrew 200 from Alice\'s account');
  
  print('\nTransaction History:');
  transactionHistory.showTransactions();
}
