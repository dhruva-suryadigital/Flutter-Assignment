//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'color.dart' as colors;

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

  List<Widget> pages = <Widget>[
    const Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('My cart',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter assignment'),
        ),
        body: Center(
          child: pages.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "search",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ],
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }

//   Center containerImage() {
//     return Center(
//       child: Container(
//         height: 100,
//         width: 100,
//         decoration: BoxDecoration(
//             image: const DecorationImage(
//               image: AssetImage('assets/images/abstract.jpg'),
// // image: NetworkImage(
// //     'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2864&q=80'),
//               fit: BoxFit.cover,
//             ),
//             color: Colors.red,
//             //shape: BoxShape.circle,
//             borderRadius: BorderRadius.circular(90)),
//       ),
//     );
//   }

//   Expanded _createContainer(int val, int shade) {
//     return Expanded(
//       child: Container(
//         decoration: BoxDecoration(
//             color: Colors.red[shade], borderRadius: BorderRadius.circular(10)),
//         margin: const EdgeInsets.all(5),
//         height: 100,
//         child: Center(
//           child: Text("Entry $val"),
//         ),
//       ),
//     );
//   }
}
