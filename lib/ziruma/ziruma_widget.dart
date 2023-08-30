import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ziruma_model.dart';
export 'ziruma_model.dart';

class ZirumaWidget extends StatefulWidget {
  const ZirumaWidget({Key? key}) : super(key: key);

  @override
  _ZirumaWidgetState createState() => _ZirumaWidgetState();
}

class _ZirumaWidgetState extends State<ZirumaWidget> {
  late ZirumaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ZirumaModel());

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
            'Sendero peatonal Ziruma',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Readex Pro',
                  fontWeight: FontWeight.w900,
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
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 16.0, 0.0),
                child: Text(
                  'Esta obra fue adjudicada en agosto de 2016 a la Unión Temporal Ziruma 2016 y se inauguró en agosto de 2017 por Martínez. La inversión inicial fue de 7.103 millones de pesos y en mayo de 2017 le hicieron una adición de 605 millones.\n\nEl sendero peatonal y deportivo del Ziruma fue construido para brindarle seguridad y un espacio biosaludable a las personas que antes trotaban o caminaban por el cerro Ziruma, en la vía que comunica al centro de Santa Marta con El Rodadero, poniendo en riesgo sus vidas.\n\nLa primera etapa mide de 1,6 kilómetros de longitud y consta de siete estaciones, bautizadas con nombres de animales: La Guacamaya, La Iguana, La Colirroja, El Tucán, El Cangrejo, La Ardilla y el puente El Pajarero.\n\n',
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
                  'https://www.elheraldo.co/sites/default/files/articulo/2020/10/08/sendero-magdalena.jpg',
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
