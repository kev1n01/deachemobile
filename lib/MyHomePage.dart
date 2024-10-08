import 'package:deache/message.dart';
import 'package:deache/pages/login.dart';
import 'package:deache/pages/login2.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [
    Message(text: 'Bienvenido! ¿En qué le puedo ayudar?', isUser: false),
    Message(
        text: 'Necesito requisitos para la solicitud de [nombre]',
        isUser: true),
    Message(
        text: 'Para ello necesitas lo siguiente: \n - a \n - b', isUser: false),
    Message(text: 'Muchas gracias!', isUser: true),
    Message(
        text: 'Me alegra ayudarle!, no dude en seguir preguntado',
        isUser: false),
    Message(text: 'Muchas gracias!', isUser: true),
    Message(
        text: 'Me alegra ayudarle!, no dude en seguir preguntado',
        isUser: false),
    Message(text: 'Muchas gracias!', isUser: true),
    Message(
        text: 'Me alegra ayudarle!, no dude en seguir preguntado',
        isUser: false),
    Message(text: 'Muchas gracias!', isUser: true),
    Message(
        text: 'Me alegra ayudarle!, no dude en seguir preguntado',
        isUser: false),
    Message(text: 'Muchas gracias!', isUser: true),
    Message(
        text: 'Me alegra ayudarle!, no dude en seguir preguntado',
        isUser: false),
    Message(text: 'Muchas gracias!', isUser: true),
    Message(
        text: 'Me alegra ayudarle!, no dude en seguir preguntado',
        isUser: false),
    Message(text: 'Muchas gracias!', isUser: true),
    Message(
        text: 'Me alegra ayudarle!, no dude en seguir preguntado',
        isUser: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 20,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Chat',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'images/sound.png',
                    color: const Color.fromARGB(255, 77, 77, 77),
                  ),
                ),
                Image.asset(
                  'images/dots.png',
                  color: const Color.fromARGB(255, 77, 77, 77),
                ),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //chat box
          Expanded(
            child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return ListTile(
                      tileColor: Colors.white,
                      title: Align(
                        alignment: message.isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: message.isUser
                                  ? Colors.green[400]
                                  : Colors.grey[300],
                              borderRadius: message.isUser
                                  ? const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    )
                                  : const BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                    )),
                          child: Text(
                            message.text,
                            style: TextStyle(
                                color: message.isUser
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 13),
                          ),
                        ),
                      ));
                }),
          ),

          //user input
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 2))
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle:
                              TextStyle(color: Colors.grey[400], fontSize: 14),
                          hintText: 'Ingrese su consulta aquí',
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20)),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: GestureDetector(
                            child: Image.asset(
                              'images/micro.png',
                              color: const Color.fromARGB(255, 77, 77, 77),
                            ),
                            onTap: () {},
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[400],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            child: Image.asset(
                              'images/send.png',
                              color: Colors.white,
                            ),
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 18,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green[400],
        currentIndex: 0,
        onTap: (value) {
          switch (value) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chats',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ajustes'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Perfil'),
        ],
      ),
    );
  }
}
