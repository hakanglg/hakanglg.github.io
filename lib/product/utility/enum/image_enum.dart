import 'package:portfolio_me/product/utility/constants/app/app_constants.dart';

enum ImageItems {
  DabasirsWalletMockup,
  OtodoMockup,
  FlutterIcon

}

extension ImageItemsExtension on ImageItems {
  String _path() {
    switch (this) {
      case ImageItems.DabasirsWalletMockup:
        return "dabasirs_wallet_mockup";
      case ImageItems.OtodoMockup:
        return "otodo_mockup";
      case ImageItems.FlutterIcon:
        return "ic_flutter";

    }
  }

  String get imagePathPng => '${AppConstants.IMAGE_ASSET_PATH}/${_path()}.png';

  String get imagePathJpg => '${AppConstants.IMAGE_ASSET_PATH}/${_path()}.jpg';

  String get imagePathSvg => '${AppConstants.SVG_ASSET_PATH}/${_path()}.svg';
}
