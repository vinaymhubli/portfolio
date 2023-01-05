import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWhatsapp extends StatefulWidget {
  MyWhatsapp({Key? key}) : super(key: key);

  @override
  State<MyWhatsapp> createState() => _MyWhatsappState();
}

class _MyWhatsappState extends State<MyWhatsapp> {
  final Uri _url = Uri.parse('https://github.com/vinaymhubli');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  openwhatsapp() async {
    var whatsapp = "+918317408836";
    var webwhatsapp="https://api.whatsapp.com/send/?phone=6281144441111&text=Hello";
    var whatsappURl_android = "whatsapp://send?phone=" +
        whatsapp +
        "&text=Hello Vinay\n I came across your profile on your portfolio.I’m a recruiter and we’re looking for a mobile application developer role that I think you would be a good fit for.";
    var whatappURL_ios =
        "https://wa.me/$whatsapp?text=${Uri.parse("Hello Vinay\n I came across your profile on your portfolio.I’m a recruiter and we’re looking for a mobile application developer role that I think you would be a good fit for.")}";
    if (Platform.isAndroid) {
      if (await canLaunch(whatsappURl_android)) {
        await launch(
          whatsappURl_android,
          forceSafariVC: false,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp not installed")));
      }
    } else {
      if (Platform.isIOS) {
        if (await canLaunch(whatappURL_ios)) {
          await launch(
            whatappURL_ios,
            forceSafariVC: false,
          );
        }
      }
    } if(Platform.isWindows){
     if (await canLaunch(webwhatsapp)) {
        await launch(
          webwhatsapp,
          forceSafariVC: false,
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: new Text("whatsapp not installed")));
      }
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/v1.jpg')),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        openwhatsapp();
                      },
                    
                      child: Text(
                        'Continue to Chat',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                   
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
