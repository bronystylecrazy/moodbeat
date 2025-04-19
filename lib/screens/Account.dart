import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String userName = 'Happy'; // Initial user name

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Color(0xFF9188F7),
            size: 32,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "Account",
          style: TextStyle(
            color: Color(0xFF9188F7),
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontFamily: "Montserrat",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0x919188F7),
                child: Icon(
                  Icons.face,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            _buildProfileRow('Name', userName),
            _buildProfileRow('E-mail', 'Verified'),
            _buildProfileRow('Password', '********'),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Implement log out functionality here
                },
                child: Text('Log out',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  foregroundColor:
                      const Color.fromARGB(255, 0, 0, 0), // Black text
                  backgroundColor: const Color.fromARGB(
                      255, 255, 255, 255), // White background
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.black), // Black border
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontFamily: 'Montserrat', fontSize: 16),
          ),
          SizedBox(width: 10), // Reduced space between label and value
          Expanded(
            child: Align(
              alignment: Alignment.centerRight, // Aligning value to the right
              child: Text(
                value,
                style: TextStyle(
                  color: Color(0xFF9188F7),
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
