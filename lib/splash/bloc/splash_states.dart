class SplashState {
   final int page;

  const SplashState({this.page = 0});

  SplashState copyWith({int? page}) {
    return SplashState(
      page: page ?? this.page,
    );
  }
}