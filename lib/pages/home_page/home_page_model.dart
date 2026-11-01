import '/components/work_card_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> works = [];
  void addToWorks(String item) => works.add(item);
  void removeFromWorks(String item) => works.remove(item);
  void removeAtIndexFromWorks(int index) => works.removeAt(index);
  void insertAtIndexInWorks(int index, String item) =>
      works.insert(index, item);
  void updateWorksAtIndex(int index, Function(String) updateFn) =>
      works[index] = updateFn(works[index]);

  ///  State fields for stateful widgets in this page.

  // Models for WorkCard.
  late FlutterFlowDynamicModels<WorkCardModel> workCardModels;

  @override
  void initState(BuildContext context) {
    workCardModels = FlutterFlowDynamicModels(() => WorkCardModel());
  }

  @override
  void dispose() {
    workCardModels.dispose();
  }
}
