import 'package:equatable/equatable.dart';

abstract class FlightSearchState extends Equatable {
  const FlightSearchState();

  @override
  List<Object?> get props => [];
}

class FlightSearchInitialState extends FlightSearchState {}

class FlightSearchLoadingState extends FlightSearchState {}

class SelectedIndexState extends FlightSearchState {
  final int selectedIndex;

  const SelectedIndexState({required this.selectedIndex});
}
