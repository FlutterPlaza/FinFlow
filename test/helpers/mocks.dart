import 'package:fpb/authentication_with_facebook/domain/i_facebook_repository_facade.dart';
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart';
import 'package:fpb/authentication_with_google/domain/i_google_repository_facade.dart';
import 'package:fpb/core/settings/app_settings_helper.dart';
import 'package:mocktail/mocktail.dart';

class MockIGoogleRepositoryFacade extends Mock
    implements IGoogleRepositoryFacade {}

class MockIAuthFacade extends Mock implements IAuthFacade {}

class MockIFacebookRepositoryFacade extends Mock
    implements IFacebookRepositoryFacade {}

class MockAppSettingsHelper extends Mock implements AppSettingsHelper {}
