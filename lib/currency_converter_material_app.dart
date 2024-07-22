import 'package:flutter/material.dart';

//1.create a variable that stores the converted currency value.
//2.Create a function that multiplies the value given by the text field with 81.
//3.To store the value in the variable that we created.
//4. display the variable.
class CurrencyConverterMaterialApp extends StatefulWidget {
  const CurrencyConverterMaterialApp({super.key});

  @override
  State<StatefulWidget> createState() => _CurrencyConverterMaterialAppState();
}

class _CurrencyConverterMaterialAppState
    extends State<CurrencyConverterMaterialApp> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 80;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 111, 26),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 221),
        elevation: 0,
        title: const Text('Currency Converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            TextField(
              controller: textEditingController,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                hintText: '  Please enter the amount in USD',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: convert,
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
