import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final profileImage = Center(
                        child: Container(
                          padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 5.0),
                          child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: AssetImage(
                              'assets/profile_img.jpg'
                              ),
                          ),
                        ),
                      );
                        

  final generalFont = const TextStyle(
                        fontSize: 20.0,
                      );

  final attributeFont = TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      );

  final attributePadding = EdgeInsets.only(top: 5.0, bottom: 5.0);

  @override
  Widget build(BuildContext context) {

    Container profileInfoContainer(attribute, value) {
      return Container(
                      padding: attributePadding,
                      child: Row(
                        children: [
                          Container(
                            width: 130.0,
                            child: Text(
                              attribute,
                              style: attributeFont,
                            ),
                          ),
                          
                          Container(
                            child: Text(
                              value,
                              style: generalFont,
                            ),
                          ),                    
                        ]
                      ),
                    );
    }

    Container profileContactMenu(icon, label, color) {
      return  Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Column(
                  children: [
                    FlatButton(
                      textTheme: ButtonTextTheme.normal,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(icon),
                          Text(label),
                        ],
                      ),
                    ),
                  ],
                ),
              );
    }

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[
            Container(
              child: profileImage,
            ),

            Center(
              child: Container(
                padding: EdgeInsets.only(top: 15.0, left: 20.0),
                width: 370.0,
                child: Column(
                  children: [
                    profileInfoContainer('First Name:', 'William'),
                    profileInfoContainer('Last Name:', 'Odiomonafe'),
                    profileInfoContainer('Gender:', 'Male'),
                    profileInfoContainer('Age:', '20+'),
                    profileInfoContainer('Hobbies:', 'Yawning & Staring'),
                    profileInfoContainer('Relationship:', 'Single/Dating/Married'),
                    profileInfoContainer('Skills:', 'Tech & Music'),
                    profileInfoContainer('Fav. Food:', 'Pounded Yam & Egusi'),
                  ],
                ),
              ),
            ),

            Center(
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   profileContactMenu(Icons.call, ' Call', Colors.blue[400]),
                   profileContactMenu(Icons.message, ' SMS', Colors.green[400]),
                   profileContactMenu(Icons.mail, ' Email', Colors.red[400]),
                    
                  ]
                ),
              ),
            ),
          ],
        ),      
    );
  }
}
