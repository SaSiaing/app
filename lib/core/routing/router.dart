import 'package:go_router/go_router.dart';
import 'package:sapasi/core/routing/main_scaffold.dart';
import 'package:sapasi/core/routing/routes.dart';
import 'package:sapasi/features/budget/widgets/budget_screen.dart';
import 'package:sapasi/features/home/widgets/home_screen.dart';
import 'package:sapasi/features/settings/widgets/settings_screen.dart';
import 'package:sapasi/features/statistics/widgets/statistics_screen.dart';
import 'package:sapasi/features/transaction/widgets/transaction_screen.dart';

const _tabPaths = [
  Routes.home,
  Routes.transaction,
  Routes.budget,
  Routes.statistics,
  Routes.settings,
];

int _selectedIndex(String path) {
  final index = _tabPaths.indexWhere(
    (tabPath) => path == tabPath || path.startsWith('$tabPath/'),
  );
  return index < 0 ? 0 : index;
}

GoRouter router() => GoRouter(
  initialLocation: Routes.root,
  routes: [
    GoRoute(path: Routes.root, redirect: (_, _) => Routes.home),
    ShellRoute(
      builder: (context, state, child) => MainScaffold(
        selectedIndex: _selectedIndex(state.uri.path),
        onDestinationSelected: (index) => context.go(_tabPaths[index]),
        child: child,
      ),
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: Routes.transaction,
          builder: (context, state) => const TransactionScreen(),
        ),
        GoRoute(
          path: Routes.budget,
          builder: (context, state) => const BudgetScreen(),
        ),
        GoRoute(
          path: Routes.statistics,
          builder: (context, state) => const StatisticsScreen(),
        ),
        GoRoute(
          path: Routes.settings,
          builder: (context, state) => const SettingsScreen(),
        ),
      ],
    ),
  ],
);
