import 'package:equatable/equatable.dart';

class MyCard extends Equatable {
  final String cardNumber;
  final String cardName;
  final String expiryDate;

  MyCard({
    required this.cardNumber,
    required this.cardName,
    required this.expiryDate,
  });

  @override
  List<Object?> get props => [cardNumber, cardName, expiryDate];
}
