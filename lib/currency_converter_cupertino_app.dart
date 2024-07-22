import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoApp extends StatefulWidget {
  const CurrencyConverterCupertinoApp({super.key});

  @override
  State<CurrencyConverterCupertinoApp> createState() =>
      _CurrencyConverterCupertinoAppState();
}

class _CurrencyConverterCupertinoAppState
    extends State<CurrencyConverterCupertinoApp> {
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
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.activeBlue,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 217, 255, 0),
        middle: Text('Currency Converter'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white),
            ),
            CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),
              ),
              placeholder: '  Please enter the amount in USD',
              prefix: const Icon(CupertinoIcons.money_dollar),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
            const SizedBox(height: 10),
            CupertinoButton(
              onPressed: convert,
              color: CupertinoColors.black,
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
