import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../principal/principal_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroWidget extends StatefulWidget {
  const RegistroWidget({Key key}) : super(key: key);

  @override
  _RegistroWidgetState createState() => _RegistroWidgetState();
}

class _RegistroWidgetState extends State<RegistroWidget> {
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  bool passwordVisibility;
  TextEditingController textController4;
  TextEditingController textController5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    passwordVisibility = false;
    textController4 = TextEditingController();
    textController5 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF07BDC1),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PrincipalWidget(),
              ),
            );
          },
        ),
        title: Text(
          'Registro',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 15),
                    child: TextFormField(
                      controller: textController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Nombre de Usuario',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1FAAFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1FAAFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFF03C6F2),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                    child: TextFormField(
                      controller: textController2,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Correo electronico',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1FAAFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1FAAFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFF03C6F2),
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: Colors.white,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                    child: TextFormField(
                      controller: textController3,
                      obscureText: !passwordVisibility,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1FAAFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1FAAFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFF03C6F2),
                        prefixIcon: Icon(
                          Icons.security_outlined,
                          color: Colors.white,
                        ),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => passwordVisibility = !passwordVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            passwordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                    child: TextFormField(
                      controller: textController4,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Servicio',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1FAAFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF1FAAFF),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Color(0xFF03C6F2),
                        prefixIcon: Icon(
                          Icons.wifi_sharp,
                          color: Colors.white,
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                    ),
                  ),
                  TextFormField(
                    controller: textController5,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Telefono',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF1FAAFF),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF1FAAFF),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      filled: true,
                      fillColor: Color(0xFF03C6F2),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PrincipalWidget(),
                            ),
                          );
                        },
                        text: 'Cancelar',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFFD61646),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(70, 0, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Registrado'),
                                content: Text(
                                    '¡Tu registro se ha grabado con exito!'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NavBarPage(initialPage: 'barramenu'),
                            ),
                          );
                        },
                        text: 'Registrar',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFF1674BD),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
