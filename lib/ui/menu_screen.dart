import 'package:flutter/material.dart';
import 'package:mobx_shop/state/market_state.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<MarketState>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('mobX shop'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(state.menuList[0].name),
      ),
    );
  }
}
