
import 'package:flutter/material.dart';
import 'package:resize/resize.dart';
import '../components/my_listview_select_services_type.dart';
import '../components/my_text_details.dart';
import '../widgets/my_button.dart';

class Register6 extends StatelessWidget {
  const Register6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'image2.png',
          width: 50.vw,
          height: 60.vh,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            displayTextOnpages(
                currentPage: 6,
                title: 'Select service type',
                dec:
                    'Please select prefered session location\nyou can select one or more'),
            Container(
                width: 80.w,
                height: 100.h,
                alignment: Alignment.centerRight,
                child: myListviewSelectServiceType()),


              myButton(context, 3,)
          ],
        ),
      ],
    );
  }
}

