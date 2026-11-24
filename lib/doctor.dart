import 'person.dart';

class Doctor extends Person {
  final String? spec;

  const Doctor({required this.spec, super.name, super.age});

  @override
  void displayinfo() {
    print('Doctor: Dr. $name | Age: $age | Specialization: $spec');
  }
}
