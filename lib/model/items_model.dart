class Items_models {
  final String image;
  final String title;
  final String subtitle;
  final String time;

  Items_models({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.time,
  });
}

List<Items_models> chatsList = [
  Items_models(
    image: 'assets/images/chat1.png',
    title: 'John Doe',
    subtitle: '9 am to 11 am',
    time: '1 hr',
  ),
  Items_models(
    image: 'assets/images/chat2.png',
    title: 'Kate Mary',
    subtitle: '12 pm to 1 pm.',
    time: '1 hr',
  ),
  Items_models(
    image: 'assets/images/chat3.png',
    title: 'Mia Lawrence',
    subtitle: '2 pm to 3 pm',
    time: '2 hrs',
  ),
  Items_models(
    image: 'assets/images/chat3.png',
    title: 'Mia Lawrence',
    subtitle: '4 pm to 5 pm',
    time: '2 hrs',
  ),


];
