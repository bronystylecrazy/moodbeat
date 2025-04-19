import 'package:flutter/material.dart';

void main() {
  runApp(const SignUp());
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool hasMinLength = false;
  bool hasUpperLower = false;
  bool hasNumber = false;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  bool isPasswordValid = true;
  bool isConfirmPasswordValid = true;

  void validatePassword(String password) {
    setState(() {
      hasMinLength = password.length > 9;
      hasUpperLower = RegExp(r'(?=.*[a-z])(?=.*[A-Z])').hasMatch(password);
      hasNumber = RegExp(r'\d').hasMatch(password);
      isPasswordValid =
          hasMinLength && hasUpperLower && hasNumber && password.isNotEmpty;
    });
  }

  void validateConfirmPassword(String password) {
    setState(() {
      isConfirmPasswordValid = _passwordController.text == password;
    });
  }

  void signUp() {
    if (isPasswordValid && isConfirmPasswordValid) {
      print(
          "Email: ${_emailController.text}, Password: ${_passwordController.text}");
    } else {
      print("Invalid input or password mismatch");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Head.png',
              height: 163,
              width: 211,
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Color(0xFFCECECE)),
                      filled: true,
                      fillColor: Color(0xFFF7F7F7),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: _passwordController,
                    obscureText: !isPasswordVisible,
                    onChanged: validatePassword,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xFFCECECE)),
                      filled: true,
                      fillColor: Color(0xFFF7F7F7),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.purple,
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      errorText: isPasswordValid ? null : 'Invalid password',
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: _confirmPasswordController,
                    obscureText: !isConfirmPasswordVisible,
                    onChanged: validateConfirmPassword,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(color: Color(0xFFCECECE)),
                      filled: true,
                      fillColor: Color(0xFFF7F7F7),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isConfirmPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.purple,
                        ),
                        onPressed: () {
                          setState(() {
                            isConfirmPasswordVisible =
                                !isConfirmPasswordVisible;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      errorText: isConfirmPasswordValid
                          ? null
                          : 'Passwords do not match',
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password must include:",
                          style: TextStyle(color: Color(0xFFCECECE))),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check_circle,
                          color:
                              hasMinLength ? Color(0xFF79CB28) : Colors.grey),
                      const SizedBox(width: 5),
                      Text("More than 9 characters",
                          style: TextStyle(
                              color: hasMinLength
                                  ? Color(0xFF79CB28)
                                  : Color(0xFFCECECE)))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle,
                          color:
                              hasUpperLower ? Color(0xFF79CB28) : Colors.grey),
                      const SizedBox(width: 5),
                      Text("Upper and lower character",
                          style: TextStyle(
                              color: hasUpperLower
                                  ? Color(0xFF79CB28)
                                  : Color(0xFFCECECE))),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle,
                          color: hasNumber ? Color(0xFF79CB28) : Colors.grey),
                      const SizedBox(width: 5),
                      Text("At least one number",
                          style: TextStyle(
                              color: hasNumber
                                  ? Color(0xFF79CB28)
                                  : Color(0xFFCECECE))),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: signUp,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF7A28CB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40),
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
