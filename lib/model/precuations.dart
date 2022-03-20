import 'package:covid_app/screens/Precautions.dart';

class Precautions {
  String image;
  String precaution;
  String deatails;
  Precautions(this.image, this.precaution, this.deatails);
}

final List<Precautions> Precautionslist = [
  Precautions('images/precaution/coughing hand.png', 'Coughing Hand',
      'Do not touch your face without washing your hands first.'),
  Precautions('images/precaution/crowd.jpg', 'Away from crowd',
      'Avoid crowds and poorly ventilated spaces. Avoid indoor spaces that do not offer fresh air.'),
  Precautions('images/precaution/disinfect.png', 'Clean and Disinfect',
      'Clean and disinfect frequently touched objects and surfaces.'),
  Precautions('images/precaution/handwashing.png', 'Wash Hand',
      'Frequently wash your hands with soap and water or use a hand sanitizer with at least 60% alcohol.'),
  Precautions('images/precaution/mask.jpg', 'Use Mask',
      'Wear a face mask when in public to prevent the spread of the virus.'),
  Precautions('images/precaution/sleeping at home.png', 'Stay At Home',
      'If you feel sick, stay home and contact your health care provider.'),
  Precautions(
      'images/precaution/sneezing tissue.png',
      'Use Tissue While Sneezing',
      'Cough or sneeze into a tissue or bent elbow. Throw the tissue in the trash'),
  Precautions('images/precaution/vaccine.jpg', 'Do Vaccinated ASAP',
      'Get vaccinated for as soon as you are eligible.'),
  Precautions('images/precaution/distance.png', 'Keep Distance',
      'Stay at least 6 feet away from others.'),
];
