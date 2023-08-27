import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});
  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  final TextEditingController valueController = TextEditingController();
  double result = 0;

  @override
  // void initState() {
  //   //called right before the build function
  //   //futures / streams are called here
  //   super.initState();
  // }

  void dispose() {
    // dispose the controllers
    valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        //Color(0XAARRGGBB) format of Color
        color: Colors.black,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(5),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text(
          'Currency Corverter',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
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
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              // const SizedBox(
              //   height: 25,
              // ),
              TextField(
                controller: valueController,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  // label: Text(
                  //   'Please enter the amount in INR',
                  //   style: TextStyle(
                  //     color: Colors.black,
                  //   ),
                  // ),
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: border,
                  focusedBorder: border,
                  // labelStyle: TextStyle(
                  //   color: Colors.black,
                  // ),
                ),
              ),
              // raised button
              // button like text
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  //3 modes - debug / release / profile
                  // debug - code
                  // release - production
                  // profile - mix of both - release mode & give error s and warking
                  //check debug mode
                  setState(() {
                    result = double.parse(valueController.text) * 82;
                  });
                  //value.clear();
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 29, 29, 29),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
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
