import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool club = false;
  bool timer = false;
  bool telefono = false;
  bool celular = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                height: 170,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.account_circle_rounded, size: 48),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("Flutter McFlutter",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23)),
                              Text("Experienced App Developer")
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("123 Main Street"),
                          Text("(415) 555-0198"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                              ..showSnackBar(SnackBar(
                                content:
                                    Text("Únete a un club con otras personas"),
                              ));
                            club = !club;
                            setState(() {});
                          },
                          icon: Icon(Icons.accessibility,
                              color: club ? Colors.indigo : Colors.black),
                        ),
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                              ..showSnackBar(SnackBar(
                                content: Text(
                                    "Cuenta regresiva para el evento: 31 días"),
                              ));
                            timer = !timer;
                            setState(() {});
                          },
                          icon: Icon(Icons.timer,
                              color: timer ? Colors.indigo : Colors.black),
                        ),
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                              ..showSnackBar(SnackBar(
                                content: Text("Llama al número 4155550198"),
                              ));
                            telefono = !telefono;
                            setState(() {});
                          },
                          icon: Icon(Icons.phone_android,
                              color: telefono ? Colors.indigo : Colors.black),
                        ),
                        IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                              ..showSnackBar(SnackBar(
                                content: Text("Llama al celular 3317865113"),
                              ));
                            celular = !celular;
                            setState(() {});
                          },
                          icon: Icon(Icons.phone_iphone,
                              color: celular ? Colors.indigo : Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
