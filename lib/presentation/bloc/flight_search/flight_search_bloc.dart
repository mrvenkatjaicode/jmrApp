import 'flight_search_event.dart';
import 'flight_search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FlightSearchBloc extends Bloc<FlightSearchEvent, FlightSearchState> {
  FlightSearchBloc() : super(FlightSearchInitialState()) {
    on<SelectIndexEvent>(changeindex);
  }

  changeindex(SelectIndexEvent event, Emitter<FlightSearchState> emit) async {
    emit(FlightSearchLoadingState());
    emit(SelectedIndexState(selectedIndex: event.selectedIndex));
  }
}
