import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pfe/djangoTest.dart';
import 'package:pfe/gestioncompte/infopersonnels.dart';
import 'package:pfe/gestioncompte/signalerProbleme.dart';
import 'package:pfe/models/utilisateur.dart';
// import 'package:pfe/Views/gestioncompte/signalerProbleme.dart';

class Profil extends StatefulWidget {
  @override
  State<Profil> createState() => ProfilPage();
}

class ProfilPage extends State<Profil> {
  var user;
  Utilisateur? utilisateur;
  currentUser() async {
    user = FirebaseAuth.instance.currentUser;
    print("==============email================");
    String email = user.email;
    print(email);
    var userData = await getOneDataDjango(urlSite, email, 'getUser/');
    utilisateur = Utilisateur.fromJson(userData);
    print(utilisateur!.id);
    print(utilisateur!.nom);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    currentUser();
  }

  bool switchvalue = false;
  GlobalKey<ScaffoldState> globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
      ),
      key: globalKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFDC003C),
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "AcherusFeral"),
        centerTitle: true,
        title: Text(
          "Mon profil",
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: [
            Card(
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "images/moi.jpg",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                        onTap: () {},
                        isThreeLine: false,
                        subtitle: Container(
                          margin: EdgeInsets.only(top: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                utilisateur != null
                                    ? utilisateur!.groupSanguin
                                    : "groupe sanguin",
                                style: TextStyle(fontSize: 16),
                              ),
                              Container(
                                  margin: EdgeInsets.only(top: 7),
                                  child: switchvalue
                                      ? Row(
                                          children: [
                                            Text("Apte "),
                                            Icon(
                                              Icons.circle,
                                              color: Colors.green,
                                              size: 16,
                                            )
                                          ],
                                        )
                                      : Row(
                                          children: [
                                            Text("InApte "),
                                            Icon(
                                              Icons.circle,
                                              color: Colors.red,
                                              size: 16,
                                            )
                                          ],
                                        )),
                            ],
                          ),
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        title: Text(
                          utilisateur != null
                              ? "${utilisateur!.nom}  ${utilisateur!.prenom} "
                              : "Nom et Prenom",
                          style: TextStyle(
                              fontFamily: "Cabin",
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
            Card(
              child: Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              Infoperso(utilisateur: utilisateur),
                        ));
                      },
                      title: Text(
                        "Informations personnels",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.person,
                        color: Color(0xFFDC003C),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pushNamed("annonces perso");
                      },
                      title: Text(
                        "gerer vos annonces",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.announcement,
                        color: Color(0xFFDC003C),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      trailing: Switch(
                        activeColor: Color(0xFFDC003C),
                        value: switchvalue,
                        onChanged: (value) {
                          switchvalue = value;
                          setState(() {});
                          print(value);
                        },
                      ),
                      title: Text(
                        "votre statu de don ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.health_and_safety_sharp,
                        color: Color(0xFFDC003C),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        globalKey.currentState!
                            .showBottomSheet((context) => Signalerprbl());
                      },
                      title: Text(
                        "Signaler un probleme",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(
                        Icons.warning_rounded,
                        color: Color(0xFFDC003C),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Expanded(
              child: Container(
                child: MaterialButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushNamed("main");
                  },
                  child: Text(
                    "Se Deconnecter",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  color: Color(0xFFDC003C),
                  textColor: Colors.white,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
