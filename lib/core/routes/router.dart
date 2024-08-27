import 'package:go_router/go_router.dart';
import 'package:note_app/features/edit/edit_view.dart';
import 'package:note_app/features/home/views/home_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => homeView(),
    ),
  
  GoRoute(
    path: '/EditView',
    builder: (context, state) => const EditView(),
  ),
]);
