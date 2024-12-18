import 'package:doctor_app/home.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool isLoading = false;

  bool valuee = false;

  bool valuee2 = false;

  String? count;

  var _slide = 14.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff58b4c9),
        title: const Text(
          "Sing up",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Center(
              child: Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30)),
                height: 150,
                width: 200,
                child: Center(
                  child: Image.asset('images/online-doctor-consultation-flat-design-logo-aplication-free-vector.jpg'),
                ),
              ),
            ),
            const Center(
              child: Text(
                'CITY HOSPITAL',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff2d8ea1),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Hi, Thanks To SignUp',
                style: TextStyle(
                  color: Color(0xff2d8ea1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff2d8ea1),),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff2d8ea1),),
                  borderRadius: BorderRadius.circular(30),
                ),
                label: const Text(
                  'Username',
                  style: TextStyle(color: Color(0xff2d8ea1),),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(255, 28, 123, 206)),
                  borderRadius: BorderRadius.circular(30),
                ),
                label: const Text(
                  'Password',
                  style: TextStyle(color: Color(0xff2d8ea1),),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(255, 28, 123, 206)),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  'Gender :',
                  style: TextStyle(
                      color:Color(0xff2d8ea1),
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                Expanded(
                  child: RadioListTile(
                    title: const Text(
                      'Male',
                      style: TextStyle(
                          color: Color(0xff2d8ea1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    activeColor: const Color(0xff2d8ea1),
                    value: 'male',
                    groupValue: count,
                    onChanged: (val) {
                      setState(() {
                        count = val;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: const Text(
                      'Female',
                      style: TextStyle(
                          color: Color(0xff2d8ea1),
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    activeColor: const Color(0xff2d8ea1),
                    value: 'female',
                    groupValue: count,
                    onChanged: (val) {
                      setState(() {
                        count = val;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Center(
              child: DropdownMenu(
                  textStyle: TextStyle(
                      color: Color(0xff2d8ea1),
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                  width: double.infinity,
                  label: Text(
                    'status',
                    style: TextStyle(
                        color: Color(0xff2d8ea1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  inputDecorationTheme: InputDecorationTheme(
                    iconColor: Color(0xff2d8ea1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff2d8ea1),
                      ),
                    ),
                  ),
                  menuStyle: MenuStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 1, label: 'Single'),
                    DropdownMenuEntry(value: 2, label: 'Married'),
                    DropdownMenuEntry(value: 3, label: 'discoverd'),
                  ]),
            ),
            Row(
              children: [
                Text(
                  'Age is: ${_slide.toInt()}',
                  style: const TextStyle(
                      color: Color(0xff2d8ea1),
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
                Expanded(
                  child: Slider(
                      activeColor: const Color(0xff2d8ea1),
                      min: 14.0,
                      max: 80.0,
                      value: _slide,
                      divisions: 80,
                      label: _slide.round().toString(),
                      onChanged: (val) {
                        setState(() {
                          _slide = val;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  'Receive Notification ',
                  style: TextStyle(
                      color: Color(0xff2d8ea1),
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                const Spacer(
                  flex: 1,
                ),
                Switch(
                    focusColor: const Color(0xff2d8ea1),
                    activeTrackColor: const Color(0xff2d8ea1),
                    value: valuee,
                    onChanged: (val) {
                      setState(() {
                        valuee = val;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                const Text(
                  'I agree to the term and condition',
                  style: TextStyle(
                      color: Color(0xff2d8ea1),
                      fontSize: 12,
                      fontWeight: FontWeight.w900),
                ),
                const Spacer(
                  flex: 1,
                ),
                Checkbox(
                    activeColor: const Color(0xff2d8ea1),
                    value: valuee2,
                    onChanged: (val2) {
                      setState(() {
                        valuee2 = val2!;
                      });
                    }),
              ],
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 20,
                  ),
                  label: Text(
                    'Notes',
                    style: TextStyle(
                        color: Color(0xff2d8ea1),
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  hintText: 'Notes',
                  hintStyle: TextStyle(
                    color:Color(0xff2d8ea1),
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff2d8ea1),),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xff2d8ea1),),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color(0xff2d8ea1),
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}