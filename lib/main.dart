import 'package:diocese/map_page.dart';
import 'package:flutter/material.dart';
//import 'package:MapaPage/pages/MapaPage.dart';
import 'package:flutter_config/flutter_config.dart';
//import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  runApp(App()
//ChangeNotifierProvider<PostosRepository>(
//create: (_) => PostosRepository(),
//child: App(),
//  ),
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
      home: Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () {
                print("Clicouuuuuuu messi");
              },
              child: Image.asset(
                'assets/more_vert.png',
                fit: BoxFit.cover,
                width: 24.0,
                height: 24.0,
              ),
            )
          ],
          title: const Text('Diocese de Santos', style: TextStyle(color: Colors.white)),
          leading: Image.asset('assets/diocese.png', height: 36, width: 36),
          backgroundColor: Colors.blueAccent,
        ),
        body: MapPage(),
    ),
    );
  }
}
/*class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diocese Santos"),
      ),
      body: Container(
        child: Center(child: Text("Olá mundo"),
        ),
      ),
    );
  }
}*/