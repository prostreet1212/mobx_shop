import 'package:mobx/mobx.dart';
import 'package:mobx_shop/repository/menu_repository.dart';
import '../model/coffee_menu.dart';

part 'market_state.g.dart';

class MarketState=_MarketState with _$MarketState;

abstract class _MarketState with Store{

  @observable
  List<CoffeeMenu> menuList=ConstMenuRepository().getListMenu();

  @action
  void buyNot(){
    menuList.add(CoffeeMenu('image', 'name', 3));
  }
}