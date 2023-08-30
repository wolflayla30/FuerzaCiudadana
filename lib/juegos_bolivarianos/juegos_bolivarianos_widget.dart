import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'juegos_bolivarianos_model.dart';
export 'juegos_bolivarianos_model.dart';

class JuegosBolivarianosWidget extends StatefulWidget {
  const JuegosBolivarianosWidget({Key? key}) : super(key: key);

  @override
  _JuegosBolivarianosWidgetState createState() =>
      _JuegosBolivarianosWidgetState();
}

class _JuegosBolivarianosWidgetState extends State<JuegosBolivarianosWidget> {
  late JuegosBolivarianosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JuegosBolivarianosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE55F14),
        appBar: AppBar(
          backgroundColor: Color(0xFFE55F14),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Escenarios para Bolivarianos',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('juegosBolivarianos2');
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'data:image/jpeg;base64,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',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://semillerosdeportivos.com/wp-content/uploads/2017/10/Escenarios-Juegos-Bolivarianos-2017-7.jpg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://www.opinioncaribe.com/wp-content/uploads/2017/11/IMG-20171105-WA0015.jpg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('juegosBolivarianos2');
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 34.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
