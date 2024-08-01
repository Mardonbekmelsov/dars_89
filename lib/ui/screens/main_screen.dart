import 'package:dars_89/blocs/screen_state.dart';
import 'package:dars_89/blocs/screens_bloc.dart';
import 'package:dars_89/blocs/screens_event.dart';
import 'package:dars_89/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreensBloc, ScreenState>(
      // bloc: context.read<ScreensBloc>()..add(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.screenshot,
              ),
            ),
            actions: [
              state is ScreenLoadingState
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : IconButton(
                      onPressed: () async {
                        context.read<ScreensBloc>().add(DownloadCvEvent());
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(content: Text("Cv Saved Successfully")));
                      },
                      icon: Icon(
                        Icons.picture_as_pdf,
                      ),
                    ),
            ],
          ),
          body: screens[curIndex],
          bottomNavigationBar: Container(
            padding: EdgeInsets.all(10),
            color: Colors.lightBlue.shade900,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: curIndex == 0 ? Colors.white : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: curIndex == 0
                        ? Colors.lightBlue.shade900
                        : Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: curIndex == 1 ? Colors.white : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.bolt,
                    size: 50,
                    color: curIndex == 1
                        ? Colors.lightBlue.shade900
                        : Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: curIndex == 2 ? Colors.white : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.school,
                    size: 50,
                    color: curIndex == 2
                        ? Colors.lightBlue.shade900
                        : Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: curIndex == 3 ? Colors.white : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 50,
                    color: curIndex == 3
                        ? Colors.lightBlue.shade900
                        : Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: curIndex == 4 ? Colors.white : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.settings,
                    size: 50,
                    color: curIndex == 4
                        ? Colors.lightBlue.shade900
                        : Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: curIndex == 5 ? Colors.white : Colors.transparent,
                  ),
                  child: Icon(
                    Icons.chat_outlined,
                    size: 50,
                    color: curIndex == 5
                        ? Colors.lightBlue.shade900
                        : Colors.white,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: curIndex == 0
                    ? null
                    : () {
                        context.read<ScreensBloc>().add(PreviousPageEvent());
                      },
                icon: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: curIndex == 0 ? Colors.grey : Colors.pink.shade200,
                  ),
                  child: Icon(
                    Icons.arrow_back,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade200,
                  ),
                  child: Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: curIndex == screens.length - 1
                    ? null
                    : () {
                        context.read<ScreensBloc>().add(NextPageEvent());
                      },
                icon: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: curIndex == screens.length - 1
                        ? Colors.grey
                        : Colors.pink.shade200,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
