import 'package:flutter/material.dart';

class GestionAnnonce extends StatefulWidget {
  const GestionAnnonce({super.key});

  @override
  State<GestionAnnonce> createState() => GestionAnnoncePage();
}

class GestionAnnoncePage extends State<GestionAnnonce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gestion des annonces"),
        backgroundColor: Colors.red,
      ),
    );
  }
}
