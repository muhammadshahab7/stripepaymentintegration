import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      'pk_test_51NOflxKHnLePm5qoMrRTMYxIzqlmALBesGpKp49xXfdZMO2UlzPNzOu2HyJH0W3G7rWAmsmEMpgTMqUg5eZgAzSF00sAlNOxZ6';

  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
