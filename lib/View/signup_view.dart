import'package:flutter/material.dart';
import 'package:mvvm/Res/components/round_button.dart';
import 'package:mvvm/Utlis/routes/routes_name.dart';
import 'package:mvvm/Utlis/utlis.dart';
import 'package:mvvm/ViewModel/auth_view_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    _obscurePassword.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    final height = MediaQuery.of(context).size.height * 1;
    return  Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.signUp),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration:  InputDecoration(
                hintText:AppLocalizations.of(context)?.emailPrompt,
                labelText: AppLocalizations.of(context)?.email,
                icon: Icon(Icons.alternate_email),
             
              ),
              onFieldSubmitted: (value){
              Utlis.fieldFocusChange(context, emailFocusNode, passwordFocusNode);
              },
            ),
                        ValueListenableBuilder(
                          valueListenable: _obscurePassword,
                          builder: (context, value, child) {
                            return  TextFormField(
                                        controller: _passwordController,
                                        obscureText: _obscurePassword.value,
                                        obscuringCharacter: '*',
                                        focusNode: passwordFocusNode,
                                        decoration:  InputDecoration(
                                          hintText: AppLocalizations.of(context)?.passwordPrompt,
                                          labelText: AppLocalizations.of(context)?.password,
                                          icon: const Icon(Icons.lock_open_rounded),
                                          suffixIcon: InkWell(
                                            onTap: () {
                                              _obscurePassword.value =! _obscurePassword.value;
                                            },
                                            child:  Icon(
                                              _obscurePassword.value ? Icons.visibility_off_outlined : Icons.visibility )
                                              ),
                                          
                                        
                                        ),
                                      );
                          },
                        ),
                        SizedBox(height: height * .085,),
                        RoundButton(
                          title: AppLocalizations.of(context)!.signUp,
                          loading: authViewModel.signUpLoading,
                          onPress: (){
                            if(_emailController.text.isEmpty){
                              Utlis.flushBarErrorMessage('Please enter email', context);

                            }else if (_passwordController.text.isEmpty){
                               Utlis.flushBarErrorMessage('Please enter password', context);

                            }else if(_passwordController.text.length < 6){
                               Utlis.flushBarErrorMessage('Please enter 6 digit password', context);

                            }else{
                              Map data ={
                                "email": _emailController.text.toString(),
                                "password" : _passwordController.text.toString(),
                              };
                              authViewModel.signUpApi(data,context);
                             
                                print('Api hit');
                              
                            }

                          },
                        ),
                        SizedBox(height: height * .02,),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.login);
                          },
                          child: Text(AppLocalizations.of(context)!.alreadyHaveAnAccountLogin),
                          ),
          ],
        ),
      )
    );
  }
}