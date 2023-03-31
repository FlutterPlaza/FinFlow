class ActivityCardModel {
  const ActivityCardModel({
    required this.id,
    required this.username,
    required this.dateTime,
    required this.transactionAmt,
    required this.isFavorite,
    required this.type,
  });

  final int id;
  final String username;
  final String dateTime;
  final String transactionAmt;
  final bool isFavorite;
  final String type;
}
