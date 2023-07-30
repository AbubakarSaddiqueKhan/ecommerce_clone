import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hair_cleaner_firebase/design.dart';
import 'package:flutter_hair_cleaner_firebase/firebase/add_data_to_firebase.dart';
import 'package:flutter_hair_cleaner_firebase/screens/cart_detail_screen.dart';
import 'package:flutter_hair_cleaner_firebase/screens/home_page_design.dart';
import 'package:flutter_hair_cleaner_firebase/screens/product_detail_screen.dart';
import 'package:flutter_hair_cleaner_firebase/screens/search_screen.dart';
import 'package:flutter_hair_cleaner_firebase/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // this code is for web enables
      options: const FirebaseOptions(
          apiKey: "AIzaSyBIkilyHaQ8eW1FNfM7luhc20ARvtMAHhs",
          authDomain: "ecommerce-98828.firebaseapp.com",
          projectId: "ecommerce-98828",
          storageBucket: "ecommerce-98828.appspot.com",
          messagingSenderId: "626211141344",
          appId: "1:626211141344:web:a3f5ddeb30490816efc285"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
