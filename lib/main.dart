import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      
    );
    
  }
  }
  