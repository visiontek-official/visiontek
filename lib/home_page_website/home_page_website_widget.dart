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
import 'package:lottie/lottie.dart';

class HomePageWebsiteWidget extends StatefulWidget {
  const HomePageWebsiteWidget({Key? key}) : super(key: key);

  @override
  _HomePageWebsiteWidgetState createState() => _HomePageWebsiteWidgetState();
}

class _HomePageWebsiteWidgetState extends State<HomePageWebsiteWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'lottieAnimationOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.bounceOut,
          delay: 0.ms,
          duration: 910.ms,
          begin: -1,
          end: 1,
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
                alignment: AlignmentDirectional(0, -0.2),
                child: Lottie.asset(
                  'assets/lottie_animations/visiontek-preloader.json',
                  width: 150,
                  height: 130,
                  fit: BoxFit.cover,
                  reverse: true,
                  animate: false,
                ).animateOnPageLoad(
                    animationsMap['lottieAnimationOnPageLoadAnimation']!),
              ),
              FlutterFlowWebView(
                url: 'https://www.visiontek.co.za/app',
                bypass: false,
                height: MediaQuery.of(context).size.height * 1,
                verticalScroll: false,
                horizontalScroll: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
