import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:register_code/src/register/presentation/controllers/form_group_controller.dart';
List<String> imagers = [
  'image1to1.png',
  'image1to2.png',
  'image1to3.png',
  'image1to4.png',
];
Widget cardGridviewProfileWidg(int index) {
  return Consumer(
    builder: (_,WidgetRef ref,__) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: index==ref.watch(selectImageProfileProvider)?const Color(0xffE1E2EC):Colors.white,
            borderRadius: BorderRadius.circular(15),
            border:
            Border.all(width: 0.5, color: Colors.grey)),
        child: Image.asset(imagers[index]),
      );
    }
  );}