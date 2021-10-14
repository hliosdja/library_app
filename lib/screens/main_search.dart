import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8A5),
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50.0),
            width: double.infinity,
            child: Text(
              'Open Library',
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50.0),
            width: double.infinity,
            child: Text(
              'A library of e-books available on the internet.',
              textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: IconButton(
                  onPressed: () {
                    print('hello');
                  },
                  icon: const Icon(Icons.search),
                ),
              ),
              onChanged: (value) {
                print(value);
              },
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Image.asset('images/ebooks_main.png'),
        ],
      ),
    );
  }
}
