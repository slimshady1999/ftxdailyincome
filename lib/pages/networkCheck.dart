

/* import 'package:connectivity_plus/connectivity_plus.dart';
import "package:flutter/material.dart";
import 'package:ftxincome/pages/intropage.dart';

class NetworkChecker extends StatefulWidget {
  const NetworkChecker({super.key});

  @override
  State<NetworkChecker> createState() => _NetworkCheckerState();
}

class _NetworkCheckerState extends State<NetworkChecker> {
  final Connectivity _connectivity = Connectivity();
  ConnectivityResult _connectivityResult = ConnectivityResult.none;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _connectivity.onConnectivityChanged.listen(_upDateCnnectionStatus);
  }

  Future<void> _upDateCnnectionStatus(ConnectivityResult result) async {
    setState(() {
      _connectivityResult = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Image.asset("assets/images/internet.png")],
      ),
    );
  }
}
*/