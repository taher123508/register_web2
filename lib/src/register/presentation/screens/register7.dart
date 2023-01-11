
import 'package:flutter/material.dart';
import 'package:register_code/src/register/presentation/components/my_text_details.dart';
import 'package:register_code/src/register/presentation/widgets/my_button.dart';
import 'package:resize/resize.dart';
import '../components/gridview_your_specialities.dart';

class Register7 extends StatelessWidget {
  const Register7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'image3.png',
          width:  50.vw,
          height: 65.vh,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            displayTextOnpages(
                currentPage: 7,
                title: 'What is your Specialities?',
                dec:
                    'Please select your specialities and skills,\nyou can select one or more'),
            SizedBox(
                width: 25.vw,
                height: 240.h,
                child: const gridviewYourSpecialities()),
            myButton(context, 4)
          ],
        ),
      ],
    );
  }
}
