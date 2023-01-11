import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:register_code/src/register/presentation/controllers/form_group_controller.dart';

import '../widgets/card_grirview_profil_widget.dart';
List<String> imagers = [
  'image1to1.png',
  'image1to2.png',
  'image1to3.png',
  'image1to4.png',
];
class selectProfilePictureGrid extends ConsumerWidget {
  const selectProfilePictureGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ,WidgetRef ref) {
    return  GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4),
        itemCount: 4,
        itemBuilder: (BuildContext ctx, int index) {
          return InkWell(
              onTap: (){
//Code to click on the images and add the effect of clicking
ref.read(selectImageProfileProvider.notifier).state=index;
ref.read(formGroupProvider).control('imageUrl').value=imagers[index];

              },
              child:   cardGridviewProfileWidg(index)
          );
        });
  }
}




