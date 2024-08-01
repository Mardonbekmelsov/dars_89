import 'package:bloc/bloc.dart';
import 'package:dars_89/blocs/screen_state.dart';
import 'package:dars_89/blocs/screens_event.dart';
import 'package:dars_89/services/download_service.dart';
import 'package:dars_89/utils/app_constants.dart';

class ScreensBloc extends Bloc<ScreensEvent, ScreenState> {
  ScreensBloc() : super(ScreenInitialState()) {
    on<NextPageEvent>(_onNextPage);
    on<PreviousPageEvent>(_onPreviousPage);
    on<DownloadCvEvent>(_downloadCv);
  }

  void _onNextPage(NextPageEvent event, emit) {
    emit(ScreenLoadingState());
    try {
      if (curIndex < screens.length) {
        curIndex += 1;
      }
      emit(ScreenLoadedState());
    } catch (error) {
      emit(ScreenErrorState(error: error.toString()));
    }
  }

  void _onPreviousPage(PreviousPageEvent event, emit) {
    emit(ScreenLoadingState());
    try {
      if (curIndex > 0) {
        curIndex -= 1;
      }
      emit(ScreenLoadedState());
    } catch (error) {
      emit(ScreenErrorState(error: error.toString()));
    }
  }

  Future<void> _downloadCv(DownloadCvEvent event, emit) async {
    emit(ScreenLoadingState());
    try {
      final service = DownloadPdfService();
      service.downloadPdfIsolate(
          "https://github.com/Mardonbekmelsov/my-cv/blob/main/Mardonbek%20Melsov%20resume.pdf");
      emit(ScreenLoadedState());
    } catch (error) {
      emit(ScreenErrorState(error: error.toString()));
    }
  }
}
