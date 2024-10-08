import 'package:bookly_app/features/home/data/presentation/view_model/views/home_view.dart';
import 'package:bookly_app/features/home/data/presentation/view_model/views/widgets/book_details_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BookDetailsView(),
    ),
  ],
);
}