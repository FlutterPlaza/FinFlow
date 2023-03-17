class VirtualCard {
  const VirtualCard({
    required this.index,
    required this.balance,
    required this.cardNumber,
    required this.cvv,
    required this.expiry,
    required this.type,
    required this.lastFourDigits,
  });

  final int index;
  final String balance;
  final String cardNumber;
  final String cvv;
  final String expiry;
  final String type;
  final String lastFourDigits;
}
