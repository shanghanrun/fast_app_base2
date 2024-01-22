import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/constant/number_format.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';

class BankAccountWidget extends StatelessWidget {
  BankAccount account;
  BankAccountWidget(this.account, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(account.bank.logoImagePath, width: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                account.accountTypeName ?? account.bank.name,
                style: const TextStyle(color: Colors.blue, fontSize: 15),
                overflow: TextOverflow.ellipsis,
              ),
              '${numberFormat.format(account.balance)} 원'
                  .text
                  .white
                  .size(18)
                  .make(),
            ],
          ),
        ),
        RoundedContainer(
            backgroundColor: const Color.fromARGB(255, 36, 36, 36),
            radius: 10,
            child: '송금'.text.white.make())
        //Button//
      ]),
    );
  }
}
