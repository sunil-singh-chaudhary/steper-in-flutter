import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:step_tracker_demo/firstscreen.dart';
import 'package:step_tracker_demo/pagviewcontroller.dart';
import 'package:step_tracker_demo/secondscree.dart';

class DottedStepper extends StatefulWidget {
  const DottedStepper({super.key});

  @override
  State<DottedStepper> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<DottedStepper> {
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
    return Scaffold(
        appBar: AppBar(title: const Text('second way')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.white60,
                height: 10.h,
                width: 100.w,
                child: EasyStepper(
                    enableStepTapping: false,
                    activeStep: currentIndex,
                    stepShape: StepShape.circle,
                    stepBorderRadius: 10,
                    borderThickness: 1.w,
                    padding: EdgeInsets.zero,
                    stepRadius: 20,
                    finishedStepBorderColor: Colors.green,
                    finishedStepBackgroundColor: Colors.white,
                    activeStepIconColor: Colors.blue,
                    showLoadingAnimation: false,
                    activeStepBorderType: BorderType.normal,
                    defaultStepBorderType: BorderType.normal,
                    unreachedStepBorderColor: Colors.white,
                    lineStyle: const LineStyle(
                        activeLineColor: Colors.blue,
                        defaultLineColor: Colors.grey,
                        finishedLineColor: Colors.red),
                    steps: [
                      EasyStep(
                        customStep: currentIndex == 0
                            ? Container(
                                height: 10.w,
                                width: 10.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: Icon(
                                  Icons.abc,
                                  color: currentIndex == 0
                                      ? Colors.white
                                      : Colors.green,
                                ),
                              )
                            : currentIndex > 0
                                ? SizedBox(
                                    height: 10.w,
                                    width: 10.w,
                                    child:
                                        Icon(Icons.done, color: Colors.green))
                                : Container(
                                    height: 10.w,
                                    width: 10.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                    child: const Icon(Icons.abc),
                                  ),
                        customTitle: const Text(
                          'Dash 1',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      EasyStep(
                        customStep: currentIndex == 1
                            ? Container(
                                height: 10.w,
                                width: 10.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: Icon(
                                  Icons.abc,
                                  color: currentIndex == 1
                                      ? Colors.white
                                      : Colors.green,
                                ),
                              )
                            : currentIndex > 1
                                ? SizedBox(
                                    height: 10.w,
                                    width: 10.w,
                                    child:
                                        Icon(Icons.done, color: Colors.green))
                                : Container(
                                    height: 10.w,
                                    width: 10.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                    child: const Icon(Icons.abc),
                                  ),
                        customTitle: const Text(
                          'Dash 2',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      EasyStep(
                        customStep: currentIndex == 2
                            ? Container(
                                height: 10.w,
                                width: 10.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                                child: Icon(
                                  Icons.abc,
                                  color: currentIndex == 2
                                      ? Colors.white
                                      : Colors.green,
                                ),
                              )
                            : currentIndex > 2
                                ? SizedBox(
                                    height: 10.w,
                                    width: 10.w,
                                    child:
                                        Icon(Icons.done, color: Colors.green))
                                : Container(
                                    height: 10.w,
                                    width: 10.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                    child: const Icon(Icons.abc),
                                  ),
                        customTitle: const Text(
                          'Dash 3',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      EasyStep(
                        customStep: currentIndex == 3
                            ? Container(
                                height: 10.w,
                                width: 10.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue,
                                    border: Border.all(color: Colors.white)),
                                child: Icon(
                                  Icons.abc,
                                  color: currentIndex == 3
                                      ? Colors.white
                                      : Colors.green,
                                ),
                              )
                            : currentIndex > 3
                                ? SizedBox(
                                    height: 10.w,
                                    width: 10.w,
                                    child: const Icon(Icons.done,
                                        color: Colors.green))
                                : Container(
                                    height: 10.w,
                                    width: 10.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                    child: const Icon(Icons.abc),
                                  ),
                        customTitle: const Text(
                          'Dash 4',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                    onStepReached: (index) => {
                          debugPrint('step change index $index'),
                          setState(() {
                            currentIndex = index;
                          })
                        }),
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
                      setState(() {
                        currentIndex = index;
                      });
                      debugPrint('swipe ne windex is $newIndex and $index');
                      if (newIndex > currentIndex) {
                        //page right swap
                        pageNotifier.updatePageIndex(newIndex);
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
              ),
            ],
          ),
        ));
  }
}
