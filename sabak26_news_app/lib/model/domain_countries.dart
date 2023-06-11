class Country {
  const Country({required this.name, required this.domain});

  final String name;
  final String domain;
}

const Country oae = Country(name: 'OAE', domain: 'ae');
const Country france = Country(name: 'France', domain: 'fr');
const Country korea = Country(name: 'Korea', domain: 'kr');
const Country argentina = Country(name: 'Argentina', domain: 'ar');
const Country poland = Country(name: 'Poland', domain: 'pl');
const Country russia = Country(name: 'Russia', domain: 'ru');
const Country italia = Country(name: 'Itali', domain: 'it');
const Country australia = Country(name: 'Australia', domain: 'au');
const Country austria = Country(name: 'Austria', domain: 'at');
const Country azerbaijan = Country(name: 'Azerbaijan', domain: 'az');
const Country india = Country(name: 'India', domain: 'in');
const Country turkey = Country(name: 'Turkey', domain: 'tr');

Set<Country> countiesSet = {
  oae,
  france,
  korea,
  argentina,
  poland,
  russia,
  italia
};
//Set - бул окшоштукту кабыл албайт, м:1 саны бир эле жолу берилиш керек