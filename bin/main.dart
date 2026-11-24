import '../lib/doctor.dart';
import '../lib/patient.dart';

import 'dart:io';

void main() {
  Doctor d1 = Doctor(name: 'ahmed', age: 20, spec: 'heart');
  d1.displayinfo();

  Patient p1 = Patient(name: 'ali', age: 30);

  p1.displayinfo();
  p1.bookAppointment = d1;
  p1.displayinfo();
  print('-------------------');

  p1.displayinfo();
  p1.setID = stdin.readLineSync()!;
  p1.displayinfo();
  p1.setID = stdin.readLineSync()!;
  p1.displayinfo();
}
