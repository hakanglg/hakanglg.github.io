import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:porfolio_web/core/base/base_state.dart';
import 'package:porfolio_web/core/constants/image/image_constants.dart';
import 'package:porfolio_web/product/components/button/go_top_button.dart';

class PortfolioView extends StatelessWidget with BaseState {
  final viewModel;
  final GlobalKey Customkey;

  final otodoList = [
    Image.asset(ImagePaths.otodo_mockup.path()),
    Image.asset(ImagePaths.otodo_dark.path()),
    Image.asset(ImagePaths.otodo_light.path()),
    Image.asset(ImagePaths.dabasir_dark.path()),
    Image.asset(ImagePaths.dabasir_mockup.path()),
  ];
  @override
  PortfolioView({super.key, required this.viewModel, required this.Customkey});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarSection(context),
      floatingActionButton: _fabButton(),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [_sliderWidget(context)],
          )),
    );
  }

  GoTopButton _fabButton() =>
      GoTopButton(viewModel: viewModel, index: 0, itemKey: Customkey);

  CarouselSlider _sliderWidget(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: context.dynamicHeight(.8),
        aspectRatio: 2.0,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: [0, 1, 2, 3, 4].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return otodoList[i];
          },
        );
      }).toList(),
    );
  }

  AppBar _appBarSection(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(stringConstants.portfolio,
          style: context.textTheme.headline5!.copyWith(color: Colors.white)),
    );
  }
}
