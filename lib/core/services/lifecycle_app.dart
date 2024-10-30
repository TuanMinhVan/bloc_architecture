import 'package:flutter/foundation.dart';

import '../config.dart';

Future lifecycleApp() async {
  // Add your function code here!
  WidgetsBinding.instance.addObserver(
    LifecycleEventHandler(
      resumeCallBack: () async {
        Logger.log('App resumed', tag: 'Lifecycle');
      },
    ),
  );
}

class LifecycleEventHandler extends WidgetsBindingObserver {
  LifecycleEventHandler({
    this.resumeCallBack,
    this.suspendingCallBack,
  });
  final AsyncCallback? resumeCallBack;
  final AsyncCallback? suspendingCallBack;

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    Logger.log('state changed ${state.name}');
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumeCallBack != null) {
          await resumeCallBack!();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        if (suspendingCallBack != null) {
          await suspendingCallBack!();
        }
        break;
    }
  }
}
