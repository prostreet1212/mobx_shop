import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
        leading:Observer(
          builder: (context)=>Badge(
            badgeContent: Text(state.badgeList.length.toString()),
            position: const BadgePosition(start: 26, bottom: 26),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MaterialApp();
                }));
              },
            ),
          ),
        ),
      ),
      body: GridView.count(
          shrinkWrap
              : true,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 1.5),
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: state.menuList.map(
            (menu) {
              return Card(
                color: const Color.fromARGB(255, 255, 229, 85),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Wrap(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/${menu.image}',
                            fit: BoxFit.fitWidth,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              alignment: Alignment.center,
                              color: const Color.fromARGB(255, 174, 206, 231),
                              height: 40,
                              width: 40,
                              child: Observer(
                                builder: (context)=>IconButton(
                                  icon: Icon(
                                    Icons.shopping_basket,
                                    color: !menu.isBuy ? Colors.grey : Colors.red,
                                  ),
                                  onPressed: () {
                                    state.buyNot(menu);
                                    state.changeBadgeCount(menu);
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          menu.name,
                          textAlign: TextAlign.center,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Цена: '),
                            Text(
                              '${menu.price} руб.',
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
    );
  }
}
