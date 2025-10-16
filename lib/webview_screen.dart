import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebviewScreen extends StatefulWidget {
  const WebviewScreen({super.key});

  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  InAppWebViewController? webViewController;
  late PullToRefreshController refreshController;

  double progress = 0;
  String url = "https://961.kz/";

  @override
  void initState() {
    super.initState();

    refreshController = PullToRefreshController(
      onRefresh: () async {
        webViewController?.reload();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            if (progress < 1.0) LinearProgressIndicator(value: progress),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(url: WebUri(url)),
                pullToRefreshController: refreshController,
                onWebViewCreated: (controller) {
                  webViewController = controller;
                },
                onProgressChanged: (controller, newProgress) {
                  setState(() {
                    progress = newProgress / 100;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
