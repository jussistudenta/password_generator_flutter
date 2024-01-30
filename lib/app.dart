import 'package:flutter/material.dart';
import 'package:password_generator_app/components/app_home_page.dart';
import 'package:password_generator_app/state.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Password generator',
        theme: ThemeData(
          textTheme: const TextTheme(
              headlineSmall: TextStyle(color: Colors.white),
              displayLarge: TextStyle(color: Colors.white),
              displayMedium: TextStyle(color: Colors.white),
              displaySmall: TextStyle(color: Colors.white),
              bodyLarge: TextStyle(color: Colors.white)),
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const AppHomePage(),
      ),
    );
  }
}
