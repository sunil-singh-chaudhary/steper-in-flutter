// Copyright 2020 J-P Nurmi <jpnurmi@gmail.com>
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:step_tracker_demo/homepage.dart';
import 'package:step_tracker_demo/pagviewcontroller.dart';
import 'package:step_tracker_demo/stepper_widget.dart';

Color primaryColor = const Color(0xFF0D47A1);
void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => PageViewIndexProvider(),
          ),
        ],
        // child: Sizer(
        //   builder: (context, orientation, deviceType) =>
        //       const MaterialApp(home: DottedStepper()),
        // ),
        child: Sizer(
          builder: (context, orientation, deviceType) =>
              MaterialApp(home: StepperApp()),
        ),
      ),
    );
