abstract class SignInEvents{
  const SignInEvents();

}
class EmailEvent extends SignInEvents{
  final String email;

  EmailEvent({required this.email});
}
class PasswordEvent extends SignInEvents{
  final String password;

  PasswordEvent({required this.password});
}