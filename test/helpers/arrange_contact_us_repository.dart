import 'package:dartz/dartz.dart';
import 'package:fpb/core/failures/contact_us_failure.dart';
import 'package:mocktail/mocktail.dart';

import 'helpers.dart';

void arrangeContactUsRepositoryReturnsFailureOnSendMessage(
    MockIContactUsRepositoryFacade contactUsRepositoryFacade) {
  when(
    () => contactUsRepositoryFacade.sendMessage(
      email: validEmail,
      message: validMessage,
      name: validName,
    ),
  ).thenAnswer(
    (invocation) async {
      return left(
        ContactUsFailure.unexpected(),
      );
    },
  );
}

void arrangeContactUsRepositoryReturnsSuccessOnSendMessage(
    MockIContactUsRepositoryFacade contactUsRepositoryFacade) {
  when(
    () => contactUsRepositoryFacade.sendMessage(
      email: validEmail,
      message: validMessage,
      name: validName,
    ),
  ).thenAnswer(
    (invocation) async => right(
      unit,
    ),
  );
}
