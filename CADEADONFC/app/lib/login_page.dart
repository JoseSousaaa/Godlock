import 'package:flutter/material.dart';
import 'package:godlock_login/createaccount.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: duplicate_import
import 'createaccount.dart'; // Importando a página de criação de conta
import 'menu_page.dart'; // Certifique-se de que o menu_page.dart está importado

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late TextEditingController emailAddressTextController;
  late TextEditingController passwordTextController;
  late FocusNode emailAddressFocusNode;
  late FocusNode passwordFocusNode;
  bool passwordVisibility = false;
  bool rememberMe =
      false; // Variável para armazenar o estado do botão "Lembrar-me"
  bool _showErrorMessage = false;

  @override
  void initState() {
    super.initState();
    emailAddressTextController = TextEditingController();
    emailAddressFocusNode = FocusNode();
    passwordTextController = TextEditingController();
    passwordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    emailAddressTextController.dispose();
    emailAddressFocusNode.dispose();
    passwordTextController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF37597B), Color(0xFFABC7DE)],
              stops: [0, 1],
              begin: AlignmentDirectional(0.87, -1),
              end: AlignmentDirectional(-0.87, 1),
            ),
          ),
          alignment: const AlignmentDirectional(0, -1),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 32),
                  child: Container(
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: const AlignmentDirectional(0, 0),
                    child: Text(
                      'GODLOCK\n',
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 570,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Welcome Back',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.plusJakartaSans(
                                color: const Color(0xFF101213),
                                fontSize: 36,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 12, 0, 24),
                              child: Text(
                                'Fill out the information below in order to access your account.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF57636C),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 16),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: emailAddressTextController,
                                  focusNode: emailAddressFocusNode,
                                  autofocus: true,
                                  autofillHints: const [AutofillHints.email],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: GoogleFonts.plusJakartaSans(
                                      color: const Color(0xFF57636C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFF1F4F8),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF37597B),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E3E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E3E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF1F4F8),
                                  ),
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF101213),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your email';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 0, 0, 16),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: passwordTextController,
                                  focusNode: passwordFocusNode,
                                  autofocus: true,
                                  autofillHints: const [AutofillHints.password],
                                  obscureText: !passwordVisibility,
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: GoogleFonts.plusJakartaSans(
                                      color: const Color(0xFF57636C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFF1F4F8),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF37597B),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E3E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFFE0E3E7),
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF1F4F8),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => passwordVisibility =
                                            !passwordVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: const Color(0xFF57636C),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF101213),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your password';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: rememberMe,
                                  onChanged: (newValue) {
                                    setState(() {
                                      rememberMe = newValue ?? false;
                                    });
                                  },
                                ),
                                Text(
                                  'Lembrar-me',
                                  style: GoogleFonts.plusJakartaSans(
                                    color: const Color(0xFF57636C),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            if (_showErrorMessage)
                              const Padding(
                                padding: EdgeInsets.only(bottom: 16.0),
                                child: Text(
                                  'Please fill all fields',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            const SizedBox(height: 24),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _showErrorMessage =
                                      emailAddressTextController.text.isEmpty ||
                                          passwordTextController.text.isEmpty;
                                });

                                if (!_showErrorMessage) {
                                  // Perform login action
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MenuPage(),
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF37597B),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 32, vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'Login',
                                style: GoogleFonts.plusJakartaSans(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const CreateaccountWidget(),
                                  ),
                                );
                              },
                              child: Text(
                                'Create Account',
                                style: GoogleFonts.plusJakartaSans(
                                  color: const Color(0xFF37597B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Text(
                    'Use a social platform to continue',
                    style: GoogleFonts.plusJakartaSans(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Google sign-in logic
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.apple,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Apple sign-in logic
                        },
                      ),
                      IconButton(
                        icon: const FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Facebook sign-in logic
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}