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

class HomePageWesiteSupportWidget extends StatefulWidget {
  const HomePageWesiteSupportWidget({Key? key}) : super(key: key);

  @override
  _HomePageWesiteSupportWidgetState createState() =>
      _HomePageWesiteSupportWidgetState();
}

class _HomePageWesiteSupportWidgetState
    extends State<HomePageWesiteSupportWidget> with TickerProviderStateMixin {
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1510.ms,
          begin: 0,
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
        child: Stack(
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(150, 250, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.25,
                    maxHeight: MediaQuery.of(context).size.height * 0.1,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/VisionTEK_Logo_2021_-_Small_-_transparent-andoid-app-icon.png',
                      ).image,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
            FlutterFlowWebView(
              url: 'https://visiontek.tawk.help/',
              bypass: false,
              height: MediaQuery.of(context).size.height * 1,
              verticalScroll: false,
              horizontalScroll: false,
            ),
          ],
        ),
      ),
    );
  }
}
