import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:register_code/src/register/presentation/widgets/my_button.dart';
import 'package:resize/resize.dart';
import '../components/forn_data_reac.dart';
import '../components/my_text_details.dart';

class Register8 extends ConsumerWidget {
  Register8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'image4.png',
          width: 50.vw,
          height: 70.vh,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            displayTextOnpages(
              currentPage: 8,
              title: ' What makes you special?',
              dec: 'Please  determine your session'
                  's fee range,\n tell us more about you',
            ),
          //  formData(),
            const reactiveTextField(),
            // ref.watch(formGroupProvider).control('certificateUrl').value!=null?
            // myButton(context, 4):CircularProgressIndicator()
            myButton(context, 4)
          ],
        ),
      ]
    );
  }
}
