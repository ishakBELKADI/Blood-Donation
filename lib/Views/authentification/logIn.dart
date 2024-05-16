// ignore_for_file: unused_local_variable, prefer_const_constructors, use_build_context_synchronously

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pfe/compenments/textformfieldA.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => LogInPage();
}

class LogInPage extends State<LogIn> {
  Future signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      return;
    }

    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
<<<<<<< HEAD
    Navigator.of(context).pushReplacementNamed("homepage");
=======
    Navigator.of(context).pushNamed("profil");
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
  }

  bool obscuretext = true;
  GlobalKey<FormState> formstate = GlobalKey();

  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
<<<<<<< HEAD
        color: Colors.white, //Color.fromARGB(255, 182, 175, 175)
=======
        color: Color.fromARGB(
            255, 182, 175, 175), //Color.fromARGB(255, 182, 175, 175)
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
        child: ListView(
          children: [
            Container(
              height: 20,
            ),
            Text(
              "Se connecter",
              textAlign: TextAlign.start,
              style: TextStyle(
<<<<<<< HEAD
                  color: Color.fromARGB(255, 220, 0, 59),
=======
                  color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Text(
<<<<<<< HEAD
              "Connectez-vous pour accéder à votre compte de don de sang.",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
=======
              "Se connecter pour continuer",
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: const Color.fromARGB(255, 224, 215, 215),
                  fontSize: 20,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                  fontWeight: FontWeight.bold),
            ),
            Container(
              height: 5,
              color: Colors.white,
            ),
            Container(
<<<<<<< HEAD
              height: 50,
=======
              height: 60,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
            ),
            Icon(
              Icons.bloodtype_rounded,
              color: Color(0xFFDC003C),
              size: 150,
            ),
            Container(
              height: 60,
            ),
            Column(
              children: [
                Form(
                    key: formstate,
                    child: Column(
                      children: [
                        TextFormField(
<<<<<<< HEAD
                          onTap: () => {print("helllooooooo maya")},
=======
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                          controller: emailAddress,
                          validator: (value) {
                            if (value == "") {
                              return "le champ vide !";
                            }
                            if (!value!.contains("@") || !value.contains(".")) {
                              return "l'email forme n'est pas valide";
                            }
                          },
                          decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            prefixIcon: Icon(
<<<<<<< HEAD
                              Icons.mail_outline,
                              color: Color.fromARGB(255, 220, 0, 59),
=======
                              Icons.mail,
                              color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
<<<<<<< HEAD
                              color: Color.fromARGB(255, 220, 0, 59),
=======
                              color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                            ),
                            contentPadding:
                                EdgeInsets.only(left: 30, top: 20, bottom: 20),
                            filled: true,
<<<<<<< HEAD
                            fillColor: Colors.grey[200],
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(20),
=======
                            fillColor: Color(0xFFDC003C),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                        ),
                        TextFormField(
                          controller: password,
                          validator: (value) {
                            if (value == "") {
                              return "le champ vide !";
                            }
                          },
                          obscureText: obscuretext,
                          decoration: InputDecoration(
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.white),
<<<<<<< HEAD
                              borderRadius: BorderRadius.circular(20),
=======
                              borderRadius: BorderRadius.circular(16),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  obscuretext = !obscuretext;
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
<<<<<<< HEAD
                                  color: Colors.grey,
=======
                                  color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                                )),
                            counter: InkWell(
                              onTap: () async {
                                if (emailAddress.text == '') {
                                  AwesomeDialog(
                                    context: context,
                                    dialogType: DialogType.warning,
                                    animType: AnimType.rightSlide,
                                    title: 'Mot de passe oublié !',
                                    desc:
                                        'Veulliez entrez votre adresse mail pour recupérer le mot de passe',
                                    btnCancelOnPress: () {},
                                    descTextStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    btnOkOnPress: () {},
                                  )..show();
                                } else {
                                  try {
                                    await FirebaseAuth.instance
                                        .sendPasswordResetEmail(
                                            email: emailAddress.text);
                                    await FirebaseAuth.instance
                                        .setLanguageCode("fr");
                                    AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.success,
                                      animType: AnimType.rightSlide,
                                      title: 'Email envoyé !',
                                      desc:
                                          'Nous avons envoyé un email pour recupérer votre mot de passe',
                                      btnCancelOnPress: () {},
                                      descTextStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      btnOkOnPress: () {},
                                    )..show();
                                  } catch (e) {
                                    print(
                                        "===================================");
                                    print(e);
                                    AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.error,
                                      animType: AnimType.rightSlide,
                                      title: "L'Email n'existe pas !",
                                      desc: 'Veilliez creez un compte ',
                                      btnCancelOnPress: () {},
                                      descTextStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      btnOkOnPress: () {},
                                    )..show();
                                  }
                                }
                              },
                              child: Textapp(
<<<<<<< HEAD
                                  contenue: "Mot de passe oublié ?  ",
=======
                                  contenue: "Mot de passe oublié?",
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                                  fontzsize: 16),
                            ),
                            prefixIcon: Icon(
                              Icons.key,
<<<<<<< HEAD
                              color: Color.fromARGB(255, 220, 0, 59),
=======
                              color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                            ),
                            labelText: "Mot de passe",
                            labelStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
<<<<<<< HEAD
                              color: Color.fromARGB(255, 220, 0, 59),
=======
                              color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                            ),
                            contentPadding:
                                EdgeInsets.only(left: 30, top: 20, bottom: 20),
                            filled: true,
<<<<<<< HEAD
                            fillColor: Colors.grey[200],
=======
                            fillColor: Color(0xFFDC003C),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.white),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2.0, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
<<<<<<< HEAD
                          height: 30,
=======
                          height: 50,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                        ),
                      ],
                    )),
              ],
            ),
            MaterialButton(
              onPressed: () async {
                if (formstate.currentState!.validate()) {
                  // print(emailAddress.text);
                  // print(password.text);
                  try {
                    final credential = await FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: emailAddress.text, password: password.text);
<<<<<<< HEAD
                    Navigator.of(context).pushReplacementNamed("homepage");
=======
                    Navigator.of(context).pushNamed("profil");
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                  } on FirebaseAuthException catch (e) {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Erreur',
                      desc:
                          'utilisateur n\'existe pas ! ou mot de passe incorrect',
                      btnCancelOnPress: () {},
                      descTextStyle: TextStyle(fontWeight: FontWeight.bold),
                      btnOkOnPress: () {},
                    )..show();
                    if (e.code == 'user-not-found') {
                      print("user not found");
                    } else if (e.code == 'wrong-password') {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.rightSlide,
                        title: 'Erreur',
                        desc: 'mot de passe incorrect !',
                        btnCancelOnPress: () {},
                        descTextStyle: TextStyle(fontWeight: FontWeight.bold),
                        btnOkOnPress: () {},
                      )..show();
                    }
                  }
                }
              },
              child: Text(
                "Se connecter",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              color: Color(0xFFDC003C),
              textColor: Colors.white,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            Container(
              height: 20,
            ),
            MaterialButton(
<<<<<<< HEAD
              color: Colors.white,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Color(0xFFDC003C), width: 1)),
=======
              color: Color.fromARGB(255, 173, 171, 171),
              textColor: Colors.white,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
              onPressed: () async {
                signInWithGoogle();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
<<<<<<< HEAD
                  Image.asset(
                    "images/google.png",
                    width: 25,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Continuer avec google",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
=======
                  Text(
                    "Se connecter avec google",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    "images/google.png",
                    width: 40,
                  )
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                ],
              ),
            ),
            Container(
<<<<<<< HEAD
              height: 20,
=======
              height: 40,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("signup");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
<<<<<<< HEAD
                    "Vous n'êtes pas inscrits ? ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " inscrivez vous. ",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 220, 0, 59),
                    ),
=======
                    "Vous etes pas inscris? ",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "inscriez vous ",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
