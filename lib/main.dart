import 'package:flutter/material.dart';

import 'Layout/Single_child_layout_widgets/container_learn.dart';        
import 'Layout/Single_child_layout_widgets/padding_learn.dart';
import 'Layout/Single_child_layout_widgets/center_learn.dart';
import 'Layout/Single_child_layout_widgets/align_learn.dart';
import 'Layout/Single_child_layout_widgets/fittedBoxLearn.dart';
import 'Layout/Single_child_layout_widgets/aspectRatioLearn.dart';
import 'Layout/Single_child_layout_widgets/constrainedBoxLearn.dart';
import 'Layout/Single_child_layout_widgets/baselineLearn.dart';
import 'Layout/Single_child_layout_widgets/OffstageLearn.dart';
import 'Layout/Multi_child_layout_widgets/rowLearn.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter go pro',
      home: RowLearn(),
    );
  }
}
 