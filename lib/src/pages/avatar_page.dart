import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://4ehcmr138ecr6hkd21ke1dq1-wpengine.netdna-ssl.com/wp-content/uploads/2018/11/jenkins.png'),
                radius: 30.0,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://miro.medium.com/max/668/1*FgdvdzDs64rW-1XJkQ-neA.jpeg'),
          placeholder: AssetImage('assest/loading_flutter.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
