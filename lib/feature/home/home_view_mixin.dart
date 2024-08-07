import 'package:flutter/material.dart';
import 'package:portfolio_me/feature/home/home_view.dart';
mixin HomeViewMixin on State<HomeView> {
  final welcomeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final experienceKey = GlobalKey();
  final workKey = GlobalKey();
  final contactKey = GlobalKey();
  final ScrollController scrollController = ScrollController();

  String? selectedItem;

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          duration: const Duration(seconds: 1), curve: Curves.easeInOut);
      setState(() {
        selectedItem = key.toString();
      });
    }
  }

  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (isScrolledToSection(welcomeKey)) {
      setState(() {
        selectedItem = welcomeKey.toString();
      });
    } else if (isScrolledToSection(aboutKey)) {
      setState(() {
        selectedItem = aboutKey.toString();
      });
    } else if (isScrolledToSection(experienceKey)) {
      setState(() {
        selectedItem = experienceKey.toString();
      });
    } else if (isScrolledToSection(workKey)) {
      setState(() {
        selectedItem = workKey.toString();
      });
    } else if (isScrolledToSection(contactKey)) {
      setState(() {
        selectedItem = contactKey.toString();
      });
    }
  }

  bool isScrolledToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      final box = context.findRenderObject() as RenderBox?;
      final offset = box?.localToGlobal(Offset.zero);
      return offset != null && offset.dy <= 100 && offset.dy >= 0;
    }
    return false;
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }
}