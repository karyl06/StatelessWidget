
import 'package:flutter/material.dart';

void main() => runApp(const StudyNotesApp());

class StudyNotesApp extends StatelessWidget {
  const StudyNotesApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StudyNotesPage(),
      );
}

class StudyNotesPage extends StatelessWidget {
  const StudyNotesPage({super.key});

  static const white = Colors.white;
  static const fieldColor = Color(0xFF7898B2);
  static const textColor = Color(0xFFD0DCE5);

  Widget label(String text) => Align(
        alignment: Alignment.centerLeft,
        child: Text(text, style: const TextStyle(
          color: white, fontSize: 14, letterSpacing: 2,
        )),
      );

  Widget inputField(IconData icon, String hint) => Container(
        height: 48,
        decoration: BoxDecoration(
          color: fieldColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(children: [
          const SizedBox(width: 12),
          Icon(icon, color: Color(0xFF344F67), size: 25),
          const SizedBox(width: 12),
          Text(hint, style: const TextStyle(
            color: textColor, fontSize: 12,
          )),
        ]),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 70, 94, 116),
              Color.fromARGB(255, 24, 56, 82),
              Color.fromARGB(255, 38, 49, 59),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 40, vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.sticky_note_2,
                    size: 85, color: Color(0xFF94E3FE)),
                const SizedBox(height: 18),
                const Text('STUDYNOTES', style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold,
                  letterSpacing: 4, color: Color(0xFFFFE66D),
                )),
                const SizedBox(height: 5),
                const Text('Study with Style', style: TextStyle(
                  fontSize: 16, fontStyle: FontStyle.italic,
                  color: white,
                )),
                const SizedBox(height: 65),
                const Text('Create Account', style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.bold,
                  letterSpacing: 2, color: white,
                )),
                const SizedBox(height: 22),

                label('User Account'),
                const SizedBox(height: 4),
                inputField(Icons.person, 'Phone Number, Username, Email'),
                const SizedBox(height: 16),

                label('Password'),
                const SizedBox(height: 4),
                inputField(Icons.lock_outline, 'Password'),
                const SizedBox(height: 55),

                Container(
                  width: 220,
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF075493),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: const Text('Sign In', style: TextStyle(
                    color: white, fontSize: 16,
                    fontWeight: FontWeight.bold, letterSpacing: 2,
                  )),
                ),
                const SizedBox(height: 17),
                const Text('Or continue with', style: TextStyle(
                  color: white, fontSize: 12, letterSpacing: 1.5,
                )),
                const SizedBox(height: 18),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFF087CE5),
                      child: Text('f', style: TextStyle(
                        color: white, fontSize: 27,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    SizedBox(width: 35),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: white,
                      child: Text('G', style: TextStyle(
                        color: Color(0xFF4285F4), fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                  ],
                ),
                const SizedBox(height: 90),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?', style: TextStyle(
                      color: white, fontSize: 11,
                      fontWeight: FontWeight.bold,
                    )),
                    SizedBox(width: 12),
                    Text('Login here', style: TextStyle(
                      color: Color(0xFF102E4A), fontSize: 11,
                      fontWeight: FontWeight.bold,
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
