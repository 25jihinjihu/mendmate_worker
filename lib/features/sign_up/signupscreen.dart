import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/features/sign_in/login_screen.dart';
import 'package:mendmate_worker/util/value_validator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../custombottomnavbar.dart';
import 'signup_bloc/signup_bloc.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
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
      create: (context) => SignupBloc(),
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state is SignUpSuccessState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => Custombottomnavbar()),
              (route) => false,
            );
          } else if (state is SignUpFailureState) {
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
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Profile Icon
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Color(0xff3D56A2),
                          child: SvgPicture.asset(
                              height: 40,
                              'assets/user (1).svg',
                              color: Colors.white),
                        ),
                        SizedBox(height: 20),

                        // Title
                        Text(
                          "Hello Worker !",
                          style: GoogleFonts.workSans(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Signup For Better Experience",
                          style: GoogleFonts.workSans(
                              color: Color(0xff888F95),
                              fontWeight: FontWeight.w500),
                        ),

                        SizedBox(height: 60),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 53,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F7F9),
                              borderRadius:
                                  BorderRadiusDirectional.circular(8)),
                          child: TextFormField(
                            validator: notEmptyValidator,
                            controller: _nameController,
                            decoration: InputDecoration(
                                labelStyle: GoogleFonts.workSans(
                                    color: Color(0xff9AA0A5),
                                    fontWeight: FontWeight.w500),
                                labelText: '   Full Name',
                                enabledBorder: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff9DAAD0), width: 2)),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: SvgPicture.asset(
                                      color: Color(0xff6C757D),
                                      'assets/user (1).svg'),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                    maxHeight: 20, maxWidth: 40)),
                          ),
                        ),
                        SizedBox(height: 20),

                        // Email TextFormField
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 53,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F7F9),
                              borderRadius:
                                  BorderRadiusDirectional.circular(8)),
                          child: TextFormField(
                            validator: emailValidator,
                            controller: _emailController,
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

                        // Password TextFormField
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
                            decoration: InputDecoration(
                                labelStyle: GoogleFonts.workSans(
                                    color: Color(0xff9AA0A5),
                                    fontWeight: FontWeight.w500),
                                labelText: '   Password',
                                enabledBorder: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff9DAAD0), width: 2)),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: SvgPicture.asset(
                                      color: Color(0xff6C757D),
                                      'assets/eye.svg'),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                    maxHeight: 20, maxWidth: 40)),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: MediaQuery.of(context).size.width - 50,
                          height: 53,
                          decoration: BoxDecoration(
                              color: Color(0xffF6F7F9),
                              borderRadius:
                                  BorderRadiusDirectional.circular(8)),
                          child: TextFormField(
                            validator: phoneNumberValidator,
                            controller: _phoneController,
                            decoration: InputDecoration(
                                labelStyle: GoogleFonts.workSans(
                                    color: Color(0xff9AA0A5),
                                    fontWeight: FontWeight.w500),
                                labelText: '   Contact Number',
                                enabledBorder: InputBorder.none,
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff9DAAD0), width: 2)),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: SvgPicture.asset(
                                      color: Color(0xff6C757D),
                                      'assets/phone-call.svg'),
                                ),
                                suffixIconConstraints: BoxConstraints(
                                    maxHeight: 20, maxWidth: 40)),
                          ),
                        ),
                        SizedBox(height: 40),

                        ElevatedButton(
                          onPressed: state is SignUpLoadingState
                              ? null
                              : () {
                                  if (_formKey.currentState!.validate()) {
                                    BlocProvider.of<SignupBloc>(context).add(
                                      SignUpUserEvent(
                                        email: _emailController.text.trim(),
                                        password:
                                            _passwordController.text.trim(),
                                        userDetails: {
                                          'name': _nameController.text.trim(),
                                          'email': _emailController.text.trim(),
                                          'phone': _phoneController.text.trim(),
                                        },
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
                          child: state is SignUpLoadingState
                              ? CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white),
                                )
                              : const Text(
                                  'Sign Up',
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
                              "Already have an account? ",
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
                                        LoginScreen(),
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
                              child: Text("Sign In",
                                  style: GoogleFonts.workSans(
                                      color: Color(0xff3D56A2),
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
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
