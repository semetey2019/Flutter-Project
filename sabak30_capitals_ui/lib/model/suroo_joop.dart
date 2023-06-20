class Suroo {
  const Suroo({required this.text, required this.image, required this.jooptor});
  final String text;
  final String image;
  final List<joop> jooptor;
}

class joop {
  joop({required this.text, required this.tuuraJoop});
  final String text;
  final bool tuuraJoop;
}

Suroo s1 = Suroo(
  text: 'Paris',
  image: 'Paris',
  jooptor: [
    joop(text: 'Germany', tuuraJoop: false),
    joop(text: 'Finland', tuuraJoop: false),
    joop(text: 'France', tuuraJoop: true),
    joop(text: 'Italy', tuuraJoop: false),
  ],
);
Suroo s2 = Suroo(
  text: 'Bern',
  image: 'BernSwitzerland',
  jooptor: [
    joop(text: 'Russia', tuuraJoop: false),
    joop(text: 'England', tuuraJoop: false),
    joop(text: 'Switzerland', tuuraJoop: true),
    joop(text: 'Spain', tuuraJoop: false),
  ],
);
Suroo s3 = Suroo(
  text: 'Brusel',
  image: 'BernSwitzerland',
  jooptor: [
    joop(text: 'Russia', tuuraJoop: false),
    joop(text: 'Portugal', tuuraJoop: false),
    joop(text: 'Albania', tuuraJoop: false),
    joop(text: 'Belgium', tuuraJoop: true),
  ],
);
Suroo s4 = Suroo(
  text: 'Copenhagen',
  image: 'CopengagenDenmark',
  jooptor: [
    joop(text: 'Denmark', tuuraJoop: true),
    joop(text: 'Ukraine', tuuraJoop: false),
    joop(text: 'Norway', tuuraJoop: false),
    joop(text: 'Belgium', tuuraJoop: false),
  ],
);
Suroo s5 = Suroo(
  text: 'Berlin',
  image: 'Berlin',
  jooptor: [
    joop(text: 'Greece', tuuraJoop: true),
    joop(text: 'Sweden', tuuraJoop: false),
    joop(text: 'Turkey', tuuraJoop: false),
    joop(text: 'Germany', tuuraJoop: true),
  ],
);
List<Suroo> surooJoopList = [s1, s2, s3, s4, s5];
