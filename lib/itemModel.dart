class Tutorial {
  String imageUrl;
  String title;
  String description;
  List<String> screenshots;
  String youtubeVideo;
  List<String> paragraph;
  List quiz;

  Tutorial({
    this.imageUrl,
    this.title,
    this.description,
    this.screenshots,
    this.youtubeVideo,
    this.paragraph,
    this.quiz
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
          'What, did you swallow, when did you swallow it and why did you swallow it',
          'What did you swallow, when did you swallow it and how quickly did you swallow it',
          'What did you swallow, when did you swallow it and how much did you swallow',
          'What did you swallow, how quickly did you swallow it and why did you swallow it'
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