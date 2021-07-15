import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/enums/device_type.dart';

class Device_Info {
  Orientation orientation;
  Device_Type deviceType;
  double screenWidth;
  double screenHeight;
  double localWidth;
  double localHeight;

  Device_Info(
      {this.orientation,
      this.deviceType,
      this.screenWidth,
      this.screenHeight,
      this.localWidth,
      this.localHeight});
}
