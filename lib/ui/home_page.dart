import 'package:flutter/material.dart';
import 'package:native_code_integration_in_flutter_project/providers/service_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) :super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Native Code Integration'),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(16),
        child: Consumer<ServiceProvider>(builder: (context, serviceProvider, child){
          return Center(child: Text(serviceProvider.batteryLevel));
        }),
      ),
    );
  }
}
