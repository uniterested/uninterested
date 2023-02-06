import 'package:flutter/material.dart';
import 'package:uninterested/utilities/AppColor.dart';
import 'package:uninterested/utilities/AppColorStyle.dart';
import 'package:uninterested/utilities/app_back_button.dart';
import 'package:uninterested/utilities/app_bar.dart';

class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          App_bar(
            leading: AppBackButton(),
            title: Text(
              "Payment options",
              style:
                  AppTextStyle.sfpro(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, top: 17, bottom: 13),
            child: Text(
              "Debit /Credit card",
              style:
                  AppTextStyle.sfpro(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          OptionContainer(
            text: "Add New Card",
            onPressed: () {},
          ),
          const SizedBox(
            height: 22,
          ),
          Padding(
            padding: EdgeInsets.only(left: 27, bottom: 8),
            child: Text("UPI",
                style: AppTextStyle.sfpro(
                    fontSize: 16, fontWeight: FontWeight.w500)),
          ),
          OptionContainer(
            text: "Google pay",
            onPressed: () {},
          ),
          OptionContainer(
            text: "Phone pe",
            onPressed: () {},
          ),
          OptionContainer(
            text: "Paytm",
            onPressed: () {},
          ),
          const SizedBox(
            height: 49,
          ),
          OptionContainer(
            text: "Wallet",
            onPressed: () {},
          ),
          OptionContainer(
            text: "Net banking",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class OptionContainer extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const OptionContainer({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 2),
      child: InkWell(
        child: Container(
          height: 48,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColorPallet.listtilegrey),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:14,right: 16 ),
                child: Container(
                  height: 25,
                  width: 25,
                  color: AppColorPallet.gray,
                ),
              ),
              Text(
                text,
                style: AppTextStyle.sfpro(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        onTap: onPressed,
      ),
    );
  }
}
