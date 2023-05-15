import 'package:flutter/material.dart';
import 'package:mini_project_data_on/core/domain/failures/failure.codegen.dart';
import 'package:mini_project_data_on/core/extensions/context_extensions.dart';
// import 'package:template/l10n/l10n.dart';

mixin FailureMessageHandler {
  void handleFailure(BuildContext context, Failure failure) {
    failure.when(
      localFailure: (message) => context.displayFlash(message),
      serverFailure: (message) => context.displayFlash(message),
    );
  }
}
