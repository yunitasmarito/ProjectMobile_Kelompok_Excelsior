import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as urlLauncher;
import 'package:fira/utils/colors.dart';

class Emergency extends StatelessWidget {

  _launchCaller() async {
    const url = "tel:112";
    if (await urlLauncher.canLaunch(url)) {
      await urlLauncher.launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget Explanation() {
    return Text(
        "\n   Untuk keadaan darurat \n   dengan potensi kebakaran \n   besar dan cepat",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final pageTitle = Padding(
      padding: EdgeInsets.only(top: 1.0, bottom: 20.0),
      child: Text(
        "\n\n Laporkan Kebakaran",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 25.0,
        ),
      ),
    );

    final reportBtn = Padding(
      padding: EdgeInsets.only(top: .0),
      child: Container(
        margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
        height: 70.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          border: Border.all(color: Colors.white),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(7.0),
          color: primaryColor,
          elevation: 10.0,
          shadowColor: Colors.white70,
          child: MaterialButton(
            onPressed: () => _launchCaller(),
            child: Text(
              'Lapor Kebakaran',
              style: TextStyle(
                fontSize: 19.5,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFfbab66) ,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40.0),
          width: deviceWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(gradient: primaryGradient),
                    padding: EdgeInsets.only(
                      left: deviceWidth,
                      bottom: deviceHeight*0.77,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30.0, left: 40.0, right: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        pageTitle,
                        Explanation(),
                        reportBtn,
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}