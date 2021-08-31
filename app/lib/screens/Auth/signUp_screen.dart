import 'package:app/Widget/Auth/signup/next-button.dart';
import 'package:app/Widget/Auth/signup/role-dropdown.dart';
import 'package:app/Widget/Auth/signup/sex-dropdown.dart';
import 'package:app/Widget/Auth/signup/signUpTextField.dart';
import 'package:app/screens/Auth/password-register-screen.dart';
import 'package:flutter/material.dart';

class SignUpPageScreen extends StatelessWidget {
  static const routeName = '/signup';
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController phoneController = new TextEditingController();
  final TextEditingController addressController = new TextEditingController();
  final TextEditingController cityController = new TextEditingController();
  final TextEditingController subCityController = new TextEditingController();
  final TextEditingController kebeleController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        backgroundColor: Theme.of(context).accentColor,
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: MediaQuery.of(context).size.height,
                // padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          // alignment: Alignment.topCenter,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.05,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular((30)),
                                topRight: Radius.circular((30))),
                            color:
                                Theme.of(context).primaryColor.withOpacity(0.1),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.02,
                                left: MediaQuery.of(context).size.width * 0.05),
                            child: Text(
                              "Register to Continue to Trust Broker!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          padding:
                              EdgeInsets.only(left: 0.5, right: 0.5, top: 25),
                          child: SingleChildScrollView(
                            child: Column(children: [
                              CustomTextField(
                                minLength: 0,
                                textFieldName: 'Full Name',
                                controller: nameController,
                                initialValue: '',
                                validator: null,
                                obsecureText: false,
                                isRequired: false,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextField(
                                minLength: 0,
                                textFieldName: 'Email',
                                controller: nameController,
                                initialValue: '',
                                validator: null,
                                obsecureText: false,
                                isRequired: false,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextField(
                                minLength: 0,
                                textFieldName: 'City',
                                controller: cityController,
                                initialValue: '',
                                validator: null,
                                obsecureText: false,
                                isRequired: false,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextField(
                                minLength: 0,
                                textFieldName: 'Sub City',
                                controller: subCityController,
                                initialValue: '',
                                validator: null,
                                obsecureText: false,
                                isRequired: false,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              CustomTextField(
                                minLength: 0,
                                textFieldName: 'Kebele',
                                controller: kebeleController,
                                initialValue: '',
                                validator: null,
                                obsecureText: false,
                                isRequired: false,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              SexDropDown(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              RoleDropDown()
                            ]),
                          ),
                        ),
                        Next(
                          onTapped: () {
                            if (_formKey.currentState!.validate()) {
                              print("Validated successfully");
                              Navigator.pushNamed(
                                  context, PasswordRegisterScreen.routeName);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ));
  }

  void validate() {
    final _formKey = GlobalKey<FormState>();
  }
}