import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWebsiteWidget extends StatefulWidget {
  const HomePageWebsiteWidget({Key? key}) : super(key: key);

  @override
  _HomePageWebsiteWidgetState createState() => _HomePageWebsiteWidgetState();
}

class _HomePageWebsiteWidgetState extends State<HomePageWebsiteWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'webViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.elasticOut,
          delay: 300.ms,
          duration: 900.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 300.ms,
          duration: 900.ms,
          begin: Offset(71, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.asset(
                  'assets/images/Android-Loader-Navy.gif',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              FlutterFlowWebView(
                url: 'https://www.visiontek.co.za/app',
                bypass: false,
                height: MediaQuery.of(context).size.height * 1,
                verticalScroll: false,
                horizontalScroll: false,
              ).animateOnPageLoad(animationsMap['webViewOnPageLoadAnimation']!),
            ],
          ),
        ),
      ),
    );
  }
}
