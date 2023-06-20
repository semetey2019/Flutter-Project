class Student {
  Student(
      {required this.id,
      required this.image,
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
  final String image;
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
    image:
        "https://avatars.mds.yandex.net/i?id=ff038614ac034a61eebb563ab704460170f04985-9222726-images-thumbs&n=13",
    name: 'Daniyar',
    surName: 'Askarov',
    age: 18,
    email: 'daniyar@mail',
    address: "Bishkek",
    group: 1,
    gender: 'male');

final dinara = Student(
  id: 2,
  image:
      "https://avatars.mds.yandex.net/i?id=7fd8f215154162ef10ded2c946a770782192fcfe-8554591-images-thumbs&n=13",
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
  image:
      "https://avatars.mds.yandex.net/i?id=902d12b2369f0747751410d268e849f9f5acbdd8-9214528-images-thumbs&n=13",
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
    image:
        "https://avatars.mds.yandex.net/i?id=c4e3b7bd8533ff5d09e880eeb34c87edd1b80b7b-9097048-images-thumbs&n=13",
    name: 'Aibek',
    surName: 'Kerimov',
    age: 19,
    email: 'aibek@mail',
    group: 1);

final mirbek = Student(
  id: 5,
  image:
      "https://avatars.mds.yandex.net/i?id=c6acb935529aafa1afd9b50b6107fa95fa1418b5-4908127-images-thumbs&n=13",
  name: 'Mirbek',
  surName: 'Muratov',
  age: 21,
  email: 'mirbek@mail',
  group: 1,
  phone: '+996501412565',
  gender: 'male',
  address: 'Bishkek',
);
