import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'legalizacionpredios_model.dart';
export 'legalizacionpredios_model.dart';

class LegalizacionprediosWidget extends StatefulWidget {
  const LegalizacionprediosWidget({Key? key}) : super(key: key);

  @override
  _LegalizacionprediosWidgetState createState() =>
      _LegalizacionprediosWidgetState();
}

class _LegalizacionprediosWidgetState extends State<LegalizacionprediosWidget> {
  late LegalizacionprediosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LegalizacionprediosModel());

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
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'legalización de predios',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
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
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 16.0, 8.0, 8.0),
                child: Text(
                  'El programa de legalización y titulación de predios, que se inició en la administración de Carlos Caicedo, también fue continuado en el gobierno de Martínez logrando que miles de samarios pudieran tener la propiedad de sus viviendas. En estos cuatro años se legalizaron 80 barrios, se entregaron más de 6.000 títulos de propiedad a igual número de familias samarias y se dejó en proceso 4.000 títulos más.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://www.santamarta.gov.co/sites/default/files/legalizacion_de_barrios_4.jpg?fid=76',
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgQLCY3O8-9Vfoxh1SHkPmPxpv0lUXMyy1i1yojoucbY5t_Kgdt4zbuW1rGaKEvl0nvr4&usqp=CAU',
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
