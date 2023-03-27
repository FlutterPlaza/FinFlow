import 'package:fpb/contact_us/view/widgets/error_toast_widget.dart';
import 'package:oktoast/oktoast.dart';

final toastError = showToastWidget(
    position: ToastPosition.bottom,
    duration: Duration(seconds: 5),
    ErrorToastWidget());
