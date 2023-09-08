class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Twitter Clone with FLutter, Appwrite & Riverpod',
    organization: 'Udemy',
    date: 'APRIL 2023',
    skills: 'Flutter . Dart . Programming',
    credential:
        'https://www.udemy.com/certificate/UC-ddb59af6-7142-407b-bc40-a35746b100ef/',
  ),
  CertificateModel(
    name: 'The Web Developer Bootcamp 2022',
    organization: 'Udemy',
    date: 'AUGUST 2022',
    skills: 'HTML/CSS/JavaScript . NodeJS . MongoDB',
    credential:
        'https://www.udemy.com/certificate/UC-2e51a585-5166-4297-950f-0378bf42563c/',
  ),
];
