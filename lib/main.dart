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
    Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 10,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: colors.primaryColor(100),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  child: const Center(
                    child: Text("Entry 1"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: colors.primaryColor(200),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  child: const Center(
                    child: Text("Entry 2"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: colors.primaryColor(300),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  child: const Center(
                    child: Text("Entry 3"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: colors.primaryColor(400),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  child: const Center(
                    child: Text("Entry 4"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: colors.primaryColor(500),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  child: const Center(
                    child: Text("Entry 5"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: colors.primaryColor(600),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  child: const Center(
                    child: Text("Entry 6"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: colors.primaryColor(700),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(5),
                  height: 100,
                  child: const Center(
                    child: Text("Entry 7"),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Button"),
              //style: ButtonStyle(shape: ),
            ),
          )
        ]),
    const Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    const Text('My cart',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/abstract.jpg'),
// image: NetworkImage(
//     'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2864&q=80'),
                fit: BoxFit.cover,
              ),
              color: colors.primaryColor(900),
              //shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(90)),
        ),
        const Text('Your account')
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
