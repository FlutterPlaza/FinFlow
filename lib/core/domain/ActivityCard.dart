class ActivityCard {
  const ActivityCard({
    required this.id,
    required this.username,
    required this.dateTime,
    required this.transactionAmt,
    required this.isFavorite,
  });

  final int id;
  final String username;
  final String dateTime;
  final String transactionAmt;
  final bool isFavorite;
}
