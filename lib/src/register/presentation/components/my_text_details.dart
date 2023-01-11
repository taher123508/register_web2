import 'package:flutter/material.dart';
import 'package:resize/resize.dart';

Widget displayTextOnpages({int? currentPage, String? title, String? dec}) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            '$currentPage',
            style: TextStyle(fontSize: 5.sp, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              '/8',
              style: TextStyle(fontSize: 3.sp),
            ),
          )
        ],
      ),
      Text(
        '$title',
        style: TextStyle(fontSize: 5.sp),
      ),
      Text(
        '$dec',
        style: TextStyle(fontSize: 2.5.sp),
      ),
    ],
  );
}