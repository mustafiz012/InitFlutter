import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../constants.dart' as constants;
import '../../routes.dart' as routes;

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
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
                    'Sign In',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  const SizedBox(
                    height: constants.kPadding60,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) => EmailValidator.validate(value!)
                              ? null
                              : "Please enter a valid email",
                          maxLines: 1,
                          autofillHints: const [AutofillHints.email],
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            prefixIcon: const Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  constants.kDefaultCircularBorderRadius),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: constants.kDefaultSpaceHeight,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            } else {
                              return null;
                            }
                          },
                          maxLines: 1,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            hintText: 'Enter your password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  constants.kDefaultCircularBorderRadius),
                            ),
                          ),
                        ),
                        CheckboxListTile(
                          title: const Text("Remember me"),
                          contentPadding: EdgeInsets.zero,
                          value: rememberValue,
                          activeColor: Theme.of(context).colorScheme.primary,
                          onChanged: (newValue) {
                            setState(() {
                              rememberValue = newValue!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,
                        ),
                        const SizedBox(
                          height: constants.kDefaultSpaceHeight,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.popAndPushNamed(
                                  context, routes.kLocationListRoute);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                          ),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: constants.kDefaultSpaceHeight,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Not registered yet?'),
                            TextButton(
                                onPressed: () {
                                  Navigator.popAndPushNamed(
                                      context, routes.kUserRegistrationRoute);
                                },
                                child: const Text('Create an account')),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
