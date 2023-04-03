import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/domain/virtualCard.dart';

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

final cardItem = VirtualCard(
  index: 0,
  balance: '200',
  cardNumber: '1234 6565 6577',
  expiry: '04/25',
  cvv: '123',
  type: 'visa',
  lastFourDigits: '1232',
);

final listOfVirtualCards = [
  const VirtualCard(
    index: 0,
    balance: '200',
    cardNumber: '1234 6565 6577',
    expiry: '04/25',
    cvv: '123',
    type: 'visa',
    lastFourDigits: '1232',
  ),
  const VirtualCard(
    index: 0,
    balance: '1000',
    cardNumber: '1234 6565 6577',
    expiry: '04/25',
    cvv: '123',
    type: 'visa',
    lastFourDigits: '5050',
  ),
  const VirtualCard(
    index: 0,
    balance: '550.50',
    cardNumber: '1234 6565 6577',
    expiry: '04/25',
    cvv: '123',
    type: 'visa',
    lastFourDigits: '7070',
  ),
  const VirtualCard(
    index: 0,
    balance: '240.50',
    cardNumber: '1234 6565 6577',
    expiry: '04/25',
    cvv: '123',
    type: 'visa',
    lastFourDigits: '7070',
  ),
  const VirtualCard(
    index: 0,
    balance: '35.50',
    cardNumber: '1234 6565 6577',
    expiry: '04/25',
    cvv: '123',
    type: 'visa',
    lastFourDigits: '7070',
  ),
];

const String invalidEmail = "dev.flutter@flu";
const String validEmail = "devflutter@flutterplaza.com";

const String invalidPassword = "3e2fcw";
const String validPassword = "32rfrfeQds";

const String invalidName = "jeff";
const String validName = "JeffreyKen";

const String invalidMessage = "Lorem Ipsum is simply";
const String validMessage =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s";
