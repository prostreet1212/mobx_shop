import 'package:mobx/mobx.dart';
import 'package:mobx_shop/repository/menu_repository.dart';
import '../model/coffee_menu.dart';

part 'market_state.g.dart';

class MarketState = _MarketState with _$MarketState;

abstract class _MarketState with Store {
  @observable
  List<CoffeeMenu> menuList = ConstMenuRepository().getListMenu();

  @observable
  List<CoffeeMenu> badgeList = [];

  @action
  void buyNot(CoffeeMenu coffee) {
    menuList = menuList.map((e) {
      if (e == coffee) {
        e.isBuy = !e.isBuy;
        return e;
      } else {
        return e;
      }
    }).toList();
  }

  @action
  void changeBadgeCount(CoffeeMenu coffee){
    if(coffee.isBuy){
      badgeList=[...badgeList,coffee];
    }else{
      badgeList=[...badgeList]..remove(coffee);
    }
  }
}
