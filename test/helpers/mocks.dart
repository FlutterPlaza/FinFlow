import 'package:fpb/authentication_with_facebook/domain/i_facebook_repository_facade.dart';
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart';
import 'package:fpb/authentication_with_google/domain/i_google_repository_facade.dart';
import 'package:fpb/contact_us/domain/i_contact_us_repository_facade.dart';
import 'package:fpb/core/settings/app_settings_helper.dart';
import 'package:fpb/core/settings/cached.dart';
import 'package:mocktail/mocktail.dart';

class MockIGoogleRepositoryFacade extends Mock
    implements IGoogleRepositoryFacade {}

class MockIAuthFacade extends Mock implements IAuthFacade {}

class MockIFacebookRepositoryFacade extends Mock
    implements IFacebookRepositoryFacade {}

class MockAppSettingsHelper extends Mock implements AppSettingsHelper {}

class MockCached extends Mock implements Cached {}

class MockIContactUsRepositoryFacade extends Mock
    implements IContactUsRepositoryFacade {}
