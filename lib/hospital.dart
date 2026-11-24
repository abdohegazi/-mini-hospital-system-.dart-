import 'doctor.dart';
import 'patient.dart';

class Hospital {
  List<Patient> pat = [];
  List<Doctor> doc = [];

  void addPatient(Patient patient) {
    pat.add(patient);
    print('Patient added: ${patient.name} successfully.');
  }

  void displayPatients() {
    for (var serch in pat) {
      serch.displayinfo();
    }
  }

  void addDoctor(Doctor doctor) {
    doc.add(doctor);
    print('Doctor added: Dr. ${doctor.name} successfully.');
  }

  void displayDoctors() {
    for (var serch in doc) {
      serch.displayinfo();
    }
  }

  void bookAppointment() {
    print('Appointment booked successfully.');
  }
}
