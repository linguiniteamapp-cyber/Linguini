import 'package:flutter/material.dart';

class EmptyBasketPage extends StatelessWidget {
  const EmptyBasketPage({super.key});

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
            SizedBox(
              width: 70,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Color(0xFF1b4a58),
                  size: 35,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 40),

                /// صورة السلة
                Image.asset(
                  'assets/images/baskettt.png',
                  height: 120,
                ),

                const SizedBox(height: 24),

                /// العنوان
                const Text(
                  'السلة فارغة',
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1b4a58),
                  ),
                ),

                const SizedBox(height: 8),

                /// الوصف
                const Text(
                  'يبدو أنك لم تضف أي منتجات بعد',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Almarai',
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),

                const Spacer(),

                /// زر ابدأ التسوق
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1b4a58),
                      elevation: 4,
                      shadowColor: Colors.black.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: const Text(
                      'ابدأ التسوق',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                /// زر الرجوع
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'العودة للرئيسية',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      color: Color(0xffF7931E),
                      fontWeight: FontWeight.bold,
                    ),
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