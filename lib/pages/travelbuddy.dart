import 'package:flutter/material.dart';
import 'package:treckify/pages/home.dart';

class TravelDialogBox extends StatefulWidget {
  @override
  _TravelDialogBoxState createState() => _TravelDialogBoxState();
}

class _TravelDialogBoxState extends State<TravelDialogBox> {
  int currentStep = 0;
  String destination = '';
  List<String> selectedGenders = [];
  String budget = '';
  String travelStatus = '';
  String about = '';

  final _formKey = GlobalKey<FormState>();

  // Method to handle next and previous steps
  void nextStep() {
    if (currentStep < getSteps().length - 1) {
      setState(() {
        currentStep++;
      });
    } else {
      _showConfirmationDialog();
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  // Steps UI
  List<Widget> getSteps() {
    return [
      // Step 1: Destination TextField
      Container(
        width: 300,
        height: 320,
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: const Text(
                "Find your travel buddy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Step ${currentStep + 1}",
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              "Where's your dream destination?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "e.g., Bali, Paris, New York",
              ),
              onChanged: (value) => setState(() {
                destination = value;
              }),
            ),
          ],
        ),
      ),

      // Step 2: Gender Checkboxes with Heading and Subheading
      Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: const Text(
                "Find your travel buddy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Step ${currentStep + 1}",
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              "What's your gender? (Select all that apply)",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            CheckboxListTile(
              title: const Text("Male"),
              value: selectedGenders.contains('Male'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Male')
                      : selectedGenders.remove('Male');
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Female"),
              value: selectedGenders.contains('Female'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Female')
                      : selectedGenders.remove('Female');
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Non-binary"),
              value: selectedGenders.contains('Non-binary'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Non-binary')
                      : selectedGenders.remove('Non-binary');
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Other"),
              value: selectedGenders.contains('Other'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Other')
                      : selectedGenders.remove('Other');
                });
              },
            ),
          ],
        ),
      ),

      // Step 3: Budget TextField
      Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: const Text(
                "Find your travel buddy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Step ${currentStep + 1}",
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              "What's your daily budget?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter your daily budget in rupees",
              ),
              onChanged: (value) => setState(() {
                budget = value;
              }),
            ),
          ],
        ),
      ),

      // Step 4: Travel Status
      Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: const Text(
                "Find your travel buddy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Step ${currentStep + 1}",
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              "What's your travel style? (Select all that apply)",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),

            // Checkbox for different travel styles
            CheckboxListTile(
              title: const Text("Luxury"),
              value: selectedGenders.contains('Luxury'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Luxury')
                      : selectedGenders.remove('Luxury');
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Budget"),
              value: selectedGenders.contains('Budget'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Budget')
                      : selectedGenders.remove('Budget');
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Adventure"),
              value: selectedGenders.contains('Adventure'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Adventure')
                      : selectedGenders.remove('Adventure');
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Cultural"),
              value: selectedGenders.contains('Cultural'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Cultural')
                      : selectedGenders.remove('Cultural');
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Relaxation"),
              value: selectedGenders.contains('Relaxation'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Relaxation')
                      : selectedGenders.remove('Relaxation');
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Foodie"),
              value: selectedGenders.contains('Foodie'),
              onChanged: (bool? value) {
                setState(() {
                  value == true
                      ? selectedGenders.add('Foodie')
                      : selectedGenders.remove('Foodie');
                });
              },
            ),
          ],
        ),
      ),

      // Step 5: Tell About Yourself
      Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: const Text(
                "Find your travel buddy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Step ${currentStep + 1}",
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              "Tell us something about yourself",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: "About yourself...",
              ),
              onChanged: (value) => setState(() {
                about = value;
              }),
            ),
          ],
        ),
      ),
    ];
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Confirmation"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("You have successfully submitted your travel buddy request!"),
              const SizedBox(height: 20),
              const Text("Potential travel partners:"),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPartnerRow("John Doe"),
                  _buildPartnerRow("Jane Smith"),
                  _buildPartnerRow("Alex Brown"),
                  _buildPartnerRow("Emily White"),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Finish"),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Home()));
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildPartnerRow(String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name),
        TextButton(
          onPressed: () {
            // Logic to send request to the partner
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Request sent to $name")),
            );
          },
          child: const Text("Send Request"),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 400,
        height: 500,
        child: Stepper(
          currentStep: currentStep,
          onStepContinue: nextStep,
          onStepCancel: previousStep,
          steps: getSteps()
              .asMap()
              .map((index, step) => MapEntry(index, Step(
            title: Text('Step ${index + 1}'),
            content: step,
            isActive: currentStep >= index,
          )))
              .values
              .toList(),
        ),
      ),
    );
  }
}
