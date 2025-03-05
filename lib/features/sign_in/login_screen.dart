import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/features/sign_up/signupscreen.dart';
import 'package:mendmate_worker/util/value_validator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../custombottomnavbar.dart';
import 'signin_bloc/signin_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    Future.delayed(
        const Duration(
          milliseconds: 100,
        ), () {
      User? currentUser = Supabase.instance.client.auth.currentUser;
      if (currentUser != null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Custombottomnavbar(),
          ),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninBloc(),
      child: BlocConsumer<SigninBloc, SigninState>(
        listener: (context, state) {
          if (state is SigninSuccessState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Custombottomnavbar()),
              (route) => false,
            );
          } else if (state is SigninFailureState) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Failed'),
                content: Text(state.message),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Ok'),
                  ),
                ],
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hello Worker",
                          style: GoogleFonts.workSans(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Welcome Back, You Have Been Missed For Long Time",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.workSans(
                              fontSize: 17,
                              color: Color(0xff7E868D),
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 90),

                        // Email TextField
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 53,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F7F9),
                              borderRadius:
                                  BorderRadiusDirectional.circular(8)),
                          child: TextFormField(
                            controller: _emailController,
                            validator: emailValidator,
                            decoration: InputDecoration(
                                labelStyle: GoogleFonts.workSans(
                                    color: Color(0xff9AA0A5),
                                    fontWeight: FontWeight.w500),
                                labelText: '   Email Address',
                                enabledBorder: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff9DAAD0), width: 2)),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: SvgPicture.asset(
                                      color: Color(0xff6C757D),
                                      'assets/envelope.svg'),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                    maxHeight: 20, maxWidth: 40)),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Password TextField
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 53,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F7F9),
                              borderRadius:
                                  BorderRadiusDirectional.circular(8)),
                          child: TextFormField(
                            validator: passwordValidator,
                            controller: _passwordController,
                            obscureText: _isPasswordVisible,
                            decoration: InputDecoration(
                                labelStyle: GoogleFonts.workSans(
                                    color: Color(0xff9AA0A5),
                                    fontWeight: FontWeight.w500),
                                labelText: '   Password',
                                enabledBorder: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff9DAAD0), width: 2)),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                ),
                                suffixIconConstraints: BoxConstraints(
                                    maxHeight: 20, maxWidth: 40)),
                          ),
                        ),
                        SizedBox(height: 10),

                        // Remember Me & Forgot Password

                        SizedBox(height: 20),

                        // Login Button
                        ElevatedButton(
                          onPressed: state is SigninLoadingState
                              ? null
                              : () {
                                  if (_formKey.currentState!.validate()) {
                                    BlocProvider.of<SigninBloc>(context).add(
                                      SigninEvent(
                                        email: _emailController.text.trim(),
                                        password:
                                            _passwordController.text.trim(),
                                      ),
                                    );
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                                MediaQuery.of(context).size.width - 50, 45),
                            backgroundColor: Color(0xff3D56A2),
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 100),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: state is SigninLoadingState
                              ? CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
                                )
                              : const Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                        SizedBox(height: 20),

                        // Sign Up Option
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account? ",
                              style: GoogleFonts.workSans(
                                  color: Color(0xff6C757D),
                                  fontWeight: FontWeight.w500),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration:
                                        Duration(milliseconds: 5),
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        Signupscreen(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                  (route) => false,
                                );
                              },
                              child: Text("Sign Up",
                                  style: GoogleFonts.workSans(
                                      color: Color(0xff3D56A2),
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
