import 'package:diocese/pages/map_page.dart';
import 'package:diocese/repositories/igrejas_repository.dart';
import 'package:flutter/material.dart';
//import 'package:MapaPage/pages/MapaPage.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  runApp(
    ChangeNotifierProvider<IgrejasRepository>(
      create: (_) => IgrejasRepository(),
      child: App(),
    ),
  );
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diocese Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(1, 0, 86, 179)),
        useMaterial3: true,
      ),
      home: MapPage()
    );
  }
}
