import 'package:flutter/material.dart';
import 'package:pfe/djangoTest.dart';
import 'package:pfe/models/utilisateur.dart';

class Signalerprbl extends StatefulWidget {
  final Utilisateur utilisateur;

  Signalerprbl({super.key, required this.utilisateur});
  @override
  State<Signalerprbl> createState() => SignalerprblPage();
}

class SignalerprblPage extends State<Signalerprbl> {
  TextEditingController textEditingController = TextEditingController();
  GlobalKey<ScaffoldState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFDC003C),
        borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(100, 10),
            topRight: Radius.elliptical(100, 10)),
      ),
      padding: EdgeInsets.all(10),
      width: 1000,
      height: 600,
      child: Column(
        children: [
          Container(
            height: 20,
          ),
          Text(
            "Signaler un probleme",
<<<<<<< HEAD
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
=======
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
          ),
          Container(
            height: 10,
          ),
          Text(
<<<<<<< HEAD
            "Expliquez brièvement ce qui s'est passé ou ce qui ne fonctionne pas",
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey[50],
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
=======
            "Veuillez expliquer en details s'ils vous plait le probleme que vous avez renconre",
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey[350],
                fontWeight: FontWeight.bold),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
          ),
          Container(
            height: 30,
          ),
          TextFormField(
            controller: textEditingController,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            maxLines: 5,
            decoration: InputDecoration(
<<<<<<< HEAD
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Décrivez votre problème...",
                hintStyle: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.grey),
=======
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Signaler un probleme...",
                hintStyle: TextStyle(fontWeight: FontWeight.bold),
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 20),
                    borderRadius: BorderRadius.circular(10))),
          ),
          Container(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  textEditingController.text = "";
<<<<<<< HEAD
                  Navigator.pop(context);
                },
                child: Text(
                  "Annuler",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFd20000)),
                ),
                color: Colors.white,
                height: 50,
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFd20000), width: 1),
=======
                },
                child: Text(
                  "Annuler le signal",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                color: Color.fromARGB(255, 161, 150, 150),
                textColor: Colors.white,
                height: 50,
                shape: RoundedRectangleBorder(
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                    borderRadius: BorderRadius.circular(20)),
              ),
              MaterialButton(
                onPressed: () {
                  var data = {
                    "problem": textEditingController.text,
                    "id": widget.utilisateur.id
                  };
                  addDataDjango(data, urlSite, 'SignalerProbleme/');
                  Navigator.of(context).pop();
                },
                child: Text(
<<<<<<< HEAD
                  "Envoyer",
=======
                  "Envoyer le signal",
>>>>>>> cffc500e1df11e7d4740da311fc074fd1deabf10
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                color: Color(0xFFd20000),
                textColor: Colors.white,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
