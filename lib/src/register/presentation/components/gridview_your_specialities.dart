import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/select_your_specialities_modle.dart';
import '../controllers/form_group_controller.dart';
import '../widgets/card_your_specialities_wid.dart';

class gridviewYourSpecialities extends StatefulWidget {
  const gridviewYourSpecialities({Key? key}) : super(key: key);

  @override
  State<gridviewYourSpecialities> createState() => _gridviewYourSpecialitiesState();
}

class _gridviewYourSpecialitiesState extends State<gridviewYourSpecialities> {
  List<YourSpecialitiesModle> yourSpecialities = [
    YourSpecialitiesModle('Pediatrics',false),
    YourSpecialitiesModle('Sports',false),
    YourSpecialitiesModle('Women' 's health',false),
    YourSpecialitiesModle('Cardiovascular',false),
    YourSpecialitiesModle('Geriatrics',false),
    YourSpecialitiesModle('Pediatrics',false),
    YourSpecialitiesModle('Orthopedics',false),

  ];

  List<String> selectTitleSpecialities=[];
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_,WidgetRef ref,__) {
        return GridView.builder(

            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                childAspectRatio: 3,


                crossAxisSpacing: 4),
            itemCount: 7,
            itemBuilder: (BuildContext ctx, int index) {
              return  InkWell(

                  onTap: () {

           setState(() {
             yourSpecialities[index].isSelected=!yourSpecialities[index].isSelected;
             if(yourSpecialities[index].isSelected==true)
             {

               selectTitleSpecialities.add(yourSpecialities[index].title);
             }
             else if(yourSpecialities[index].isSelected==false)
             {
               selectTitleSpecialities.removeWhere((element) => element==yourSpecialities[index].title);
             }

   ref.read(formGroupProvider).control('specialities').value=selectTitleSpecialities;
           });
                  },
                  child: cardYourSpecialities(index,yourSpecialities[index].title,yourSpecialities[index].isSelected));
            });
      }
    );
  }
}







