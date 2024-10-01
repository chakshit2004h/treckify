import 'package:flutter/material.dart';

class JohnDoe extends StatefulWidget {
  const JohnDoe({super.key});

  @override
  State<JohnDoe> createState() => _JohnDoeState();
}

class _JohnDoeState extends State<JohnDoe> {
  String? _selectedTrekType;
  String? _selectedDuration;
  bool _isEasy = false;
  bool _isModerate = false;
  bool _isChallenging = false;
  final TextEditingController _groupSizeController = TextEditingController();
  final TextEditingController _specialRequestsController = TextEditingController();
  DateTime? _selectedDate;
  bool _isBookingConfirmed = false; // State variable for booking confirmation

  // Method to handle date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: const Color(0xFF141527),
            child: Column(
              children: [
                // Existing profile container (John Doe details)
                Container(
                  width: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/john_doe.jpg'),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Expert Mountain Guide',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.location_on, color: Colors.grey),
                          SizedBox(width: 5),
                          Text(
                            'Himalayas, Nepal',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, color: Colors.orangeAccent),
                          SizedBox(width: 5),
                          Text(
                            '4.8(120 review)',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'With over 10 years of guiding experience in the Himalayas, '
                            'John Doe ensures an unforgettable adventure. Join him for '
                            'an experience of a lifetime.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Booking Form
                Container(
                  width: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title: Preferred Trek Type
                      const Text(
                        'Preferred Trek Type',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      DropdownButton<String>(
                        value: _selectedTrekType,
                        isExpanded: true,
                        hint: const Text('Select Trek Type'),
                        items: <String>[
                          'Cultural Trek',
                          'High Altitude Trek',
                          'Scenic Trek',
                          'Challenging Trek',
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedTrekType = newValue;
                          });
                        },
                      ),

                      const SizedBox(height: 20),

                      // Title: Group Size
                      const Text(
                        'Group Size',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: _groupSizeController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter group size',
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Title: Preferred Duration
                      const Text(
                        'Preferred Duration',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      DropdownButton<String>(
                        value: _selectedDuration,
                        isExpanded: true,
                        hint: const Text('Select Duration'),
                        items: <String>[
                          'Short (3-5 Days)',
                          'Medium (6-10 Days)',
                          'Long (11+ Days)',
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedDuration = newValue;
                          });
                        },
                      ),

                      const SizedBox(height: 20),

                      // Title: Preferred Difficulty
                      const Text(
                        'Preferred Difficulty',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Checkbox(
                            value: _isEasy,
                            onChanged: (bool? value) {
                              setState(() {
                                _isEasy = value!;
                              });
                            },
                          ),
                          const Text('Easy'),
                          Checkbox(
                            value: _isModerate,
                            onChanged: (bool? value) {
                              setState(() {
                                _isModerate = value!;
                              });
                            },
                          ),
                          const Text('Moderate'),
                          Checkbox(
                            value: _isChallenging,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChallenging = value!;
                              });
                            },
                          ),
                          const Text('Challenging'),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Date Picker
                      const Text(
                        'Preferred Date',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () => _selectDate(context),
                            child: const Text('Select Date'),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            _selectedDate != null
                                ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
                                : "No date selected",
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // Title: Special Requests
                      const Text(
                        'Special Requests or Questions',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: _specialRequestsController,
                        maxLines: 4,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter any special requests or questions here',
                        ),
                      ),

                      const SizedBox(height: 30),

                      // Submit Button
                      Center(
                        child: Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isBookingConfirmed = true; // Set booking to confirmed
                                });
                                // Handle form submission
                              },
                              child: const Text('Submit Requirements'),
                            ),
                            const SizedBox(height: 20),
                            // Booking Confirmation Message
                            if (_isBookingConfirmed)
                              const Text(
                                'Booking Confirmed!',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            const SizedBox(height: 30,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
