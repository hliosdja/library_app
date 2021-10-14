import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_app/screens/main_search.dart';

void main() {
  runApp(const Library());
}

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Color(0xFFdbc991),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: Color(0xFF42508F),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
          ),
        ),
        home: const SearchScreen(),
      ),
    );
  }
}
