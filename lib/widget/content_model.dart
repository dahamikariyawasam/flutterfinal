class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'Travel with us',
      image: "images/screen1.jpg",
      title: 'Select from our hotels\n  Best Hotels'),
  UnboardingContent(
      description:
          'Find travel ideas for\n planning your holiday to Sri Lanka.',
      image: "images/wel2.png",
      title: 'Places to stay and more..'),
  UnboardingContent(
      description: 'Endless beaches',
      image: "images/mirissa.JPG",
      title: 'Explore the beauty, culture, \n and attractions of Sri Lanka'),
];
