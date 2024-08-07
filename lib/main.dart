import 'package:flutter/material.dart';
import 'package:toontrail/widgets/button.dart';
import 'package:toontrail/widgets/custom_card.dart';
import 'package:toontrail/widgets/vertical_stack.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Hey, Minho",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "\$5 194.382",
                  style: TextStyle(
                    wordSpacing: -5.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 48,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      backgroundColor: Color(0XFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      backgroundColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const VerticalStack(
                  dy: 90,
                  order: 0,
                  customCard: CustomCard(
                    backgroundColor: Color(0xFF1F2123),
                    currency: "Euro",
                    amount: "6 428",
                    abbrevCurrency: "EUR",
                    icon: Icons.euro_symbol,
                    iconSize: 80,
                    isInverted: false,
                  ),
                ),
                const VerticalStack(
                  dy: 90,
                  order: 1,
                  customCard: CustomCard(
                    backgroundColor: Color(0xFF1F2123),
                    currency: "Bitcoin",
                    amount: "9 765",
                    abbrevCurrency: "BTC",
                    icon: Icons.currency_bitcoin,
                    iconSize: 90,
                    isInverted: true,
                  ),
                ),
                const VerticalStack(
                  dy: 90,
                  order: 2,
                  customCard: CustomCard(
                      backgroundColor: Color(0xFF1F2123),
                      currency: 'Dollar',
                      amount: '55 499',
                      abbrevCurrency: 'USD',
                      icon: Icons.attach_money_sharp,
                      isInverted: false,
                      iconSize: 90),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
