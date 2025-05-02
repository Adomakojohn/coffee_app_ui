import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Stack(
        children: [
          const Positioned(
            top: -240,
            left: 10,
            right: 10,
            child: Image(
              image: AssetImage('assets/images/lightmode_authbackground.png'),
            ),
          ),
          const Center(
            child: Text(
              'Welcome to Coffee Taste!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF131A2E),
              ),
            ),
          ),
          const Positioned(
            top: 110,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage('assets/images/profile_picture.png'),
                ),
                Icon(Icons.align_horizontal_right, size: 30),
              ],
            ),
          ),
          Positioned(
            top: 190,
            left: 25,
            right: 10,
            child: SearchBar(
              elevation: const WidgetStatePropertyAll(0),
              enabled: true,
              side: const WidgetStatePropertyAll(BorderSide(
                color: Colors.grey,
                width: 1,
              )),
              backgroundColor: WidgetStateProperty.all(
                Colors.white,
              ),
              hintText: 'Coffee shop, beer & wine...',
              leading: const ImageIcon(
                AssetImage(
                  'assets/icons/search_icon.png',
                ),
                // color: Colors.white,
                // size: 15,
              ),
              trailing: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 33),
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Color(0xFF55433C),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(
                          'assets/icons/search_ic.png',
                        ),
                        color: Colors.white,
                        // size: 15,
                      ),
                    ),
                  ),
                ),
                // IconButton(
                //   icon: const Icon(Icons.mic), // Suffix icon
                //   onPressed: () {
                //     // Handle mic search
                //   },
                // ),
              ],
              onChanged: (query) {
                // Handle live input
              },
              onSubmitted: (query) {
                // Handle final search
              },
            ),
          )
        ],
      ),
    );
  }
}
