import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import '../../routes.dart' as routes;

import '../../constants.dart' as constants;

class UserRegistration extends StatefulWidget {
  const UserRegistration({Key? key}) : super(key: key);

  @override
  State<UserRegistration> createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.kBackgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(constants.kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: constants.kPadding60,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                const SizedBox(
                  height: constants.kPadding60,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'First name missing';
                                } else {
                                  return null;
                                }
                              },
                              maxLines: 1,
                              decoration: InputDecoration(
                                hintText: 'First name',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      constants.kDefaultCircularBorderRadius),
                                ),
                              ),
                            )),
                            const SizedBox(
                              width: constants.kPadding10,
                            ),
                            Expanded(
                                child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Last name missing';
                                } else {
                                  return null;
                                }
                              },
                              maxLines: 1,
                              decoration: InputDecoration(
                                  hintText: 'Last name',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          constants
                                              .kDefaultCircularBorderRadius))),
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: constants.kDefaultSpaceHeight,
                        ),
                        TextFormField(
                          validator: (email) => EmailValidator.validate(email!)
                              ? null
                              : 'Please enter a valid email',
                          maxLines: 1,
                          autofillHints: const [AutofillHints.email],
                          decoration: InputDecoration(
                              hintText: 'Enter your email',
                              prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      constants.kDefaultCircularBorderRadius))),
                        ),
                        const SizedBox(
                          height: constants.kDefaultSpaceHeight,
                        ),
                        TextFormField(
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return 'Please enter your password';
                            } else {
                              return null;
                            }
                          },
                          maxLines: 1,
                          decoration: InputDecoration(
                              hintText: 'Enter your password',
                              prefixIcon: const Icon(Icons.lock),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      constants.kDefaultCircularBorderRadius))),
                        ),
                        const SizedBox(
                          height: constants.kPadding60,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.popAndPushNamed(
                                  context, routes.kLocationListRoute);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 15, 40, 15)),
                          child: const Text(
                            'Register',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: constants.kPadding60,
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
