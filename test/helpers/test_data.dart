import 'package:fpb/core/domain/user.dart';

const User testUser = User(
  id: "dede",
  isNewUser: true,
  photo:
      "https://avatars.githubusercontent.com/u/52233891?s=400&u=e5da06a4923b3a269085775e6738f06b4f292607&v=4",
  providerId: "providerId",
  name: "Kengne Jeffrey",
  email: "darrelntangu@gmail.com",
  phoneNumber: "+237652432246",
);

const String invalidEmail = "dev.flutter@flu";
const String validEmail = "devflutter@flutterplaza.com";

const String invalidPassword = "3e2fcw";
const String validPassword = "32rfrfeQds";

const String invalidName = "jeff";
const String validName = "JeffreyKen";

const String invalidMessage = "Lorem Ipsum is simply";
const String validMessage =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s";
