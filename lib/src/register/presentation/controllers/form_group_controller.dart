import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../domain/models/user.dart';

final selectImageProfileProvider=StateProvider<int>((ref) => 0);
final selectServesTypeProvider=StateProvider<int>((ref) => 0);


final formGroupProvider=Provider<FormGroup>((ref){
return FormGroup({
'imageUrl': FormControl<String>(value: "image1to1.png",validators: [Validators.required,]),
'serviceType': FormControl<ServiceType>( validators: [Validators.required, Validators.email]),
'specialities': FormControl<List<String>>(validators: [Validators.required]),
'minSession': FormControl<double>( value: 0, validators: [Validators.required]),
'maxSession': FormControl<double>(value: 0,  validators: [Validators.required]),
'description': FormControl<String>(validators: [Validators.required]),
'nameCertificate': FormControl<String>(validators: [Validators.required]),
'certificateUrl': FormControl<String>(validators: [Validators.required]),

});});

