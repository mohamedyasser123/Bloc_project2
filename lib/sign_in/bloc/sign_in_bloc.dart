import 'package:bloc_pattern/sign_in/bloc/signin_events.dart';
import 'package:bloc_pattern/sign_in/bloc/signin_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvents,SignInStates>{
  SignInBloc():super(SignInStates()){
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);


  }
  void _emailEvent(EmailEvent event,Emitter<SignInStates>emit){
    on <EmailEvent>((event,emit){
      emit(state.copyWith(email:event.email));

    });
  }
  void _passwordEvent(PasswordEvent event,Emitter<SignInStates>emit){
    on <PasswordEvent>((event,emit){
      emit(state.copyWith(password: event.password));

    });
  }

}