import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mercadopublico_model.dart';
export 'mercadopublico_model.dart';

class MercadopublicoWidget extends StatefulWidget {
  const MercadopublicoWidget({Key? key}) : super(key: key);

  @override
  _MercadopublicoWidgetState createState() => _MercadopublicoWidgetState();
}

class _MercadopublicoWidgetState extends State<MercadopublicoWidget> {
  late MercadopublicoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MercadopublicoModel());

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
            'Mercado Público',
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Text(
                  'El proceso de recuperación integral del mercado público de Santa Marta, que se inició en 2015 con el exalcalde Carlos Caicedo, quien a través de una acción popular en contra de la sociedad Concesionaria Obras y Proyectos de Caribe S.A., logró recuperar tres predios que le pertenecían al mercado, fue continuado por Martínez.\nDespués que Caicedo recuperó el edificio del mercado público, que estaba convertido en un ‘elefante blanco’, y reubicó 429 vendedores estacionarios que se encontraban ocupando el espacio público en las calles 12 y 13 y las carreras 9 y 10, Martínez contrató la construcción de la galería comercial, donde fueron reubicados 466 vendedores.\n\n\n',
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
                  'https://www.elheraldo.co/sites/default/files/styles/width_860/public/articulo/2016/12/02/santamartamercado.jpg?itok=GJX0nBbQ',
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
