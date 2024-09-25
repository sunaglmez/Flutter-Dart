/* Withdrawing Money from a Bank Account
In this example, we will simulate a withdrawal operation from a bank account. We will create a structure that asynchronously checks the account balance
and withdraws money. We will use Future, async, await, and catchError to perform this operation.
*/

// Bank account balance
double accountBalance = 1000.0;

// Asynchronous function to check the account balance
Future<void> checkBalance(double amountToWithdraw) {
  return Future.delayed(Duration(seconds: 1), () {
    if (amountToWithdraw > accountBalance) {
      throw Exception("Insufficient balance.");
    } else {
      accountBalance -= amountToWithdraw;
      return "Withdrawal successful!";
    }
  });
}

// Our main function
void main() async {
  print("Starting withdrawal process...");
  
  double amountToWithdraw = 500.0; // Setting the amount to withdraw
  
  try {
    // Waiting for the asynchronous operation and getting the result
    await checkBalance(amountToWithdraw);
    print("Transaction completed. Remaining balance: $accountBalance TL");
  } catch (e) {
    print("Error: $e");
  }

  print("Continuing with other operations...");
}
