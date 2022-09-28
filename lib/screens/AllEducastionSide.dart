import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class AllAducastionSide extends StatefulWidget {
  const AllAducastionSide({Key? key}) : super(key: key);

  @override
  State<AllAducastionSide> createState() => _AllAducastionSideState();
}

class _AllAducastionSideState extends State<AllAducastionSide> {
//  final GlobalKey inappWebview = GlobalKey();
  InAppWebViewController? inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AllEducationSide"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              if (await inAppWebViewController!.canGoBack()) {
                inAppWebViewController!.goBack();
              }
            },
          ),
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () async {
                await inAppWebViewController!.reload();
              }),
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () async {
                await inAppWebViewController!.loadUrl(
                    urlRequest: URLRequest(
                        url: Uri.parse(
                  "https://netflix.com",
                )));
              }),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () async {
              if (await inAppWebViewController!.canGoForward()) {
                inAppWebViewController!.goForward();
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                      "https://tse1.mm.bing.net/th?id=OIP.O0IzlGrXOSOkHPcNV5fS2AAAAA&pid=Api&rs=1&c=1&qlt=95&w=205&h=118"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('Wikipedia');
                    },
                    child: const Text("Education With Wikipedia"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                      "https://tse4.mm.bing.net/th?id=OIP.swPiIq-rGCarPbofX3hVRAHaEK&pid=Api&P=0"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('W3schools');
                    },
                    child: const Text("Education With W3schools"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                      "https://tse1.mm.bing.net/th?id=OIP.zeTvsDLqcDY-5t_BixzkOwHaEK&pid=Api&rs=1&c=1&qlt=95&w=172&h=97"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('JavaPoint');
                    },
                    child: const Text("Education With Javapoint"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 20,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                      "https://tse2.mm.bing.net/th?id=OIP.x6-iUkcyWpYTDLRW2KA4wgHaHa&pid=Api&P=0"),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('Tutorialpoints');
                    },
                    child: const Text("Education With tutorialpoints "),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
