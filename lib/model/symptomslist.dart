class symptomslist {
  String image;
  String title;
  symptomslist(
    this.image,
    this.title,
  );
}

final List<symptomslist> symptoms = [
  symptomslist('images/symptomsimg/1.jpg', 'Congestion or runny nose'),
  symptomslist('images/symptomsimg/2.png', 'Cough'),
  symptomslist('images/symptomsimg/3.png', 'Diarrhea'),
  symptomslist('images/symptomsimg/breath.png', 'Shortness of breath'),
  symptomslist('images/symptomsimg/faitg.png', 'Fatigue'),
  symptomslist('images/symptomsimg/fever.png', 'High Fever'),
  symptomslist('images/symptomsimg/headache.png', 'Headache'),
  symptomslist('images/symptomsimg/no taste.png', 'Loss of Taste or smell'),
  symptomslist('images/symptomsimg/pain.png', 'Muscle or body aches'),
  symptomslist('images/symptomsimg/throat.png', 'Sore throat'),
  symptomslist('images/symptomsimg/vomit.png', 'Nausea or vomiting'),
];
