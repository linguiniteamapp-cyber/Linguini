// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:linguini_app/otp_temp.dart';
=======
import 'otp_temp.dart';
>>>>>>> 5415e926f778a0ee950eceeb084830ccddb96f8d

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF2F2F2),
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_forward, color: Color(0xFF1b4a58),
                size: 35,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),

                /// Logo
                Image.asset(
                  'images/Linguini00000.png',
                  height: 120,
                  width: 300,
                ),

                const SizedBox(height: 40),

                /// Welcome Text
                const Text(
                  'مرحبًا بعودتك',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Almarai',
                    color: Color(0xFF1b4a58),
                  ),
                ),

                const SizedBox(height: 32),
/// Email Field
Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(14),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.08),
        blurRadius: 12,
        offset: const Offset(0, 6),
      ),
    ],
  ),
  child: TextField(
    controller: emailController,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'اسم المستخدم أو البريد الإلكتروني',
      labelStyle: const TextStyle(
        fontFamily: 'Almarai',
      ),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
    ),
  ),
),

const SizedBox(height: 16),

/// Password Field
Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(14),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.08),
        blurRadius: 8,
        offset: const Offset(0, 6),
      ),
    ],
  ),
  child: TextField(
    controller: passwordController,
    obscureText: isObscure,
    decoration: InputDecoration(
      labelText: 'كلمة المرور',
      labelStyle: const TextStyle(
        fontFamily: 'Almarai',
      ),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
      suffixIcon: IconButton(
        icon: Icon(
          isObscure ? Icons.visibility_off : Icons.visibility,
          color: Colors.grey,
        ),
        onPressed: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 14,
      ),
    ),
  ),
),

                const SizedBox(height: 8),

                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {
                    },
                    child: const Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(
                        color: Color(0xffF7931E),
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                /// Login Button
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpPage(),
                          ),
                        );
                      },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1b4a58),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Almarai',
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Divider
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('أو'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 16),

                /// Google Login
                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 24),
                    padding: const EdgeInsets.all(4),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset(
                        'images/Google_Favicon_2025.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                /// Register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'لا تمتلك حساب؟',
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Almarai',
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                      },
                      child: const Text(
                        'إنشاء حساب',
                        style: TextStyle(
                          color: Color(0xffF7931E),
                          fontFamily: 'Almarai',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
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
