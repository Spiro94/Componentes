import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  //const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'http://www.rockfm.mx/images/tnfocus/0/0/550/300/2019/07/12/cropw0h021p.jpg',
              ),
              radius: 25.0,
            ),
          ),
          Container(
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.purple,
            ),
            margin: EdgeInsets.only(right: 10.0),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTIwNjA4NjM0MTk3MjE0NzMy/stan-lee-21101093-1-402.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 400),
        ),
      ),
    );
  }
}
