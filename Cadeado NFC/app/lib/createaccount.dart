import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateaccountWidget extends StatefulWidget {
  const CreateaccountWidget({super.key});

  @override
  State<CreateaccountWidget> createState() => _CreateaccountWidgetState();
}

class _CreateaccountWidgetState extends State<CreateaccountWidget> {
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _passwordController1 = TextEditingController();
  final _passwordController2 = TextEditingController();

  bool _passwordVisibility1 = false;
  bool _passwordVisibility2 = false;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _fullNameController.dispose();
    _passwordController1.dispose();
    _passwordController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: 100,
                height: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF4B39EF), Color(0xFFEE8B60)],
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
                        padding: const EdgeInsets.fromLTRB(0, 70, 0, 32),
                        child: Container(
                          width: 200,
                          height: 100,
                          alignment: const AlignmentDirectional(0, 0),
                          child: Text(
                            'GODLOCK',
                            style: GoogleFonts.plusJakartaSans(
                              color: Color.fromARGB(255, 253, 253, 253),
                              fontSize: 36,
                              fontWeight: FontWeight.w800,
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
                          child: Padding(
                            padding: const EdgeInsets.all(32),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Get Started',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.plusJakartaSans(
                                      color: const Color(0xFF101213),
                                      fontSize: 36,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 12, 0, 24),
                                    child: Text(
                                      'Let\'s get started by filling out the form below.',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.plusJakartaSans(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: TextFormField(
                                      controller: _emailController,
                                      autofocus: true,
                                      autofillHints: const [
                                        AutofillHints.email
                                      ],
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
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFF4B39EF),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFFE0E3E7),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFFE0E3E7),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: TextFormField(
                                      controller: _fullNameController,
                                      autofocus: true,
                                      autofillHints: const [AutofillHints.name],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Full Name',
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
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFF4B39EF),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFFE0E3E7),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFFE0E3E7),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        fillColor: const Color(0xFFF1F4F8),
                                      ),
                                      style: GoogleFonts.plusJakartaSans(
                                        color: const Color(0xFF101213),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      keyboardType: TextInputType.name,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your name';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: TextFormField(
                                      controller: _passwordController1,
                                      autofillHints: const [
                                        AutofillHints.password
                                      ],
                                      obscureText: !_passwordVisibility1,
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
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFF4B39EF),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        fillColor: const Color(0xFFF1F4F8),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(() =>
                                              _passwordVisibility1 =
                                                  !_passwordVisibility1),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _passwordVisibility1
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
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    child: TextFormField(
                                      controller: _passwordController2,
                                      autofillHints: const [
                                        AutofillHints.password
                                      ],
                                      obscureText: !_passwordVisibility2,
                                      decoration: InputDecoration(
                                        labelText: 'Confirm Password',
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
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFF4B39EF),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Color(0xFFFF5963),
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        fillColor: const Color(0xFFF1F4F8),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(() =>
                                              _passwordVisibility2 =
                                                  !_passwordVisibility2),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            _passwordVisibility2
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
                                        if (value == null ||
                                            value !=
                                                _passwordController1.text ||
                                            value.isEmpty) {
                                          return 'Passwords do not match';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0, 5),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState?.validate() ??
                                            false) {
                                          print('Button pressed ...');
                                        }
                                      },
                                      child: const Text('Create Account'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromARGB(255, 55, 77, 239),
                                        foregroundColor:
                                            Color.fromARGB(255, 243, 243, 245),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 12),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
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
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.google,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 20,
                              ),
                              onPressed: () {
                                // Add your logic for Google Sign Up here
                              },
                            ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.apple,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 20,
                              ),
                              onPressed: () {
                                // Add your logic for Apple Sign Up here
                              },
                            ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.facebookF,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 20,
                              ),
                              onPressed: () {
                                // Add your logic for Facebook Sign Up here
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Login',
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xFF4B39EF),
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
