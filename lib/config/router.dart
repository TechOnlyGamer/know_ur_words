import 'package:go_router/go_router.dart';
import 'package:know_ur_words/screens/game_screen.dart';
import 'package:know_ur_words/screens/home_screen.dart';

enum AppRoutes { home, game }

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: AppRoutes.home.name,
    builder: (context, state) => const HomeScreen(),
    routes: [
      GoRoute(
        path: 'game',
        name: AppRoutes.game.name,
        builder: (context, state) => const GameScreen(),
      )
    ],
  ),
]);
