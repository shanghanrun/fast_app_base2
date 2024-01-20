// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank.dart';

class BankAccount {
  final Bank bank;
  // final String accountNumber;
  // final String accountHolderName;
  int balance; // 잔고는 변한다.
  final String? accountTypeName; // 없는 경우도 있다.

  BankAccount(
      this.bank,
      // this.accountNumber,
      // this.accountHolderName,
      this.balance,
      {this.accountTypeName} // optional로 만든다.
      );
}
