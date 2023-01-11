import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:resize/resize.dart';
import 'package:uuid/uuid.dart';
import '../controllers/form_group_controller.dart';

final RangeSliderProvider =
    StateProvider<RangeValues>((ref) => const RangeValues(10, 80));

class reactiveTextField extends StatefulWidget {
  const reactiveTextField({Key? key}) : super(key: key);

  @override
  State<reactiveTextField> createState() => _reactiveTextFieldState();
}

class _reactiveTextFieldState extends State<reactiveTextField> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_,WidgetRef ref,__) {
        return ReactiveForm(
            formGroup: ref.watch(formGroupProvider),
            child: Column(
              children: [
                RangeSlider(
                  activeColor:const Color(0xffEE9CDA),
                  values: ref.watch(RangeSliderProvider.notifier).state,
                  max: 100,
                  divisions: 5,
                  labels: RangeLabels(
                    ref
                        .watch(RangeSliderProvider.notifier)
                        .state
                        .start
                        .round()
                        .toString(),
                    ref
                        .watch(RangeSliderProvider.notifier)
                        .state
                        .end
                        .round()
                        .toString(),
                  ),
                  onChanged: (RangeValues values) {
                    //  _currentRangeValues = values;

                    setState(() {
                      ref.read(RangeSliderProvider.notifier).state = values;
                      ref.read(formGroupProvider).control('minSession').value =
                          values.start;
                      ref.read(formGroupProvider).control('maxSession').value =
                          values.end;
                    });
                  },
                ),
                SizedBox(
                  width: 70.w,
                  height: 40.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 18.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffE1E2EC),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Min:${ref.watch(RangeSliderProvider.notifier).state.start}',
                          style: TextStyle(fontSize: 4.sp),
                        ),
                      ),
                      Text(
                        'Session Fee',
                        style: TextStyle(fontSize: 4.sp),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        width: 16.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            color: const Color(0xffE1E2EC),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          'Max:${ref.watch(RangeSliderProvider.notifier).state.end}',
                          style: TextStyle(fontSize: 4.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  width: 60.w,
                  height: 120.h,
                  child: ReactiveTextField(
                    formControlName: 'description',
                    maxLines: 15,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                      hintText: "Bio",
                      filled: true,
                      hintStyle: TextStyle(fontSize: 4.sp, color: Colors.black),
                    ),
                    style: TextStyle(fontSize: 4.sp, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 2.vh,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 40.w,
                      height: 25.h,
                      child: ReactiveTextField(
                        formControlName: 'nameCertificate',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(7)),
                          hintText: "Certificate",
                          filled: true,
                          hintStyle: TextStyle(fontSize: 3.sp, color: Colors.black),
                        ),
                        style: TextStyle(fontSize: 3.sp, color: Colors.black),
                      ),
                    ),
                    Container(
                        width: 3.vw,
                        height: 4.vh,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(7.0),
                          color: const Color(0xff7BE5C5),
                        ),
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                          size: 4.sp,
                        )),
                    Container(
                        width: 2.vw,
                        height: 4.vh,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(7.0),
                          color: Colors.red,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.delete_outline_sharp,
                              color: Colors.white, size: 4.sp),
                          onPressed: () {
                            ref.read(formGroupProvider).control('nameCertificate').value='';

                          },
                        )),
                  ],
                ),
                SizedBox(
                  height: 0.5.vh,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40.w,
                      height: 25.h,
                      child: ReactiveTextField(
                        formControlName: 'certificateUrl',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(7)),
                          hintText: "Attachment Name",
                          filled: true,
                          hintStyle: TextStyle(fontSize: 3.sp, color: Colors.black),
                        ),
                        style: TextStyle(fontSize: 3.sp, color: Colors.black),
                      ),
                    ),
                    Container(
                        width: 4.vw,
                        height: 4.vh,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(9.0),
                          color: const Color(0xffEE9CDA),
                        ),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            _openPicker(ref);
                          },
                          icon: Icon(Icons.cloud_upload_outlined, size: 4.sp),
                        )),
                  ],
                ),
              ],
            ));
      }
    );
  }

  Future<void> _openPicker(WidgetRef ref) async {
    FilePickerResult? result;
    result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'png', 'pdf'],
    );

    if (result != null) {
      Uint8List? upLoadFile = result.files.single.bytes;
      Reference reference = FirebaseStorage.instance.ref().child(const Uuid().v1());
      final UploadTask uploadTask = reference.putData(upLoadFile!);
      uploadTask.whenComplete(() async {
        var cerUrl = await uploadTask.snapshot.ref.getDownloadURL();

        ref.read(formGroupProvider).control('certificateUrl').value = cerUrl;
      });
    }
  }
}
