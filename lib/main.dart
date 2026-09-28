import 'package:flutter/material.dart';
import 'screens/atlantis_screen.dart';
import 'screens/meditate_screen.dart';
import 'screens/course_screen.dart';
import 'screens/wallet_screen.dart';

void main() => runApp(const LayoutPracticeApp());

class LayoutPracticeApp extends StatelessWidget {
  const LayoutPracticeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Figma Layout Practice',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F5F7),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF5B5CFF)),
        fontFamily: 'Arial',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final pages = const [
    AtlantisScreen(),
    MeditateScreen(),
    CourseScreen(),
    WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: IndexedStack(index: index, children: pages)),
      bottomNavigationBar: NavigationBar(
        height: 76,
        selectedIndex: index,
        backgroundColor: const Color(0xFFF8F7FC),
        indicatorColor: const Color(0xFFE7E2FF),
        onDestinationSelected: (value) => setState(() => index = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.explore_outlined), selectedIcon: Icon(Icons.explore), label: 'Atlantis'),
          NavigationDestination(icon: Icon(Icons.self_improvement_outlined), selectedIcon: Icon(Icons.self_improvement), label: 'Meditate'),
          NavigationDestination(icon: Icon(Icons.school_outlined), selectedIcon: Icon(Icons.school), label: 'Course'),
          NavigationDestination(icon: Icon(Icons.account_balance_wallet_outlined), selectedIcon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
        ],
      ),
    );
  }
}
