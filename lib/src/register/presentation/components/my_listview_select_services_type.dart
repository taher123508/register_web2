import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:register_code/src/register/domain/models/user.dart';
import 'package:register_code/src/register/presentation/controllers/form_group_controller.dart';
import 'package:resize/resize.dart';

List<String> imagers = [
  'image2to1.png',
  'image2to2.png',
  'image2to3.png',
];
List<String> textImagers = [
  'Home',
  'Online',
  'Center',
];

Widget myListviewSelectServiceType() {
  return Consumer(builder: (_, WidgetRef ref, __) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: 1.w < 1.h ? Axis.vertical : Axis.horizontal,
        itemCount: imagers.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              ref.read(selectServesTypeProvider.notifier).state = i;
              ref.read(formGroupProvider).control('serviceType').value=ServiceType.values[i];
            },
            child: Container(
              margin: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      width: 0.5,
                      color: i == ref.watch(selectServesTypeProvider)
                          ?
                          Colors.black:const Color(0xffE1E2EC))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imagers[i],
                    width: 7.vw,
                    height: 10.vh,
                  ),
                  Text(
                    textImagers[i],
                    style: TextStyle(fontSize: 4.sp),
                  )
                ],
              ),
            ),
          );
        });
  });
}
