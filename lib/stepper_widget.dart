import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:step_tracker_demo/firstscreen.dart';
import 'package:step_tracker_demo/pagviewcontroller.dart';
import 'package:step_tracker_demo/progresswidget.dart';
import 'package:step_tracker_demo/secondscree.dart';

class StepperApp extends StatefulWidget {
  const StepperApp({super.key});

  @override
  State<StepperApp> createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  late PageViewIndexProvider pageNotifier;
  late int pageindex;
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageNotifier = Provider.of<PageViewIndexProvider>(context, listen: false);
    pageindex = pageNotifier.pageViewindex ?? 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        home: Consumer<PageViewIndexProvider>(builder: (context, value, child) {
          return Scaffold(
            appBar: AppBar(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                    child: ProgressDotIndicator(
                      currentIndex: value.pageViewindex,
                      pageList: value.pageList,
                    ),
                  ),
                  Container(
                    height: 80.h,
                    color: Colors.green,
                    child: SizedBox(
                      height: 74.h,
                      width: 100.w,
                      child: PageView(
                        controller: pageController,
                        onPageChanged: (index) {
                          int newIndex = pageController.page!.round();

                          if (newIndex > currentIndex) {
                            //page right swap
                            pageNotifier.updatePageIndex(newIndex + 1);
                          } else {
                            //page left swap
                            pageNotifier.removeLastIndex();
                          }
                          currentIndex = newIndex;
                        },
                        children: const [
                          firstscreen(),
                          SecondScreen(),
                          firstscreen(),
                          SecondScreen(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
