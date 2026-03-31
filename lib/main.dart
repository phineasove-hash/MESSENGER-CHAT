import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 37, 42, 54),
        title: Text(
          "messenger",
          style: TextStyle(
            fontFamily: 'poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.white),
            onPressed: () {
              // Ajouter la logique de recherche ici
            },
          ),
          // Ajouter un bouton pour ajouter une nouvelle conversation
          IconButton(
            icon: Icon(Icons.public, color: Colors.white),
            onPressed: () {
              //Ajouter la logique d'ajout ici
            },
          ),
        ],
      ),

      //=======================
      // LISTE DE CONVERSATIONS
      //=======================
      body: SafeArea(
        child: Column(
          children: [
            //=============
            // BARRE DE RECHERCHE
            //=============
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.purple],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Ask Meta AI or search",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            //=======================
            // STORIES (EN HAUT DE LA LISTE DE CONVERSATIONS)
            //=======================
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // CREATE STORY
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.person, color: Colors.white),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.add,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Create story",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  storyItem("Salomon"),
                  storyItem("Chiki"),
                  storyItem("Reine"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ), // Espace entre les stories et la liste de conversations
            //=======================
            // LISTE DE CONVERSATIONS
            //=======================
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor:
                                Colors.blue, //Badge pour de nouveaux messages
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      "Salomon Oulou😊",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Wai caller aussi.  .16h00",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ConversationPage(name: "Salomon Oulou"),
                        ),
                      );
                    },
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: Text(
                      "Chiki La Legendre",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "You: 0705535483  .04h11",
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ConversationPage(name: "Chiki La Legendre"),
                        ),
                      );
                    },
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    title: Text(
                      "Reine Kouame😛",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "You: Alors toi comment tu vas ?  .19 Mar",
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ConversationPage(name: "Reine Kouame"),
                        ),
                      );
                    },
                  ),

                  ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor:
                                Colors.blue, //Badge pour de nouveaux messages
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      "Ange merite Kouassi🥹",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Oui je vais bien par la grace de Dieu et chez toi ? .18 Mar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ConversationPage(name: "Ange merite Kouassi"),
                        ),
                      );
                    },
                  ),

                  ListTile(
                    leading: Stack(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor:
                                Colors.blue, //Badge pour de nouveaux messages
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      "Kra Yves Charmant🙃",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "J'en suis ravie . 16 Mar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ConversationPage(name: "Kra Yves Charmant"),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      //==============
      // BOTTOM NAVIGATION BAR
      //==============
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(
          255,
          233,
          70,
          70,
        ), // Couleur de fond de la barre de navigation
        selectedItemColor: Colors.blue, // Couleur de l'icône sélectionnée
        unselectedItemColor: const Color.fromARGB(
          255,
          8,
          5,
          5,
        ), // Couleur de l'icône non sélectionnée
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Stories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }

  //=======================
  // WIDGET POUR LES STORIES
  //=======================
  Widget storyItem(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor:
                      Colors.green, //Badge pour les stories actives
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(name, style: TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}

//=======================
// PAGE DE CONVERSATION
//=======================
class ConversationPage extends StatefulWidget {
  final String name;

  ConversationPage({required this.name});

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  final TextEditingController _messageController = TextEditingController();
  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text(
          widget.name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length, //Nombre de message de la conversation
              itemBuilder: (context, index) {
                // Affiche chaque message de la conversation
                return ListTile(
                  title: Text(
                    messages[index],
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),

          //=======================
          //ZONE DE SAISIE DE MESSAGE
          //=======================
          Padding(
            padding: const EdgeInsets.all(
              8.0,
            ), //Espace autour de la zone de saisie
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller:
                        _messageController, // Contrôle pour récupérer le texte saisi
                    decoration: InputDecoration(
                      hintText: 'Écrivez votre message...',
                      filled:
                          true, // Remplit le champ de saisie avec une couleur de fond
                      fillColor: Colors
                          .grey[200], // Couleur de fond du champ de saisie
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ), // Bordure arrondie pour le champ de saisie
                        borderSide:
                            BorderSide.none, // Supprime la bordure par défaut
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.blue),
                  onPressed: () {
                    String message = _messageController.text;
                    if (message.isNotEmpty) {
                      setState(() {
                        messages.add(
                          message,
                        ); // Ajoute le message à la liste des messages
                        _messageController
                            .clear(); // Efface le champ de saisie après l'envoi du message
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
