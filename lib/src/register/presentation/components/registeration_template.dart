import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resize/resize.dart';
import '../controllers/trans_provider_manager.dart';
import '../screens/register5.dart';
import '../screens/register6.dart';
import '../screens/register7.dart';
import '../screens/register8.dart';
class RegistrationTemplate extends StatelessWidget {
 RegistrationTemplate({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(

      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 70.vh,
      color: Colors.white,
      child:Consumer(
        // 2. specify the builder and obtain a WidgetRef
          builder: (_, WidgetRef ref, __) {

            return curentRegister(ref.watch(currentPageProvider));

          })
    );
  }

 Widget curentRegister(int curentPage) {
   Widget? current;
   switch(curentPage){
     case 1:
       current=Register5();
       break;
     case 2:
       current=const Register6();
       break;
     case 3:
       current=const Register7();
       break;
     case 4:
       current=Register8();
       break;

   }

   return current!;
 }
}
