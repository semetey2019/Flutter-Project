


class Student {
  Student({required this.id, 
  required this.name,
   required this.surName,
   required this.age, 
   this.phone,
    required this.email,
    this.address,
    required this.group,
    this.gender,
     this.marride});

final int id;
  final String name;
  final String surName;
  int age;
  String? phone;
  final String email;
  final String? address;
  int group;
  final String? gender;
  String? marride;
   
}

final daniyar = Student(
id: 1,
name: 'Daniyar', 
surName: 'Askarov', 
age: 18, 
email: 'daniyar@mail',
address: "Bishkek",
group: 1,
gender: 'male'
);


final dinara = Student(
id: 2,
name: 'Dinara', 
surName: 'Akulova', 
age: 18, 
email: 'dinara@mail',
group: 1,
phone: '+9964202424242',
marride: 'single',
);


final xanzada = Student(
id: 3,
name: 'Xanzada', 
surName: 'Asylova', 
age: 20, 
email: 'xanym@mail',
group: 1,
address: 'Naryn',
gender: 'female',
marride: 'single',
);


final aybek = Student(
id: 4,
name: 'Aibek', 
surName: 'Kerimov', 
age: 19, 
email: 'aibek@mail',
group: 1
);


final mirbek = Student(
id: 5,
name: 'Mirbek', 
surName: 'Muratov', 
age: 21, 
email: 'mirbek@mail',
group: 1,
phone: '+996501412565',
gender: 'male',
address: 'Bishkek',
);

List studentter = <Student>[
  daniyar, 
  dinara,
  xanzada,
  aybek,
  mirbek,
   ];


