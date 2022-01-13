import 'package:etherwallet/router.dart';
import 'package:etherwallet/services_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final stores = await createProviders();
  runApp(MainApp(stores));
}

class MainApp extends StatelessWidget {
  const MainApp(this.stores, {Key? key}) : super(key: key);
  final List<SingleChildWidget> stores;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: stores,
        child: MaterialApp(
          title: 'Flutter App',
          initialRoute: '/',
          routes: getRoutes(context),
          theme: ThemeData(
            primarySwatch: Colors.orange,
            buttonTheme: const ButtonThemeData(
              buttonColor: Colors.orange,
              textTheme: ButtonTextTheme.primary,
            ),
          ),
        ));
  }
}
