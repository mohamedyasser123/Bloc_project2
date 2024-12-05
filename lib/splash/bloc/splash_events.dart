class SplashEvent{

}
class PageChanged extends SplashEvent {
  final int newPage;
  PageChanged(this.newPage);
}