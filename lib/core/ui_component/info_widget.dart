import 'package:flutter/material.dart';
import 'package:responsive_ui/core/function/get_device_type.dart';
import 'package:responsive_ui/core/models/device_info.dart';

class InfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, Device_Info deviceInfo) builder;

  const InfoWidget({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        var mediaQueryData = MediaQuery.of(context);
        var deviceInfo = Device_Info(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width,
          screenHeight: mediaQueryData.size.height,
          localHeight: constrains.maxHeight,
          localWidth: constrains.maxWidth,
        );
        return builder(context, deviceInfo);
      },
    );
  }
}