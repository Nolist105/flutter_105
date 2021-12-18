import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nolist App"),
      ),
      body: ListView(
        children:[
          cover(),
          myprofile(),
          firstname(),
          nickname(),
          birthday(),
          mymusic(),
          study(),
          end(),
        ] 

      
      )
    );
  }

  SizedBox cover() {
    return SizedBox(
      width: 250,
      height: 250,
      child: Stack(
        children: <Widget>[
          SizedBox(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://phoneky.co.uk/thumbs/screensavers/down/nature/fallinglea_j41olnm8.gif',
                      ))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(110, 90, 0, 10),
            
              child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('images/me.jpg'),
            ),
            ),

        ],
      ),
    );
  }

  Row myprofile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
        ),
        Text(
            '----------------My Profile---------------',
            style: TextStyle(
              color: Colors.amber[900],
              fontSize: 20,
              ),
          ),
      ],
    );
  }

  
  Row firstname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
          child: FaIcon(FontAwesomeIcons.user),
        ),
        Text(
            'นายสหัสวรรษ บุตรตะโคตร',
            style: TextStyle(
              color: Colors.amber[900],
              fontSize: 18,
              ),
          ),
      ],
    );
  }

  Row nickname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
          child: FaIcon(FontAwesomeIcons.smileWink),
        ),
        Text(
            'ชื่อเล่น "กัน"',
            style: TextStyle(
              color: Colors.amber[900],
              fontSize: 18,
              ),
          ),
      ],
    );
  }

  Row mymusic() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
          child: FaIcon(FontAwesomeIcons.music),
        ),
        Text(
            'ชอบฟังเพลง "7 ปีแล้วนะ"',
            style: TextStyle(
              color: Colors.amber[900],
              fontSize: 18,
              ),
          ),
      ],
    );
  }

  Row birthday() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
          child: FaIcon(FontAwesomeIcons.birthdayCake),
        ),
        Text(
            '24 ธันวาคม 2543',
            style: TextStyle(
              color: Colors.amber[900],
              fontSize: 18,
              ),
          ),
      ],
    );
  }

  Widget study() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Card(
        color: Colors.cyan[100],
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
            child: FaIcon(FontAwesomeIcons.university),
          ),
          Text(
              'IT Thaksin Univercity',
              style: TextStyle(
                color: Colors.amber[900],
                fontSize: 18,
                ),
            ),
        ],
      ),)
      
    );
  }

  Row end() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
        ),
        Text(
            '-------------------------------------------',
            style: TextStyle(
              color: Colors.amber[900],
              fontSize: 20,
              ),
          ),
      ],
    );
  }

}