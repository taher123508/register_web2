import 'package:flutter/material.dart';
import 'package:register_code/src/register/presentation/components/registeration_template.dart';
import 'package:resize/resize.dart';

import '../widgets/tab_list.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {


    return Scaffold(
        persistentFooterAlignment: AlignmentDirectional.bottomStart,
        backgroundColor: const Color(0xffE1E2EC),

        persistentFooterButtons: const [
          Text('English  (uk) '),
          Text('Turkce'),
          Text('العربية'),
        ],
        appBar: AppBar(


          leading: const Center(
              child: Text(
                'logo',
                style: TextStyle(color: Colors.black,fontFamily: 'Recoleta',fontSize: 25),
              )),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 30),
              width: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
              Image(image: AssetImage('icon_facebook.png'),),
              Spacer(),
              Image(image:  AssetImage('icons_whatsapp.png'),),

                  Spacer(),
              Image(image: AssetImage('icon_instagram.png'),),


                ],
              ),
            )
          ],
          backgroundColor: Colors.grey,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 6.vh,
                width: double.infinity,

                child: listTabbar(context)
              ),

               RegistrationTemplate(),

            ],
          ),
        ));
  }


}
