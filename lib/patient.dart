import "doctor.dart";
import "person.dart";

class Patient extends Person {
  String? _patientID;
  Doctor? _doctor;

  Patient.gest({
    super.name = "anknown",
    super.age = 0,
    this._patientID = "null",
    this._doctor = null,
  });

  Patient({required super.name, required super.age});
  // : _patientID = patientID,
  //   _doctor = doctor;

  set setID(String id) {
    id = id.trim();
    if (id.isNotEmpty) {
      _patientID = id;
    } else {
      print('Invalid patient ID. Please enter a valid ID.');
    }
  }

  String? get patientID => _patientID;
  Doctor? get doctor => _doctor;

  set bookAppointment(Doctor d) {
    _doctor = d;
  }

  @override
  void displayinfo() {
    print('Patient: $name | Age: $age | Patient ID: $_patientID');
    if (_doctor != null) {
      print(
        'Assigned Doctor: Dr. ${_doctor!.name} | Specialization: ${_doctor!.spec}',
      );
    } else {
      print('No doctor assigned.');
    }
  }
}
