import 'package:flutter/material.dart';

class BMI_calculator extends StatefulWidget {
  const BMI_calculator({super.key});

  @override
  State<BMI_calculator> createState() => _BMI_calculatorState();
}

class _BMI_calculatorState extends State<BMI_calculator> {
  // first we make controller to get the textfield values
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                "BMI",
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              controller: wtController,
              decoration: const InputDecoration(
                  label: Text("Enter weight in kg"),
                  prefixIcon: Icon(Icons.line_weight)),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              controller: ftController,
              decoration: const InputDecoration(
                  label: Text("Enter height in feet"),
                  prefixIcon: Icon(Icons.height)),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 11,
            ),
            TextField(
              controller: inController,
              decoration: const InputDecoration(
                  label: Text("Enter height in inch"),
                  prefixIcon: Icon(Icons.height)),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  // we get the values from the controller
                  var wt = wtController.text.toString();
                  var ft = ftController.text.toString();
                  var inc = inController.text.toString();

                  if (wt != "" && ft != "" && inc != "") {
                    var iwt = int.parse(wt);
                    var ift = int.parse(ft);
                    var iInch = int.parse(inc);

                    var tInch = (ift * 12) + iInch; // total inches

                    var tMeter = tInch * 0.0254; // total meter

                    var bmi = iwt / (tMeter * tMeter);

                    setState(() {
                      result = "Your BMI is ${bmi.toStringAsFixed(2)}";
                    });
                  } else {
                    setState(() {
                      result = "please fill all the fields";
                    });
                  }
                },
                child: const Text("Calculate")),
            const SizedBox(
              height: 15,
            ),
            Text(
              result,
              style: const TextStyle(
                fontSize: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
