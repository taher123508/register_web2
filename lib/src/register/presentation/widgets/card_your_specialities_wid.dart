import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resize/resize.dart';

Widget cardYourSpecialities(int index,String title,bool isSelected) {
  return Consumer(builder: (_, WidgetRef ref, __) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
          color: isSelected?Colors.grey:Colors.white,
          border: Border.all(width: 0.3, color: Colors.grey)),
      child: Text(
       title,
        style: TextStyle(fontSize: 5.sp),
      ),
    );
  });
}
