// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MarketState on _MarketState, Store {
  late final _$menuListAtom =
      Atom(name: '_MarketState.menuList', context: context);

  @override
  List<CoffeeMenu> get menuList {
    _$menuListAtom.reportRead();
    return super.menuList;
  }

  @override
  set menuList(List<CoffeeMenu> value) {
    _$menuListAtom.reportWrite(value, super.menuList, () {
      super.menuList = value;
    });
  }

  late final _$badgeListAtom =
      Atom(name: '_MarketState.badgeList', context: context);

  @override
  List<CoffeeMenu> get badgeList {
    _$badgeListAtom.reportRead();
    return super.badgeList;
  }

  @override
  set badgeList(List<CoffeeMenu> value) {
    _$badgeListAtom.reportWrite(value, super.badgeList, () {
      super.badgeList = value;
    });
  }

  late final _$_MarketStateActionController =
      ActionController(name: '_MarketState', context: context);

  @override
  void buyNot(CoffeeMenu coffee) {
    final _$actionInfo =
        _$_MarketStateActionController.startAction(name: '_MarketState.buyNot');
    try {
      return super.buyNot(coffee);
    } finally {
      _$_MarketStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeBadgeCount(CoffeeMenu coffee) {
    final _$actionInfo = _$_MarketStateActionController.startAction(
        name: '_MarketState.changeBadgeCount');
    try {
      return super.changeBadgeCount(coffee);
    } finally {
      _$_MarketStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeBuyStatus() {
    final _$actionInfo = _$_MarketStateActionController.startAction(
        name: '_MarketState.changeBuyStatus');
    try {
      return super.changeBuyStatus();
    } finally {
      _$_MarketStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearBadge() {
    final _$actionInfo = _$_MarketStateActionController.startAction(
        name: '_MarketState.clearBadge');
    try {
      return super.clearBadge();
    } finally {
      _$_MarketStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
menuList: ${menuList},
badgeList: ${badgeList}
    ''';
  }
}
