import 'package:flutter/material.dart';
import 'package:shoe_app/Providers/card_provider.dart';
import 'package:shoe_app/Screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CardProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shoe App',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
            fontSize: 20,
            color: Colors.black,
          )),
          textTheme: GoogleFonts.latoTextTheme(
            const TextTheme(
                titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                bodySmall: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                )),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 206, 1, 1),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      
      ),
    );
  }
}
