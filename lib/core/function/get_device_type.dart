import 'package:flutter/material.dart';
import 'package:responsive_ui/core/enums/device_type.dart';

Device_Type getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation=mediaQueryData.orientation;
  double width =0;
  if(orientation==Orientation.landscape)
  {
    width=mediaQueryData.size.height;

  }
  else
  {
    width=mediaQueryData.size.width;

  }
  if(width>=950)
    return Device_Type.Desktop;
  if (width>=600)
    return Device_Type.Tablet;
  else
    return Device_Type.Mobile;
}