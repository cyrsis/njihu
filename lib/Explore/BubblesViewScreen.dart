import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';

class BubblesViewScreen extends StatefulWidget {
  BubblesViewScreen({Key key}) : super(key: key);

  @override
  _BubblesViewScreenState createState() => new _BubblesViewScreenState();
}

class _BubblesViewScreenState extends State<BubblesViewScreen> {
  var _offset = SizedBox(width: 100.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
      children: <Widget>[

        Positioned(
          left:-70.0,
          top: -60.0,
          child: Container(
            width: 1300,
            height: 1300,
            child: new Wrap(
                  spacing: 10.0, // 主轴(水平)方向间距
                  runSpacing: 10.0, // 纵轴（垂直）方向间距
                  alignment: WrapAlignment.center, //沿主轴方向居中
                  children: <Widget>[
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _offset,
                    _buildProfile(),
                    _buildProfile(),

                    _buildProfile(),

                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _buildProfile(),
                    _offset,
                    _buildProfile(),
                  ],
                ),
          ),
        ),

      ],
    ) ,
    );
  }

  _buildProfile() {
    return Draggable(
      child: new Container(
        width: 139,
        height:139,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(
              Radius.circular(80.0)),
          image:new DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),fit: BoxFit.cover),),
        child: new Container(),
      ),
      feedback: new Container(
        width: 139,
        height:139,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(
              Radius.circular(80.0)),
          image:new DecorationImage(
              image: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),fit: BoxFit.cover),),
        child: new Container(),
      ),
    );
  }
}
