import 'package:equatable/equatable.dart';

abstract class FlightSearchEvent extends Equatable {
  const FlightSearchEvent();

  @override
  List<Object?> get props => [];
}

class SelectIndexEvent extends FlightSearchEvent {
  final int selectedIndex;

  const SelectIndexEvent({required this.selectedIndex});
}

