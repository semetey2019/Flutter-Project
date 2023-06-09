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
const Country rossia = Country(name: 'Rossia', domain: 'ru');
const Country italia = Country(name: 'Itali', domain: 'it');

Set<Country> countiesSet = {
  oae,
  france,
  korea,
  argentina,
  poland,
  rossia,
  italia
};
