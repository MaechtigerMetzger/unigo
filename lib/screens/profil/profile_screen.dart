import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 219, 237, 236),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 80),
                _buildUser("Max Mustermann"),
                SizedBox(height: 20),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 360,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  _buildCaption("Über Mich"),
                  SizedBox(height: 10),
                  Text("Hi ich bin Max, 23 Jahre alt."),
                  SizedBox(height: 15),
                  _buildCaption("Präferenzen"),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: _buildPreferences("Raucher"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: _buildPreferences("Musik"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: _buildPreferences("E-Auto"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: _buildPreferences("Tiere"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: 360,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  _buildCaption("User Bewertung"),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.bathtub_outlined,
                          size: 50,
                          color: Color.fromARGB(255, 104, 192, 185),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.bathtub_outlined,
                          size: 50,
                          color: Color.fromARGB(255, 104, 192, 185),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.bathtub_outlined,
                          size: 50,
                          color: Color.fromARGB(255, 104, 192, 185),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.bathtub_outlined,
                          size: 50,
                          color: Color.fromARGB(255, 104, 192, 185),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: 360,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  _buildCaption("Fahrzeuge"),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text("Mazda CX 5"),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Icon(
                          Icons.directions_car_outlined,
                          size: 50,
                          color: Color.fromARGB(255, 104, 192, 185),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    size: 50,
                    color: Color.fromARGB(255, 104, 192, 185),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildPreferences(String data) {
    return Container(
      height: 24,
      width: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 104, 192, 185),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(data)),
    );
  }

  Text _buildCaption(String data) {
    return Text(
      data,
      style: TextStyle(
        color: Colors.grey,
      ),
    );
  }

  Row _buildUser(String username) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.account_circle_rounded,
          size: 120,
          color: Color.fromARGB(255, 104, 192, 185),
        ),
        Text(
          username,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        )
      ],
    );
  }
}