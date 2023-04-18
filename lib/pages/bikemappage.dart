import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BikeMapPage extends StatefulWidget {
  const BikeMapPage({Key? key}) : super(key: key);

  @override
  State<BikeMapPage> createState() => _BikeMapPageState();
}

Uri url = Uri(
  scheme: 'https',
  host: 'www.google.com',
  path: '/maps/d/viewer',
  queryParameters: {
    'mid': '1_onK_6jbOEKixKAB46Wos7_U0sci_SE',
    'ehbc': '2E312F',
    'hl': 'en',
  },
);

WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
// Update loading bar.
      },
    ),
  )
  ..loadRequest(url);

class _BikeMapPageState extends State<BikeMapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WebViewWidget(
          controller: controller,
        ),
      ),

    );
  }
}
