import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sunbook/widget/button_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController? _emailTextController;
  TextEditingController? _passwordTextController;
  late bool _passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _passwordVisibility = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 15),
              child: Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFE0E0E0),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: TextFormField(
                    controller: _emailTextController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.getFont(
                        'Open Sans',
                        color: const Color(0x7F455A64),
                        fontWeight: FontWeight.normal,
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                    ),
                    style: GoogleFonts.getFont(
                      'Open Sans',
                      color: const Color(0xFF455A64),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4, 0, 4, 20),
            child: Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: TextFormField(
                  controller: _passwordTextController,
                  obscureText: !_passwordVisibility,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.getFont(
                      'Open Sans',
                      color: const Color(0x7F455A64),
                      fontWeight: FontWeight.normal,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => _passwordVisibility = !_passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        size: 22,
                      ),
                    ),
                  ),
                  style: GoogleFonts.getFont(
                    'Open Sans',
                    color: const Color(0xFF455A64),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 28),
            child: ButtonController(
              color: Colors.black,
              fixedSize: const Size(300, 50),
              events: () {},
              child: const Text('Sign in with email'),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
            child: InkWell(
              onTap: () async {},
              child: const Text(
                'Create Account',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 15),
            child: ButtonController(
              color: Colors.white,
              fixedSize: const Size(200, 44),
              events: () {},
              child: Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Continue as Guest',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
            child: ButtonController(
              color: Colors.white,
              fixedSize: const Size(200, 44),
              events: () {},
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.amber,
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Sign in with Google',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
            child: ButtonController(
              color: Colors.white,
              fixedSize: const Size(200, 44),
              events: () {},
              child: Row(
                children: [
                  const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Color(0xFF4B39EF),
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Login with Facebook',
                    style: GoogleFonts.getFont(
                      'Roboto',
                      color: const Color(0xFF4B39EF),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
