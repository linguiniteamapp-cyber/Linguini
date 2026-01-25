compileNewDDC
main.dart:30:18: Error: Method not found: 'main'.
      entrypoint.main();
                 ^^^^compileNewDDC
main.dart:30:18: Error: Method not found: 'main'.
      entrypoint.main();
                 ^^^^import 'package:flutter/material.dart';

class EmptyBasketPage extends StatelessWidget {
  const EmptyBasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6F2),
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    size: 22,
                    color: Colors.black,
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0B2A4A),
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Basket image
            Image.asset(
              'assets/images/basket.png',
              width: 110,
              height: 110,
            ),

            const SizedBox(height: 24),

            // Logo text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'linguini',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFCCB00),
                  ),
                ),
                SizedBox(width: 6),
                Text(
                  'BASKET',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: Color(0xFF0B2A4A),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Title
            const Text(
              'السله فارغه !',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0E2A47),
              ),
            ),

            const SizedBox(height: 8),

            // Subtitle
            const Text(
              'يبدو انك لم تضف شيئًا بعد',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF6B7280),
              ),
            ),

            const SizedBox(height: 32),

            // Button
            SizedBox(
              width: 220,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0B2A4A),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: const Text(
                  'اضف الى سلتك',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class EmptyBasketPage extends StatelessWidget {
  const EmptyBasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6F2),
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new,
                    size: 22,
                    color: Colors.black,
                  ),
                  const Spacer(),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0B2A4A),
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Basket image
            Image.asset(
              'assets/images/basket.png',
              width: 110,
              height: 110,
            ),

            const SizedBox(height: 24),

            // Logo text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'linguini',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFCCB00),
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'BASKET',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    color: Color(0xFF0B2A4A),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Title
            const Text(
              'السله فارغه !',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0E2A47),
              ),
            ),

            const SizedBox(height: 8),

            // Subtitle
            const Text(
              'يبدو انك لم تضف شيئًا بعد',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF6B7280),
              ),
            ),

            const SizedBox(height: 32),

            // Button
            SizedBox(
              width: 220,
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0B2A4A),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: const Text(
                  'اضف الى سلتك',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}