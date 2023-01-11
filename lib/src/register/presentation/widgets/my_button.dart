import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:register_code/src/register/application/services/storage_user_service.dart';
import 'package:register_code/src/register/presentation/controllers/form_group_controller.dart';
import 'package:register_code/src/register/presentation/controllers/trans_provider_manager.dart';
import 'package:resize/resize.dart';
Widget myButton(BuildContext context,int currentPage,) {
  return  Consumer(
    // 2. specify the builder and obtain a WidgetRef
      builder: (_, WidgetRef ref, __) {

        return ElevatedButton(
            onPressed: () async {

              if(ref.watch(currentPageProvider)<4) {
                ref.read(currentPageProvider.notifier).state++;
              }


           if(ref.watch(currentPageProvider)==4) {
//   //sending data to fierbase

             await ref.read(addUserService).AddUser(formGroup:ref.watch(formGroupProvider) );


           }




            },
            style: ElevatedButton.styleFrom(
                fixedSize: Size(60.w, 40.h),
                backgroundColor: const Color(0xff3879E9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text(
              'Proceed',
              style: TextStyle(fontSize: 5.sp, color: Colors.black),
            ));

      });





}