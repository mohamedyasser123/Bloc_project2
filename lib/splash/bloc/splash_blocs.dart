import 'package:bloc_pattern/splash/bloc/splash_events.dart';
import 'package:bloc_pattern/splash/bloc/splash_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<PageChanged>((event, emit) {
      emit(state.copyWith(page: event.newPage));
    });
  }
}

