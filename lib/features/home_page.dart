import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isUkuran = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Animation"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: AnimatedContainer(
              width: isUkuran ? 400 : 200,
              height: isUkuran ? 400 : 200,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://picsum.photos/seed/picsum/200/300"),
                      fit: BoxFit.cover)),
              duration: const Duration(milliseconds: 300),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (isUkuran == false) {
                      isUkuran = true;
                    } else if (isUkuran == true) {
                      isUkuran = false;
                    }
                  });
                },
              ),
            ),
          ),
        ));
  }
}
