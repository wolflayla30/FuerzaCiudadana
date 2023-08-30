import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'patricia2_model.dart';
export 'patricia2_model.dart';

class Patricia2Widget extends StatefulWidget {
  const Patricia2Widget({Key? key}) : super(key: key);

  @override
  _Patricia2WidgetState createState() => _Patricia2WidgetState();
}

class _Patricia2WidgetState extends State<Patricia2Widget> {
  late Patricia2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Patricia2Model());

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
            'Patricia Caicedo',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                child: Text(
                  'Patricia Caicedo es administradora pública de la Escuela Superior de Administración Pública -ESAP-, especialista en análisis y gestión ambiental de la Universidad del Norte con estudios complementarios en urbanismo y desarrollo territorial, Planes de Ordenamiento Territorial, Pedagogía en función de la convivencia y Derecho Internacional Humanitario.\n\nFue gerente de la campaña en el Magdalena del Presidente de la República de Colombia, Gustavo Petro, liderando el Frente Amplio del Departamento en 2022. Fue candidata a la Cámara de Representantes por el Magdalena en 2017.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFCECECE),
                        fontSize: 18.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://codigoprensa.com/wp-content/uploads/2021/06/Patricia-Caicedo-2-scaled.jpg',
                    width: 354.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                child: Text(
                  'Patricia Caicedo es una líder animalista, ambientalista y feminista. Exconcejal de Santa Marta, sobresaliendo, además, como jefa del Frente Amplio para la campaña presidencial de Gustavo Petro en el Magdalena.\n',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 18.0,
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
