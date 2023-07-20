import "package:flutter/material.dart";
import 'package:webview_flutter/webview_flutter.dart';

class FtxDailyIncomePage extends StatefulWidget {
  const FtxDailyIncomePage({super.key});

  @override
  State<FtxDailyIncomePage> createState() => _FtxDailyIncomePageState();
}

class _FtxDailyIncomePageState extends State<FtxDailyIncomePage> {
  late WebViewController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://ftxdailyincome.com/user/register'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: WebViewWidget(controller: _controller));
  }
}
