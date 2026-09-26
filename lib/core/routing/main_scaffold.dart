import 'package:flutter/material.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.child,
  });

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: '홈'),
          NavigationDestination(
            icon: Icon(Icons.receipt_long_outlined),
            label: '내역',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: '예산',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_outlined),
            label: '통계',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            label: '설정',
          ),
        ],
      ),
    );
  }
}
