import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),  
    );
  }
}

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 47, 125),
        title: Text(
        "messenger",
        style: TextStyle(
          fontFamily: 'poppins',
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
        actions: [
          IconButton(
            icon: Icon( Icons.search, color: Colors.white),
            onPressed: () {
              // Ajouter la logique de recherche ici
            },  
          ),
          // Ajouter un bouton pour ajouter une nouvelle conversation
          IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.white),
            onPressed: () {
              //Ajouter la logique d'ajout ici
            },
          ),
        ],
      ),

      //=======================
      // LISTE DE CONVERSATIONS
      //=======================
      body: ListView(
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
                    backgroundColor: Colors.blue, //Badge pour de nouveaux messages
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
                MaterialPageRoute(builder: (context) => ConversationPage(name: "Salomon Oulou")),
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
                MaterialPageRoute(builder: (context) => ConversationPage(name: "Chiki La Legendre"),),
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
                MaterialPageRoute(builder: (context) => ConversationPage(name: "Reine Kouame"),),
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
                    backgroundColor: Colors.blue, //Badge pour de nouveaux messages
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
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConversationPage(name: "Ange merite Kouassi"),),
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
                    backgroundColor: Colors.blue, //Badge pour de nouveaux messages
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
                 builder: (context) => ConversationPage(name: "Kra Yves Charmant"),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blue,  // Couleur de l'icône sélectionnée
        unselectedItemColor: Colors.blue, // Couleur de l'icône non sélectionnée
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Stories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
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
              itemCount: messages.length,  //Nombre de message de la conversation
              itemBuilder: (context, index) {  // Affiche chaque message de la conversation
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
            padding: const EdgeInsets.all(8.0),  //Espace autour de la zone de saisie
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                        controller: _messageController, // Contrôle pour récupérer le texte saisi
                    decoration: InputDecoration(
                      hintText: 'Écrivez votre message...',
                      filled: true, // Remplit le champ de saisie avec une couleur de fond
                      fillColor: Colors.grey[200], // Couleur de fond du champ de saisie
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),  // Bordure arrondie pour le champ de saisie
                        borderSide: BorderSide.none,  // Supprime la bordure par défaut

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
                        messages.add(message);  // Ajoute le message à la liste des messages
                        _messageController.clear();  // Efface le champ de saisie après l'envoi du message
                      });
                    }
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
