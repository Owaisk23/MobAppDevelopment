import 'dart:io';
import 'bahl.dart';

void main() {
  try {
    BAHL owaisAccount = new BAHL();
    print("Bank Al Habib Ltd");
    print("--------------------------------------");
    print("What operations do you want to perform?");
    print("1. Cash Deposit \n 2. Cash Withdrawal \n 3. Balance Inquiry");

    int choose = int.parse(stdin.readLineSync()!);
    if (choose > 0 || choose < 4) {
      if (choose == 1) {
        print("Enter the amount you want to deposit: ");
        num amount = num.parse(stdin.readLineSync()!);
        owaisAccount.deposit(amount);
        owaisAccount.balanceInquiry();
      } else if (choose == 2) {
        print("Enter the amount you want to withdraw: ");
        num amount = num.parse(stdin.readLineSync()!);
        owaisAccount.withdraw(amount);
        owaisAccount.balanceInquiry();
      } else if (choose == 3) {
        owaisAccount.balanceInquiry();
      }
    } else {
      print("Invalid Choice");
    }
  } on FormatException {
    print("Field must be filled");
  } catch (e) {
    print(e);
  }
}
