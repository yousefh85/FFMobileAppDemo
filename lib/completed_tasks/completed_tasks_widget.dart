import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletedTasksWidget extends StatefulWidget {
  const CompletedTasksWidget({Key? key}) : super(key: key);

  @override
  _CompletedTasksWidgetState createState() => _CompletedTasksWidgetState();
}

class _CompletedTasksWidgetState extends State<CompletedTasksWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add_rounded,
          color: FlutterFlowTheme.of(context).white,
          size: 32,
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Completed Tasks',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Outfit',
                color: FlutterFlowTheme.of(context).white,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/waves@2x.png',
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
