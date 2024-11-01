import 'package:flutter/foundation.dart';

import '../../blocs/common/common_bloc.dart';
import '../config.dart';
import 'injection_container.dart';

Future lifecycleApp() async {
  // Add your function code here!
  WidgetsBinding.instance.addObserver(
    LifecycleEventHandler(
      resumeCallBack: () async {
        getIt<CommonBloc>().add(
          const CommonEvent.appLifecycle(LifecycleState.resumed),
        );
      },
      suspendingCallBack: () async {
        getIt<CommonBloc>().add(
          const CommonEvent.appLifecycle(LifecycleState.suspended),
        );
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
