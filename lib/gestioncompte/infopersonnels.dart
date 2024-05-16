import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pfe/compenments/textformfieldA.dart';
import 'package:pfe/djangoTest.dart';
import 'package:pfe/models/utilisateur.dart';

class Infoperso extends StatefulWidget {
  final Utilisateur? utilisateur;

  const Infoperso({super.key, this.utilisateur});
  @override
  State<Infoperso> createState() => InfopersoPage();
}

class InfopersoPage extends State<Infoperso> {
  late TextEditingController nom;
  late TextEditingController prenom;
  late TextEditingController wilaya;
  late TextEditingController dairatext;
  late TextEditingController emailAdress;
  late TextEditingController groupesnguincontroller;
  late TextEditingController numtel;

  @override
  void initState() {
    nom = TextEditingController(text: widget.utilisateur!.nom);
    prenom = TextEditingController(text: widget.utilisateur!.prenom);
    wilaya = TextEditingController(text: widget.utilisateur!.willaya);
    dairatext = TextEditingController(text: widget.utilisateur!.daira);
    emailAdress = TextEditingController(text: widget.utilisateur!.email);
    numtel = TextEditingController(text: widget.utilisateur!.numtel.toString());
    groupesnguincontroller =
        TextEditingController(text: widget.utilisateur!.groupSanguin);

    super.initState();
  }

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(
                context); // Revenir en arrière lorsque la flèche est pressée
          },
        ),
        title: Text(
          "informations personnelles",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
=======
        title: Text(
          "informations personnels",
          style: TextStyle(fontWeight: FontWeight.bold),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
        ),
        backgroundColor: Color(0xFFDC003C),
      ),
      body: Container(
<<<<<<< HEAD
        padding: EdgeInsets.only(right: 10, left: 10, bottom: 10),
        child: ListView(
          children: [
            /*  Container(
              height: 30,
            ), */
            /*  Text(
=======
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 30,
            ),
            Text(
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
              "Consuler ou modifier vos informations ",
              textAlign: TextAlign.start,
              style: TextStyle(
                  // color: const Color.fromARGB(255, 224, 215, 215),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
<<<<<<< HEAD
            ), */
=======
            ),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
            Container(
              height: 40,
            ),
            Form(
                child: Column(
              children: [
                TextForm(
                    textEditingController: nom,
                    label: "Nom",
                    i: Icon(
                      Icons.person,
<<<<<<< HEAD
                      color: Color.fromARGB(255, 220, 0, 59),
=======
                      color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    )),
                Container(
                  height: 30,
                ),
                TextForm(
                    textEditingController: prenom,
                    label: "Prenom",
                    i: Icon(
                      Icons.person,
<<<<<<< HEAD
                      color: Color.fromARGB(255, 220, 0, 59),
=======
                      color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    )),
                Container(
                  height: 30,
                ),
                TextForm(
                    textEditingController: numtel,
                    label: "numero telephone",
                    i: Icon(
                      Icons.phone,
<<<<<<< HEAD
                      color: Color.fromARGB(255, 220, 0, 59),
=======
                      color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    )),
                Container(
                  height: 30,
                ),
                TextForm(
                    textEditingController: groupesnguincontroller,
                    label: "groupe sanguin",
                    i: Icon(
<<<<<<< HEAD
                      Icons.bloodtype_outlined,
                      color: Color.fromARGB(255, 220, 0, 59),
=======
                      Icons.bloodtype,
                      color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    )),
                Container(
                  height: 30,
                ),
                TextForm(
                    label: "Willaya",
                    textEditingController: wilaya,
                    i: Icon(
                      Icons.location_on,
<<<<<<< HEAD
                      color: Color.fromARGB(255, 220, 0, 59),
=======
                      color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    )),
                Container(
                  height: 30,
                ),
                TextForm(
                    label: "Daira",
                    textEditingController: dairatext,
                    i: Icon(
                      Icons.location_on,
<<<<<<< HEAD
                      color: Color.fromARGB(255, 220, 0, 59),
=======
                      color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    )),
                Container(
                  height: 30,
                ),
                TextFormField(
                  controller: emailAdress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
<<<<<<< HEAD
                      color: Color.fromARGB(255, 220, 0, 59),
=======
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
                      borderSide: BorderSide(width: 2.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.grey),
=======
                    fillColor: Colors.red,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.white),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    ),
                  ),
                ),
                Container(
                  height: 30,
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_red_eye,
<<<<<<< HEAD
                          color: Colors.grey,
                        )),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Color.fromARGB(255, 220, 0, 59),
=======
                          color: Colors.white,
                        )),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    ),
                    labelText: "Nouveau Mot de passe",
                    labelStyle: TextStyle(
                      fontSize: 16,
<<<<<<< HEAD
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 220, 0, 59),
=======
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    ),
                    contentPadding:
                        EdgeInsets.only(left: 30, top: 20, bottom: 20),
                    filled: true,
<<<<<<< HEAD
                    fillColor: Colors.grey[200],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.grey),
=======
                    fillColor: Colors.red,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.white),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    ),
                  ),
                ),
                Container(
                  height: 30,
                ),
                // TextFormField(
                //   decoration: InputDecoration(
                //     suffixIcon: IconButton(
                //         onPressed: () {},
                //         icon: Icon(
                //           Icons.remove_red_eye,
                //           color: Colors.white,
                //         )),
                //     prefixIcon: Icon(
                //       Icons.key,
                //       color: Colors.white,
                //     ),
                //     labelText: "Confirmer mot de passe",
                //     labelStyle: TextStyle(
                //       fontSize: 16,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white,
                //     ),
                //     contentPadding:
                //         EdgeInsets.only(left: 30, top: 20, bottom: 20),
                //     filled: true,
                //     fillColor: Colors.red,
                //     enabledBorder: OutlineInputBorder(
                //       borderSide: BorderSide(width: 2.0, color: Colors.white),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //     focusedBorder: OutlineInputBorder(
                //       borderSide: BorderSide(width: 2.0, color: Colors.white),
                //     ),
                //   ),
                // ),
              ],
            )),
            MaterialButton(
              onPressed: () async {
                Utilisateur user = Utilisateur(
                    nom: nom.text,
                    prenom: prenom.text,
                    numtel: int.parse(numtel.text),
                    groupSanguin: groupesnguincontroller.text,
                    willaya: wilaya.text,
                    daira: dairatext.text,
                    email: emailAdress.text);
                print(user.toJson());

                await updateDataDjango(user.toJson(), urlSite, "updaterUser/",
                    widget.utilisateur!.id.toString());

                if (password.text.isNotEmpty) {
                  var user = FirebaseAuth.instance.currentUser;
                  print(user);
                  await user?.updatePassword(password.text);
                }
                Navigator.of(context).pushReplacementNamed("profil");
              },
              child: Text(
<<<<<<< HEAD
                "Enregister",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              color: Color.fromARGB(255, 220, 0, 59),
=======
                "Appliquer changement",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              color: Color(0xFFd20000),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
              textColor: Colors.white,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
