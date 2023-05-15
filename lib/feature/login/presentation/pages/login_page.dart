import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project_data_on/core/domain/failures/failure.codegen.dart';
import 'package:mini_project_data_on/core/presentation/mixins/failure_message_handler.dart';
import 'package:mini_project_data_on/core/presentation/widget/button.dart';
import 'package:mini_project_data_on/core/presentation/widget/formfield.dart';
import 'package:mini_project_data_on/feature/login/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:mini_project_data_on/feature/login/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:mini_project_data_on/feature/login/presentation/blocs/auth_bloc/auth_state.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/pages/university_page.dart';

class LoginPage extends StatelessWidget with FailureMessageHandler {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                  key: _formKey,
                  child: Builder(
                    builder: (context) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Email',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomTextFormField(
                            controller: emailController,
                            hintext: 'Enter Your Email',
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return 'Please enter your email address';
                              } else if (!EmailValidator.validate(value)) {
                                return 'Please enter a valid email';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Password',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomTextFormField(
                            controller: passwordController,
                            hintext: 'Enter Your Password',
                            isPasswordField: true,
                            validator: (value) {
                              if (value!.trim().isEmpty) {
                                return 'Please enter your password';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 48,
                          ),
                          BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {
                              if (state.status == Status.success) {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const UniversityPage();
                                }));
                              } else if (state.status == Status.error) {
                                return handleFailure(
                                    context,
                                    const Failure.localFailure(
                                        message: "wrong email and password"));
                              }
                            },
                            builder: (context, state) {
                              if (state.status == Status.loading) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    color: Color(0xFF0DB665),
                                  ),
                                );
                              } else {
                                return CustomButton(
                                  'Login',
                                  color: const Color(0xFFEF5B0C),
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      context.read<AuthBloc>().add(
                                          AuthEvent.login(emailController.text,
                                              passwordController.text));
                                    }
                                  },
                                );
                              }
                            },
                          ),
                        ],
                      );
                    },
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
