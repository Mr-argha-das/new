import 'package:ahec/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;
  bool progress = false;
  String verificationIDReceived = "";
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade400,
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              )),
           child: progress ? const Center(
             child: CircularProgressIndicator(
               color: Colors.white,
               strokeWidth: 3,
             ),
           ) : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 38.0,
                            fontWeight: FontWeight.w800,
                          )),
                      Text("Enter to a beautiful world",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w300,
                          )),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          height: 90,
                          width: 160,
                          child: Image.asset("assets/images/AHEC.png"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25.0, left: 30, right: 30),
                        child: Form(
                            key: _formKey,
                            child: Container(
                            height: 66,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Color(0xFFe7edeb),
                              borderRadius: BorderRadius.circular(10),
                            ),
                              child: InternationalPhoneNumberInput(
                              onInputChanged: (PhoneNumber number) {
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value) {
                                print(value);
                              },
                              selectorConfig: const SelectorConfig(
                                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                              ),
                              ignoreBlank: false,
                              autoValidateMode: AutovalidateMode.disabled,
                              selectorTextStyle: const TextStyle(color: Colors.black),
                              textFieldController: phoneController,
                              formatInput: false,
                              keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
                              inputBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),

                              ),
                              validator: (value) {
                                if(value!.isEmpty || value == null){
                                  return 'Number Required';
                                }else{
                                  return null;
                                }
                              },
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 18.0, left: 29, right: 29, bottom: 10),
                        child: Visibility(
                          child: TextField(
                            controller: otpController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: const Color(0xFFe7edeb),
                              hintText: 'Enter Your OTP here',
                              prefixIcon: const Icon(
                                Icons.verified_user,
                                color: Colors.grey,
                              ),
                            ),
                            maxLength: 6,
                            keyboardType: TextInputType.number,
                          ),
                          visible: otpVisibility,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: ()  {
                            if(_formKey.currentState!.validate()){
                            setState(() {
                              progress = false;
                            });
                              if(otpVisibility){
                                verifyCode();
                              }else{
                                verifyNumber();
                              }
                            }
                          },
                          child: Container(
                            height: 55,
                            width: 300,
                            child: const Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                          child: Text(
                            "OR",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          )),
                      Container(
                        height: 100,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: (){

                              },
                              icon: const InkWell(
                                child: Icon(
                                  Icons.facebook_rounded,
                                  size: 65,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                             InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 32.0),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  child: Image.asset("assets/images/google_ing.png"),
                                ),
                              ),
                             ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }

   void verifyNumber(){
    auth.verifyPhoneNumber(
        phoneNumber: "+91" + phoneController.text,
        verificationCompleted: (PhoneAuthCredential credential){
          auth.signInWithCredential(credential).then((value) {
            print("You are Login");
          });
        },
        verificationFailed: (FirebaseAuthException exception){

        },
        codeSent: (String verificationID, int? resendToken){
          progress = false;
          otpVisibility = true;
          verificationIDReceived = verificationID;
          setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationID){

        }
    );
   }
  void verifyCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationIDReceived, smsCode: otpController.text);
    await auth.signInWithCredential(credential).then((value) {
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    });
    }
}

