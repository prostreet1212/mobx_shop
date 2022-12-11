

import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

import '../state/market_state.dart';

class BadgeScreen extends StatelessWidget {
  const BadgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<MarketState>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
        centerTitle: true,
      ),
      body: state.badgeList.isEmpty
          ? const Center(
        child: Text('Корзина пуста',style: TextStyle(fontSize: 24),),
      )
          : Column(
        children: [
          Expanded(
              flex: 9,
              child: ListView.builder(
                  itemCount: state.badgeList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.yellow,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/${state.badgeList[index].image}',
                              fit: BoxFit.fitWidth,
                            ),
                            Expanded(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        state.badgeList[index].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                          'Цена: ${state.badgeList[index].price} руб.',
                                          style: const TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontSize: 16))
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    );
                  })),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text(
                    'Оформить заказ',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  onPressed: () {
                    state.changeBuyStatus();
                    state.clearBadge();
                    Navigator.pop(context);
                    showToast('Заказ успешно выполнен');
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
