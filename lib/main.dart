import 'package:apicallproject/PROVIDER/listProvider.dart';
import 'package:apicallproject/SCREEN/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => ListProvider()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/homeScreen',
        routes: {
          '/homeScreen': (context) => const HomeScreen(),
        },
      ),
    );
  }
}
