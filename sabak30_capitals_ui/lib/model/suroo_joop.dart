class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  joop({required this.text, required this.isBool});
  final String text;
  final bool isBool;
}

Suroo s1 = Suroo(
  text: 'Paris',
  image: 'Paris',
  jooptor: [
    joop(text: 'Germany', isBool: false),
    joop(text: 'Finland', isBool: false),
    joop(text: 'France', isBool: true),
    joop(text: 'Italy', isBool: false),
  ],
);
Suroo s2 = Suroo(
  text: 'Bern',
  image: 'Switzerland',
  jooptor: [
    joop(text: 'Russia', isBool: false),
    joop(text: 'England', isBool: false),
    joop(text: 'Switzerland', isBool: true),
    joop(text: 'Spain', isBool: false),
  ],
);
Suroo s3 = Suroo(
  text: 'Brusel',
  image: 'belgium',
  jooptor: [
    joop(text: 'Russia', isBool: false),
    joop(text: 'Portugal', isBool: false),
    joop(text: 'Albania', isBool: false),
    joop(text: 'Belgium', isBool: true),
  ],
);
Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'denmark',
  jooptor: [
    joop(text: 'Denmark', isBool: true),
    joop(text: 'Ukraine', isBool: false),
    joop(text: 'Norway', isBool: false),
    joop(text: 'Belgium', isBool: false),
  ],
);
Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'Berlin',
  jooptor: [
    joop(text: 'Greece', isBool: false),
    joop(text: 'Sweden', isBool: false),
    joop(text: 'Turkey', isBool: false),
    joop(text: 'Germany', isBool: true),
  ],
);
List<Suroo> surooJoopList = [s1, s2, s3, s4, s5];
