import 'dart:io';

import '../lib/doctor.dart';
import '../lib/hospital.dart';
import '../lib/patient.dart';

void main() {
  Hospital hospital = Hospital();
  bool isRunning = true;

  while (isRunning) {
    print('===== Hospital System =====');
    print('1. Add Doctor');
    print('2. Add Patient');
    print('3. Display Doctors');
    print('4. Display Patients');
    print('5. Exit');
    print('Enter your choice: ');

    String? choice = stdin.readLineSync()?.trim();

    switch (choice) {
      case '1':
        print('Enter doctor name: ');
        String name = stdin.readLineSync() ?? '';

        print('Enter doctor age: ');
        int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

        print('Enter specialization: ');
        String spec = stdin.readLineSync() ?? '';

        Doctor doctor = Doctor(name: name, age: age, spec: spec);
        hospital.addDoctor(doctor);
        break;

      case '2':
        print('Enter patient name: ');
        String name = stdin.readLineSync() ?? '';

        print('Enter patient age: ');
        int age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

        print('Enter patient ID: ');
        String id = stdin.readLineSync() ?? '';

        Patient patient = Patient(name: name, age: age);
        patient.setID = id;
        hospital.addPatient(patient);
        break;

      case '3':
        if (hospital.doc.isEmpty) {
          print('No doctors available.');
        } else {
          hospital.displayDoctors();
        }
        break;

      case '4':
        if (hospital.pat.isEmpty) {
          print('No patients available.');
        } else {
          hospital.displayPatients();
        }
        break;

      case '5':
        print('Goodbye!');
        isRunning = false;
        break;

      default:
        print('Invalid choice, please try again.');
    }
  }
}
