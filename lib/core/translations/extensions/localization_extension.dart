import 'package:flutter/material.dart';
import 'package:tudu/core/translations/generated/l10n.dart';

extension LocalizedBuildContext on BuildContext {
  // simplify access to localizations
  Translation get t => Translation.of(this);
}
