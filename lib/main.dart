import 'package:flutter/material.dart';
import 'data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: pokeAppBar("Pokemon Type Selector"),
      body: CustomGridView(),
    );
  }
}

AppBar pokeAppBar(String title) {
  return AppBar(
    centerTitle: false,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
  );
}

class CustomGridView extends StatefulWidget {
  const CustomGridView({super.key});

  @override
  State<CustomGridView> createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 18,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: ((context, index) {
        return Container(
          child: IconButton(
            onPressed: () {},
            icon: Column(
              children: [
                Expanded(
                  child: Image(
                      image:
                          AssetImage(Data().typeIcons.values.elementAt(index))),
                ),
                SizedBox(height: 5),
                Text(Data().typeIcons.keys.elementAt(index)),
              ],
            ),
          ),
        );
      }),
    );
  }
}
