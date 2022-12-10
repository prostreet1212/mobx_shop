import 'package:flutter/material.dart';
import 'package:mobx_shop/state/market_state.dart';
import 'package:mobx_shop/ui/menu_screen.dart';
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
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MenuScreen(),
      ),
    );
  }
}
