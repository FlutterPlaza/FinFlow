import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/authenticate_with_biometrics/application/bloc/biometric_auth_bloc.dart';

class BiometricButton extends StatelessWidget {
  const BiometricButton({
    super.key,
    required this.iconSize,
  });

  final double iconSize;

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return BlocBuilder<BiometricAuthBloc, BiometricAuthState>(
      builder: (context, state) {
        context
            .read<BiometricAuthBloc>()
            .add(const BiometricAuthEvent.checkSupport());
        return Card(
          color:  Colors.grey,
          child: IconButton(
            onPressed: state.canAuthenticate
                ? () => context
                    .read<BiometricAuthBloc>()
                    .add(const BiometricAuthEvent.authenticate())
                : null,
            icon: Icon(
              FpbIcons.face_id,
              color: Colors.white,
              size: iconSize,
            ),
          ),
        );
      },
    );
  }
}
