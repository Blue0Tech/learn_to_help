class Tutorial {
  String imageUrl;
  String title;
  String description;
  List<String> screenshots;
  String youtubeVideo;
  List<String> paragraph;

  Tutorial({
    this.imageUrl,
    this.title,
    this.description,
    this.screenshots,
    this.youtubeVideo,
    this.paragraph
  });
}

final List<Tutorial> tutorials = [
  Tutorial(
    imageUrl: 'assets/images/CPR.png',
    title: 'Performing CPR',
    description:
    'CPR stands for cardiopulmonary resuscitation. It is an emergency life-saving procedure that is done when someone\'s breathing or heartbeat has stopped. This may happen after an electric shock, heart attack, or drowning. This quiz will teach you how to perform CPR.',
    screenshots: [
      'assets/images/cpr_1.png',
      'assets/images/cpr_2.png',
      'assets/images/cpr_3.png',
    ],
    youtubeVideo: 'https://www.youtube.com/watch?v=-NodDRTsV88',
    paragraph: [
      'Not many people know how to perform CPR, but an increasing number of people are dying from heart arrest.',
      'By knowing how to perform CPR, you could save somebody\'s life.',
      'CPR is extremely tiring, try to take turns with people when doing it.'
    ]
  ),
  Tutorial(
    imageUrl: 'assets/images/bleeding.png',
    title: 'Stopping bleeding',
    description:
    'If someone is bleeding heavily, then you should know how to stop the bleeding until the paramedics arrive to help them. This includes putting pressure on the wound to make sure they don\'t lose too much blood. This quiz will show you what to do.',
    screenshots: [
      'assets/images/bleeding_1.png',
      'assets/images/bleeding_2.png',
      'assets/images/bleeding_3.png',
    ],
    youtubeVideo: 'https://www.youtube.com/watch?v=NxO5LvgqZe0',
      paragraph: [
        '• Severe bleeding can occur in many situations.',
        '• It can happen when major blood vessels are punctured.',
        '• If someone loses too much blood then their blood pressure will decrease.',
        '• This can cause the person to go into shock.',
        '• Eventually this could cause death, so it is important to act fast.'
      ]
  ),
  Tutorial(
    imageUrl: 'assets/images/poison.png',
    title: 'Helping someone poisoned',
    description:
    'If someone has ingested poison, either from drinking, eating or a plant, you have to be able to give them immediate medical care, like removing the poison (if possible), and get them to hospital as soon as possible. This quiz will show you how.',
    screenshots: [
      'assets/images/poison_1.png',
      'assets/images/poison_2.png',
      'assets/images/poison_3.png',
    ],
    youtubeVideo: 'https://www.youtube.com/watch?v=b2ieb8BZJuY',
    paragraph: [
      '• Poisoning can happen for many reasons.',
      '• For example from consuming or touching plants.',
      '• It is important to get immediate medical care, as the poisoning may be more serious than you think.',
      '• Always take precautions when going to areas, such as not eating or touching unknown plants.'
    ]
  ),
];

final List<String> labels = [
  'All categories',
  'Your account',
  'About us',
];

final List<String> popular = [
  'assets/images/popular_cpr.png',
  'assets/images/popular_poison.png',
  'assets/images/popular_bleeding.png'
];

final List<String> important = [
  'assets/images/popular_bleeding.png',
  'assets/images/popular_cpr.png',
  'assets/images/popular_poison.png'
];

final List<String> all = [
  'assets/images/popular_poison.png',
  'assets/images/popular_bleeding.png',
  'assets/images/popular_cpr.png'
];

final List<String> popularLabels = [
  'CPR',
  'Poisoning',
  'Bleeding'
];

final List<String> importantLabels = [
  'Bleeding',
  'CPR',
  'Poisoning'
];

final List<String> allLabels = [
  'Poisoning',
  'Bleeding',
  'CPR'
];