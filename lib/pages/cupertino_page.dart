import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  final TextEditingController value = TextEditingController();
  double result = 0;

  @override
  // void initState() {
  //   //called right before the build function
  //   //futures / streams are called here
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          'Currency Corverter',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: CupertinoColors.systemGrey3,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'INR ${result != 0 ? result.toStringAsFixed(2) : 0}',
                    style: const TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.white,
                    ),
                  ),
                ],
              ),

              // const SizedBox(
              //   height: 25,
              // ),
              CupertinoTextField(
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                controller: value,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                  color: CupertinoColors.white,
                ),
              ),
              // raised button
              // button like text
              const SizedBox(
                height: 10,
              ),
              CupertinoButton(
                color: CupertinoColors.black,
                onPressed: () {
                  //3 modes - debug / release / profile
                  // debug - code
                  // release - production
                  // profile - mix of both - release mode & give error s and warking
                  //check debug mode
                  setState(() {
                    result = double.parse(value.text) * 82;
                  });
                  //value.clear();
                },
                child: const Text(
                  "Convert >",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
