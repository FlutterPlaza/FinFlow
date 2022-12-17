import 'package:flutter/material.dart';

import 'widgetbook_hot_reload.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(home: WidgetbookHotReload()));
}
