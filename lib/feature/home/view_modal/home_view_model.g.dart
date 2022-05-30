// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$selectedItemAtom =
      Atom(name: '_HomeViewModelBase.selectedItem', context: context);

  @override
  int get selectedItem {
    _$selectedItemAtom.reportRead();
    return super.selectedItem;
  }

  @override
  set selectedItem(int value) {
    _$selectedItemAtom.reportWrite(value, super.selectedItem, () {
      super.selectedItem = value;
    });
  }

  late final _$scrollToItemAsyncAction =
      AsyncAction('_HomeViewModelBase.scrollToItem', context: context);

  @override
  Future<dynamic> scrollToItem(
      BuildContext context, GlobalKey<State<StatefulWidget>> itemKey) {
    return _$scrollToItemAsyncAction
        .run(() => super.scrollToItem(context, itemKey));
  }

  late final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase', context: context);

  @override
  void onItemTapped(int index) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.onItemTapped');
    try {
      return super.onItemTapped(index);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void scrollAndSelected(BuildContext context,
      GlobalKey<State<StatefulWidget>> itemKey, int index) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.scrollAndSelected');
    try {
      return super.scrollAndSelected(context, itemKey, index);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedItem: ${selectedItem}
    ''';
  }
}
