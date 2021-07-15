import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/ui_component/info_widget.dart';

void main()=> runApp(DevicePreview(builder: (context)=>myApp(),));
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData=MediaQuery.of(context);
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        body: Container(
          width: screenWidth/2,
          height: screenHeight/2,
          color: Colors.black,
          child: Center(
            child: InfoWidget(builder:
            (context,deviceInfo){
              return Container(
                width:deviceInfo.localWidth/2 ,
                height: deviceInfo.localHeight/2,
                color: Colors.red,
              );
            },),
          ),
        ),
      ),
    );
  }

}

