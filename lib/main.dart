import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/service_provider.dart';
import 'ui/home_page.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ServiceProvider()),
        ],
        child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Provider.of<ServiceProvider>(context, listen: false).batteryStatus();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

