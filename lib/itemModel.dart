class Tutorial {
  String imageUrl;
  String title;
  String description;
  List<String> screenshots;
  String youtubeVideo;
  List<String> paragraph;
  List quiz;
  String id;

  Tutorial({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.screenshots,
    required this.youtubeVideo,
    required this.paragraph,
    required this.quiz,
    required this.id
  });
}

final List<Tutorial> tutorials = [
  Tutorial(
    id: 'cpr',
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
      '• Not many people know how to perform CPR, but an increasing number of people are dying from heart arrest.',
      '• By knowing how to perform CPR, you could save somebody\'s life.',
      '• CPR is extremely tiring, try to take turns with people when doing it.'
    ],
    quiz: [
      [
        'What do you do first on the scene?',
        [
          'Check the victim for consciousness',
          'Check the scene for safety',
          'Check that the victim is breathing',
          'Call emergency services'
        ],
        1
      ],
      [
        'In which of these situations should you perform CPR?',
        [
          'If the victim is conscious',
          'If the victim is unconscious',
          'If the victim is not breathing'
        ],
        2
      ],
      [
        'How many chest compressions should be given before rescue breaths?',
        [
          '10',
          '20',
          '30',
          '40'
        ],
        2
      ],
      [
        'What are the rules on rescue breaths?',
        [
          'Do 3 rescue breaths',
          'Do 3 rescue breaths until their chest rises',
          'Do 2 rescue breaths',
          'Do 2 rescue breaths until their chest rises'
        ],
        3
      ]
    ]
  ),
  Tutorial(
    id: 'bleeding',
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
    ],
    quiz: [
      [
        'What should you do if clothing covers the wound?',
        [
          'Leave it on',
          'Remove it if it can be removed easily',
          'Cut it off if it is difficult to remove'
        ],
        2
      ],
      [
        'What should you do if something is stuck in the wound?',
        [
          'Leave it in',
          'Remove it if it can be removed easily',
          'Remove it with force if it doesn\'t come out easily'
        ],
        0
      ],
      [
        'What type of pressure should you apply on the wound?',
        [
          'Direct pressure when there is or isn\'t an object in the wound',
          'Pressure on the sides of the wound when there is or isn\'t an object in the wound',
          'Direct pressure when no object is present, pressure from the sides when an object is present',
          'Pressure from the sides when no object is present, direct pressure when an object is present'
        ],
        2
      ],
      [
        'When someone is in shock, which of the following should you not do?',
        [
          'Keep them warm',
          'Lay them down',
          'Keep applying pressure on the wound',
          'Raise their leg above their heart even if it is injured'
        ],
        3
      ],
      [
        'After pressing down past the bandage if it is applied, how quickly should the skin colour return to normal?',
        [
          'Within 1 second',
          'Within 2 seconds',
          'Within 5 seconds',
          'Within 10 seconds'
        ],
        1
      ],
      [
        'What should you do if blood shows through the dressing?',
        [
          'Remove the bandage and reapply it',
          'Adjust the bandage by moving it',
          'Leave the bandage as it is',
          'Leave the bandage on and apply another one on top of it'
        ],
        3
      ],
      [
        'How often should you check blood circulation?',
        [
          'Every 30 seconds',
          'Every 2 minutes',
          'Every 5 minutes',
          'Every 10 minutes'
        ],
        3
      ]
    ]
  ),
  Tutorial(
    id: 'poisoning',
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
    ],
    quiz: [
      [
        'Which of these is not a sign of poisoning?',
        [
          'Nausea',
          'Abdominal pain or abdominal cramps',
          'Hyperactivity',
          'A burning sensation'
        ],
        2
      ],
      [
        'What should you ask someone if they have been poisoned?',
        [
          'What did you swallow, when and why?',
          'What did you swallow, when and how quickly did you swallow it?',
          'What did you swallow, when and how much?',
          'What did you swallow, how quickly did you swallow it and why?'
        ],
        2
      ],
      [
        'How should you go about contacting emergency services?',
        [
          'Tell them someone has been poisoned and go back to look after the poisoned person',
          'Look for clues on what the person consumed and tell the emergency services as much about it as possible',
          'Proceed to get rid of any packaging of the poison and tell emergency services there is no poison traces present',
          'Give a brief description of the poison to emergency services'
        ],
        1
      ],
      [
        'What should you not do while waiting for help?',
        [
          'Attempt to dispose of the poison',
          'Monitor the poisoned person',
          'Keep reassuring them',
          'Look for information about the poison'
        ],
        0
      ],
      [
        'What should you give someone with burnt lips?',
        [
          'Milk',
          'Orange juice',
          'A soft drink',
          'Bread'
        ],
        0
      ],
      [
        'What should you do if the person throws up?',
        [
          'Clean up their vomit',
          'Collect a sample of their vomit',
          'Take them to the toilet to throw up',
          'Force them to throw up for a larger sample'
        ],
        1
      ]
    ]
  ),
  Tutorial(
    id: 'burns',
    imageUrl: 'assets/images/burns.png',
    title: 'Treating burns',
    description: 'Burns are very common injuries, and almost everyone has been burnt before. It is very important to know how to handle burns as their is a risk of burns all around us.',
    screenshots: [
      'assets/images/burns_1.png',
      'assets/images/burns_2.png',
      'assets/images/burns_3.png'
    ],
    youtubeVideo: 'https://www.youtube.com/watch?v=Yy3QAIAzKtE',
    paragraph: [
      '• Burns are very commonplace nowadays.',
      '• They can range from non serious burns to life-threatening burns caused by fires.',
      '• After the burning has stopped, for non-serious burns, you should always run the burn under cold water.',
      '• If necessary, visit a hospital for medical help.'
    ],
    quiz: [
      [
        'Which of these should you always receive external medical care for?',
        [
          'A chemical burn',
          'A burn from an iron',
          'A burn from boiling water',
          'A burn from hot steam'
        ],
        0
      ],
      [
        'When should first aid be used to treat a minor burn or scald?',
        [
          'As soon as possible',
          'After 10 minutes',
          'After a few hours',
          'After a day'
        ],
        0
      ],
      [
        'How long should you typically run a tap over a burn for?',
        [
          '5 minutes',
          '10 minutes',
          '20 minutes',
          'an hour'
        ],
        2
      ],
      [
        'Which of these should you do?',
        [
          'Cover the burn with a blanket',
          'Run an ice cold tap over the burn',
          'Apply cream over the burn',
          'Keep the person warm'
        ],
        3
      ]
    ]
  ),
  Tutorial(
    id: 'choking',
    imageUrl: 'assets/images/choking.png',
    title: 'Helping someone choking',
    description: 'Children can choke due to curiosity with toys, and people can choke due to not being careful. This can happen to anybody, and can quickly become dangerous, so you must know what to do - acting fast is very important in this situation.',
    screenshots: [
      'assets/images/choking_1.png',
      'assets/images/choking_2.png',
      'assets/images/choking_3.png'
    ],
    youtubeVideo: 'https://www.youtube.com/watch?v=PA9hpOnvtCk',
    paragraph: [
      '• Choking is very common and not always serious.',
      '• However, if somebody cannot stop choking in a few seconds, it\'s likely they need help.',
      '• You have to apply force if somebody is choking, even if it hurts them.',
      '• This is to force the object out.'
    ],
    quiz: [
      [
        'If somebody is choking for certain, what do you do first?',
        [
          'Slap their back',
          'Ask them to cough it out',
          'Push their diaphragm in',
          'Try and push it out by strangling them'
        ],
        1
      ],
      [
        'When slapping whatever they are choking on out, where do you hit?',
        [
          'Between their shoulder blades',
          'On their ribs',
          'On the lower back'
        ],
        0
      ],
      [
        'How many times should you attempt to squeeze the object out?',
        [
          '2 times',
          '3 times',
          'Up to 5 times',
          'Up to 10 times'
        ],
        2
      ],
      [
        'What should you do if they are still choking or not responding?',
        [
          'Call emergency services',
          'Call emergency services and keep repeating back blows',
          'Keep repeating abdominal thrusts',
          'Call emergency services and keep repeating back blows and abdominal thrusts'
        ],
        3
      ]
    ]
  ),
  Tutorial(
    id: 'sprains',
    imageUrl: 'assets/images/sprainNew.png',
    title: 'Dealing with sprains',
    description: 'Sprains are a very common injury, and can be sustained by simply tripping over tree roots. They are, however, painful and knowing how to treat them is essential.',
    screenshots: [
      'assets/images/sprains_1.png',
      'assets/images/sprains_2.png',
      'assets/images/sprains_3.png'
    ],
    youtubeVideo: 'https://www.youtube.com/watch?v=yrvqNh2q6Tc',
    paragraph: [
      '• You\'ve probably sprained your ankle before.',
      '• It doesn\'t always seem serious.',
      '• However it can cause permanent damage if left untreated.',
      '• This video will show you how to deal with sprains.'
    ],
    quiz: [
      [
        'What does the \'E\' stand for in the RICE approach?',
        [
          'Exercise',
          'Elevate',
          'Emergency'
        ],
        1
      ],
      [
        'How should ice be applied?',
        [
          'Directly',
          'Wrapped in a towel',
          'Heated and melted into water'
        ],
        1
      ],
      [
        'When should ice be taken off?',
        [
          'After 5 minutes',
          'After 10 minutes',
          'After 20 minutes',
          'After half an hour'
        ],
        2
      ],
      [
        'In which case is medical assistance needed?',
        [
          'If red streaks spread out of the injured area',
          'If the injured area hurts',
          'If the injured area swells a bit'
        ],
        0
      ]
    ]
  )
];

final List<String> labels = [
  'All categories',
  'Your account',
  'About us',
  'Credits'
];

final List<String> popular = [
  'assets/images/popular_poison.png',
  'assets/images/popular_bleeding.png',
  'assets/images/popular_burns.png',
];

final List<String> important = [
  'assets/images/popular_bleeding.png',
  'assets/images/popular_cpr.png',
  'assets/images/popular_choking.png'
];

final List<String> all = [
  'assets/images/popular_poison.png',
  'assets/images/popular_bleeding.png',
  'assets/images/popular_cpr.png',
  'assets/images/popular_burns.png',
  'assets/images/popular_choking.png',
  'assets/images/sprains.png'
];

final List<String> popularLabels = [
  'Poisoning',
  'Bleeding',
  'Burns'
];

final List<String> importantLabels = [
  'Bleeding',
  'CPR',
  'Choking'
];

final List<String> allLabels = [
  'Poisoning',
  'Bleeding',
  'CPR',
  'Burns',
  'Choking',
  'Sprains'
];