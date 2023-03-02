import 'package:flutter/material.dart';
import 'color.dart' as colors;
import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 10,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              CustomContainer(
                text: 'Entry 1',
                shade: 50,
              ),
              CustomContainer(
                text: 'Entry 2',
                shade: 100,
              ),
              CustomContainer(
                text: 'Entry 3',
                shade: 200,
              ),
              CustomContainer(
                text: 'Entry 4',
                shade: 300,
              ),
              CustomContainer(
                text: 'Entry 5',
                shade: 400,
              ),
              CustomContainer(
                text: 'Entry 6',
                shade: 500,
              ),
              CustomContainer(
                text: 'Entry 7',
                shade: 600,
              ),
              CustomContainer(
                text: 'Entry 8',
                shade: 700,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Button"),
          ),
        ),
      ],
    ),
    const Text(
      'Search Page',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    const Text(
      'My cart',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/abstract.jpg'),
              fit: BoxFit.cover,
            ),
            color: colors.primaryColor(100),
            shape:BoxShape.circle,
          ),
        ),
        const Text('Your account'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter assignment'),
        ),
        body: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: "cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "account",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }
}
