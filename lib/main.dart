import 'package:flutter/material.dart';
import 'package:mobx_shop/state/market_state.dart';
import 'package:mobx_shop/ui/menu_screen.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => MarketState(),
      child: OKToast(
        textStyle: const TextStyle(fontSize: 19.0, color: Colors.white),
        backgroundColor: const Color.fromARGB(113, 145, 148, 139),
        position: ToastPosition.bottom,
        textPadding: const EdgeInsets.all(8),
        duration: const Duration(seconds: 3),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MenuScreen(),
        ),
      ),
    );
  }
}
