import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:step_tracker_demo/main.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ProgressDotIndicator extends StatelessWidget {
  final List? pageList;
  final int? currentIndex;

  const ProgressDotIndicator({super.key, this.pageList, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    debugPrint('getting page index is $currentIndex');
    return SizedBox(
      width: 100.w,
      height: 5.h,
      child: Row(
        children: [
          TimelineTile(
            endChild: Container(
              constraints: BoxConstraints(
                minWidth: 10.w,
                maxWidth: 30.w,
              ),
              child: const Align(
                  alignment: Alignment.center,
                  child: Center(child: Text('First page'))),
            ),
            beforeLineStyle: const LineStyle(
              thickness: 6,
            ),
            afterLineStyle: LineStyle(
                thickness: 6,
                color: pageList!.last >= 1 ? primaryColor : Colors.grey),
            indicatorStyle: IndicatorStyle(
              height: 10.w,
              width: 10.w,
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              indicator: Container(
                decoration: pageList!.last > 1
                    ? BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(color: Colors.green))
                    : BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                      ),
                child: Align(
                  alignment: Alignment.center,
                  child: pageList!.last > 1
                      ? Image(
                          height: 6.w,
                          width: 6.w,
                          color: Colors.green,
                          image: const AssetImage(
                            'assets/images/check.png',
                          ),
                        )
                      : Icon(
                          Icons.cabin,
                          color: Colors.white,
                          size: 20.sp,
                        ),
                ),
              ),
            ),
            alignment: TimelineAlign.center,
            axis: TimelineAxis.horizontal,
            isFirst: true,
          ),
          SizedBox(
            child: TimelineTile(
              endChild: Container(
                constraints: BoxConstraints(
                  minWidth: 10.w,
                  maxWidth: 30.w,
                ),
                child: const Align(
                    alignment: Alignment.center,
                    child: Center(child: Text('Second page'))),
              ),
              beforeLineStyle: LineStyle(
                  thickness: 1,
                  color: pageList!.last > 2 ? primaryColor : Colors.grey),
              afterLineStyle: LineStyle(
                  thickness: 1,
                  color: pageList!.last > 2 ? primaryColor : Colors.grey),
              lineXY: 0.1,
              indicatorStyle: IndicatorStyle(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                height: 10.w,
                width: 10.w,
                indicator: Container(
                  height: 20.w,
                  width: 20.w,
                  decoration: pageList!.last > 2
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.green))
                      : BoxDecoration(
                          color: pageList!.last > 2
                              ? primaryColor
                              : pageList!.last == 2
                                  ? primaryColor
                                  : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                  child: Align(
                    alignment: Alignment.center,
                    child: pageList!.last > 2
                        ? Image(
                            height: 6.w,
                            width: 6.w,
                            color: Colors.green,
                            image: const AssetImage(
                              'assets/images/check.png',
                            ),
                          )
                        : Icon(
                            Icons.location_city,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                  ),
                ),
              ),
              alignment: TimelineAlign.center,
              axis: TimelineAxis.horizontal,
            ),
          ),
          SizedBox(
            width: 20.w,
            child: TimelineTile(
              endChild: Container(
                constraints: BoxConstraints(
                  minWidth: 10.w,
                  maxWidth: 30.w,
                ),
                child: const Align(
                    alignment: Alignment.center,
                    child: Center(child: Text('Third page'))),
              ),
              beforeLineStyle: LineStyle(
                  thickness: 1,
                  color: pageList!.last > 3 ? primaryColor : Colors.grey),
              afterLineStyle: LineStyle(
                  thickness: 1,
                  color: pageList!.last > 3 ? primaryColor : Colors.grey),
              lineXY: 0.1,
              indicatorStyle: IndicatorStyle(
                height: 10.w,
                width: 10.w,
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                indicator: Container(
                  height: 20.w,
                  width: 20.w,
                  decoration: pageList!.last > 3
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.green))
                      : BoxDecoration(
                          color: pageList!.last > 3
                              ? primaryColor
                              : pageList!.last == 3
                                  ? primaryColor
                                  : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                  child: Align(
                    alignment: Alignment.center,
                    child: pageList!.last > 3
                        ? Image(
                            height: 6.w,
                            width: 6.w,
                            image: const AssetImage(
                              'assets/images/check.png',
                            ),
                          )
                        : Icon(
                            Icons.location_city,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                  ),
                ),
              ),
              alignment: TimelineAlign.center,
              axis: TimelineAxis.horizontal,
            ),
          ),
          SizedBox(
            child: TimelineTile(
              isLast: true,
              endChild: Container(
                constraints: BoxConstraints(
                  minWidth: 10.w,
                  maxWidth: 30.w,
                ),
                child: const Align(
                    alignment: Alignment.center,
                    child: Center(child: Text('Fifth page'))),
              ),
              beforeLineStyle: LineStyle(
                  thickness: 1,
                  color: pageList!.last > 4 ? primaryColor : Colors.grey),
              afterLineStyle: LineStyle(
                  thickness: 1,
                  color: pageList!.last > 4 ? primaryColor : Colors.grey),
              indicatorStyle: IndicatorStyle(
                height: 10.w,
                width: 10.w,
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                indicator: Container(
                  height: 20.w,
                  width: 20.w,
                  decoration: pageList!.last > 4
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.green))
                      : BoxDecoration(
                          color: pageList!.last > 4
                              ? primaryColor
                              : pageList!.last == 4
                                  ? primaryColor
                                  : Colors.grey,
                          shape: BoxShape.circle,
                        ),
                  child: Align(
                    alignment: Alignment.center,
                    child: pageList!.last > 4
                        ? Image(
                            height: 6.w,
                            width: 6.w,
                            color: Colors.green,
                            image: const AssetImage(
                              'assets/images/check.png',
                            ),
                          )
                        : Icon(
                            Icons.location_city,
                            color: Colors.white,
                            size: 20.sp,
                          ),
                  ),
                ),
              ),
              alignment: TimelineAlign.center,
              axis: TimelineAxis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
