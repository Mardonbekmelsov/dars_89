sealed class ScreenState {}

class ScreenInitialState extends ScreenState {}

class ScreenLoadingState extends ScreenState {}

class ScreenLoadedState extends ScreenState {}

class ScreenErrorState extends ScreenState {
  final String error;
  ScreenErrorState({required this.error});
}
