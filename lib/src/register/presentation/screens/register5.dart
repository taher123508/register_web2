import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:register_code/src/register/presentation/controllers/form_group_controller.dart';
import 'package:resize/resize.dart';
import 'package:uuid/uuid.dart';
import '../components/gridview_select_profil_picture.dart';
import '../components/my_text_details.dart';
import '../widgets/my_button.dart';

final imageUrlProvider = Provider<String>((_) => 'image1to1.png');
class Register5 extends ConsumerWidget {
  Register5({Key? key}) : super(key: key);
   String imageUrl='';
  @override
  Widget build(BuildContext context ,WidgetRef ref) {
    var url = ref.watch(formGroupProvider).control('imageUrl').value;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 50.vw,
          height: 75.vh,
          child: Image.asset(
            'image1.png',
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            displayTextOnpages(
                currentPage: 5,
                title: 'Select proFile picture',
                dec:
                    'You can select photo from one on \npresetor add your own photo'),
            Stack(
              alignment: Alignment.bottomRight,

              children: [
                CircleAvatar(
                  maxRadius: 13.sp,
                  child: Image.asset(url),
                ),
                Positioned(
                    right: 0,
                    bottom: 2,
                    child: Container(
                        width: 8.r,
                        height: 8.r,
                        alignment: AlignmentDirectional.topCenter,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(50.0),
                          color: const Color(0xffEE9CDA),
                        ),
                        child: IconButton(

                          icon: Icon(
                            Icons.add,
                            color: Colors.blue,
                            size: 5.sp,
                          ),
                          onPressed: ()async {
                        await    _openPicker(ref) ;
                          },
                        )))
              ],
            ),
            SizedBox(
                width: 60.w,
                height: 240.h,
                child: const selectProfilePictureGrid()),
            ref.watch(formGroupProvider).control('imageUrl').value!=null?
            myButton(context, 2):const CircularProgressIndicator()
          ],
        ),
      ],
    );
  }

  Future<void> _openPicker(WidgetRef ref) async {

FilePickerResult? result;
result= await FilePicker.platform.pickFiles(

  type: FileType.custom,
  allowedExtensions: ['jpg','png'],);

 if (result!=null)
   {
   Uint8List? upLoadFile=  result.files.single.bytes;
   Reference reference=FirebaseStorage.instance.ref().child(const Uuid().v1());
   final UploadTask uploadTask =reference.putData(upLoadFile!);
uploadTask.whenComplete(()async {
  imageUrl= await uploadTask.snapshot.ref.getDownloadURL();
  ref.read(formGroupProvider).control('imageUrl').value=imageUrl;
});
   }
  }

}
