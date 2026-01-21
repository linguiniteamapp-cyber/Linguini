// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class SignUpUserPage extends StatefulWidget {
  const SignUpUserPage({super.key});

  @override
  State<SignUpUserPage> createState() => _SignUpUserPageState();
}

class _SignUpUserPageState extends State<SignUpUserPage> {
  bool acceptTerms = false;
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
          actions: [
            IconButton(
              icon: const Icon(
                Icons.arrow_forward,
                color: Color(0xFF1b4a58),
                size: 30,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'images/Linguini00000.png',
                    height: 110,
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    'إنشاء حساب',
                    style: TextStyle(
                      fontSize: 26,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1b4a58),
                    ),
                  ),

                  const SizedBox(height: 32),

                  _buildField('الاسم كامل'),
                  _buildField('رقم الهاتف'),
                  _buildField('البريد الإلكتروني'),

                  _buildField(
                    'كلمة المرور',
                    obscure: isObscure,
                    suffix: IconButton(
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// Terms
                  Row(
                    children: [
                      Checkbox(
                        value: acceptTerms,
                        activeColor: const Color(0xFF1b4a58),
                        onChanged: (v) {
                          setState(() {
                            acceptTerms = v!;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text(
                          'أوافق على الشروط والأحكام',
                          style: TextStyle(
                            fontFamily: 'Almarai',
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: acceptTerms ? () {} : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1b4a58),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        'إنشاء حساب',
                        style: TextStyle(
                          fontFamily: 'Almarai',
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField(
    String label, {
    bool obscure = false,
    Widget? suffix,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
        obscureText: obscure,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontFamily: 'Almarai'),
          suffixIcon: suffix,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
        ),
      ),
    );
  }
}
