import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kartal/kartal.dart';
import 'package:portfolio_me/feature/contact/contact_view.dart';
import 'package:portfolio_me/feature/experience/experience_view.dart';
import 'package:portfolio_me/feature/home/home_view_mixin.dart';
import 'package:portfolio_me/feature/welcome_view.dart';
import 'package:portfolio_me/feature/work/work_view.dart';
import 'package:portfolio_me/product/components/bottomRightNavigationBar.dart';
import 'package:portfolio_me/product/components/bottom_left_navigation_bar.dart';
import 'package:portfolio_me/product/widget/button/default_button.dart';
import 'package:portfolio_me/product/widget/column/padding_vertical.dart';
import 'package:portfolio_me/product/widget/row/padding_horizontal.dart';
import 'package:portfolio_me/feature/about/about_view.dart';
import 'package:portfolio_me/product/widget/app_bar_logo.dart';
import '../../product/base/base_state.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin, BaseState {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: _scaffoldKey,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(context.device.isLargeScreen ? 100 : 80),
          child: _buildAppBar(context),
        ),
        drawer: _buildDrawer(context),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned.fill(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _buildSection(context, welcomeKey, WelcomeView()),
                            _buildSection(context, aboutKey, AboutView()),
                            _buildSection(context, experienceKey, ExperienceView()),
                            _buildSection(context, workKey, WorkView()),
                            _buildSection(context, contactKey, ContactView()),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                if (!context.device.isSmallScreen) ...[
                  Positioned(
                    bottom: 0,
                    left: 20,
                    child: BottomLeftNavigationBar(),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 80,
                    child: BottomRightNavigationBar(),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: context.padding.onlyTopPaddingMedium,
      child: PaddingVertical(
        child: PaddingHorizontal(
          child: AppBar(
            elevation: 0,
            leading: _buildLogo(),
            actions: context.device.isSmallScreen
                ? [
              Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ))
            ]
                : [
              _buildActionItem(context,
                  number: "01", title: appConstants.aboutMenu, key: aboutKey),
              _buildActionItem(context,
                  number: "02",
                  title: appConstants.experienceMenu,
                  key: experienceKey),
              _buildActionItem(context,
                  number: "03", title: appConstants.workMenu, key: workKey),
              _buildActionItem(context,
                  number: "04", title: appConstants.contactMenu, key: contactKey),
              Padding(
                padding: context.padding.onlyLeftPaddingNormal,
                child: DefaultButton(
                    text: appConstants.resumeMenu, url: stringConstants.resumeUrl),
              ),
            ],
            toolbarHeight: context.sized.highValue,
          ),
        ),
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      width: context.sized.dynamicWidth(.3),
      backgroundColor: colorConstants.activeBlue,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: -40,
            child: BottomLeftNavigationBar(),
          ),
          const Positioned(
            bottom: 0,
            right: 0,
            child: BottomRightNavigationBar(),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                context.sized.emptySizedHeightBoxLow3x,
                _buildActionItem(context,
                    number: "01", title: appConstants.aboutMenu, key: aboutKey),
                context.sized.emptySizedHeightBoxLow3x,
                _buildActionItem(context,
                    number: "02", title: appConstants.experienceMenu, key: experienceKey),
                context.sized.emptySizedHeightBoxLow3x,
                _buildActionItem(context,
                    number: "03", title: appConstants.workMenu, key: workKey),
                context.sized.emptySizedHeightBoxLow3x,
                _buildActionItem(context,
                    number: "04", title: appConstants.contactMenu, key: contactKey),
                context.sized.emptySizedHeightBoxLow3x,
                Padding(
                  padding: context.padding.horizontalPaddingNormal,
                  child: DefaultButton(
                      text: appConstants.resumeMenu, url: stringConstants.resumeUrl),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(BuildContext context, GlobalKey key, Widget child) {
    return Flexible(
      key: key,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: child,
      ),
    );
  }

  Widget _buildLogo() {
    return GestureDetector(
      onTap: () => scrollToSection(welcomeKey),
      child: Padding(
        padding: context.padding.onlyLeftPaddingLow,
        child: const HollowCircleWithLetter(letter: "H"),
      ),
    );
  }

  Widget _buildActionItem(BuildContext context,
      {required String number, required String title, required GlobalKey key}) {
    final isSelected = selectedItem == key.toString();
    return InkWell(
      onTap: () => scrollToSection(key),
      child: Padding(
        padding: context.padding.onlyLeftPaddingNormal,
        child: Row(children: [
          Text("$number.",
              style: context.general.textTheme.bodySmall!
                  .copyWith(color: isSelected ? colorConstants.activeGreen : colorConstants.activeWhite)),
          Text(title,
              style: context.general.textTheme.bodySmall!
                  .copyWith(color: isSelected ? colorConstants.activeGreen : colorConstants.activeWhite))
        ]),
      ),
    );
  }
}