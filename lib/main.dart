import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Carl Dahlqvist Thuresson',
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(Icons.call, '+47 102 145 90'),
        _buildButtonColumn(Icons.email, 'carldt@mail.com'),
        _buildButtonColumn(Icons.code, '@CarlDT97'),
      ],
    );

    return MaterialApp(
      title: 'Flutter app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'lib/assets/images/backgroundImage.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 160,
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage(
                      'lib/assets/images/profilePic.jpeg'),
                ),
              ),
              titleSection,
              buttonSection,
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {},
                child: const Text('Add me on Linkedin'),
              ),
              Image.asset(
                'lib/assets/images/Untitled.jpeg',
                width: 180,
                height: 180,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: const Color.fromARGB(255, 58, 102, 159)),
        Container(
          padding: const EdgeInsets.only(bottom: 15),
          child: Text(
            label,
            style: const TextStyle(
              color: Color.fromARGB(255, 11, 27, 72),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
