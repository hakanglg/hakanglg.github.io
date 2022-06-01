import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  int selectedItem = 1;

  @action
  Future scrollToItem(BuildContext context, GlobalKey itemKey) async {
    final context = itemKey.currentContext;
    await Scrollable.ensureVisible(context!,
        duration: const Duration(seconds: 1));
  }

  @action
  onItemTapped(int index) {
    selectedItem = index;
    print(selectedItem.toString());
  }

  @action
  void scrollAndSelected(BuildContext context, GlobalKey itemKey, int index) {
    scrollToItem(context, itemKey);
    onItemTapped(index);
  }

  @action
  Future launchInBrowser(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch ${Uri.parse(url)}';
    }
  }
}
