import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recharge/homeprovider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewscreen extends StatefulWidget {
  const webviewscreen({Key? key}) : super(key: key);

  @override
  State<webviewscreen> createState() => _webviewscreenState();
}

class _webviewscreenState extends State<webviewscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(Platform.isAndroid)
      {
        WebView.platform = AndroidWebView();
      }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: "${Provider.of<homeprovider>(context,listen: false).datapicker!.link}",
        ),
      ),
    );
  }
}
