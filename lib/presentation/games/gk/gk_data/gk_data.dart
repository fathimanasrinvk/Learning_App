class GkQuestion {
  final String question;
  final List<String> options;
  final String answer;

  GkQuestion({
    required this.options,
    required this.answer,
    required this.question,
  });
}

final List<GkQuestion> easyQuestions = [
  GkQuestion(
    question: "Which sentence is grammatically correct?",
    options: [
      "She do not like pizza",
      "She does not like pizza",
      "She do not likes pizza.",
      "She is not liking pizza"
    ],
    answer: "She do not like pizza",
  ),
  GkQuestion(
    question: "Which word is a pronoun?",
    options: [' Run', 'Beautiful', ' They', ' Quickly'],
    answer: "They",
  ),
  GkQuestion(
    question: "What is the correct form of the plural for 'child'?",
    options: [
      ' Childs',
      'Childs',
      'Children',
      'Childers',
    ],
    answer: "Children",
  ),
  GkQuestion(
    question:
        "Identify the conjunction in the following sentence: 'I wanted to go to the party, but I had to finish my homework.",
    options: [' wanted', 'and', 'but', ' had'],
    answer: "but",
  ),
  GkQuestion(
    question: "Which of the following is a preposition?",
    options: ['Quickly', ' Under', 'Singing', ' Happy'],
    answer: "Under",
  ),
  GkQuestion(
    question: "What is the comparative form of the adjective 'good'?",
    options: [' Gooder', ' Better', ' Best', ' Goodest'],
    answer: "Better",
  ),
  GkQuestion(
    question: "Which sentence is in the past tense?",
    options: [' I am running.', ' I will run.', ' I run.', 'I ran.'],
    answer: "I ran.",
  ),
  GkQuestion(
    question:
        "Choose the correct possessive form: 'The car belongs to Sarah and John.'",
    options: [
      " Sarah's and John car",
      " Sarah's and John's car",
      " Sarah and John car",
      " Sarah and John's car"
    ],
    answer: " Sarah's and John's car",
  ),
  GkQuestion(
    question: "What is the antonym of 'vivid'?",
    options: ['Dull', ' Bright', 'Colorful', ' Vivacious'],
    answer: " Dull",
  ),
  GkQuestion(
    question:
        "Identify the adverb in the following sentence: 'She sang beautifully.'",
    options: ['She', ' Beautifully', ' Sang', ' Song'],
    answer: " Beautifully",
  ),
];
final List<GkQuestion> mediumQuestions = [
  GkQuestion(
    question: "What is a synonym for 'happy'?",
    options: [
      'Sad', ' Joyful', ' Angry', ' Tired'
    ],
    answer: "Joyful",
  ),
  GkQuestion(
    question: "Choose the synonym for 'abundant.'",
    options: [' Scarce', ' Plentiful', ' Limited', ' Sparse'],
    answer: "Plentiful",
  ),
  GkQuestion(
    question: "Which word is a synonym for 'brave'?",
    options: [
     ' Fearful', 'Courageous', ' Timid', 'Shy'
    ],
    answer: "Courageous",
  ),
  GkQuestion(
    question:
        "Identify the synonym for 'knowledge.'",
    options: [' Wisdom', 'Ignorance', ' Confusion', ' Stupidity'],
    answer: "Wisdom",
  ),
  GkQuestion(
    question: "What is a synonym for 'celebrate'?",
    options: [' Mourn', ' Commemorate', ' Lament', ' Bemoan'],
    answer: "Commemorate",
  ),
  GkQuestion(
    question: "Choose the correctly phrased sentence: 'Between you and me, the decision was made.'",
    options: [" Between you and I, the decision was made.", " Between you and me, the decision was made.", " Between I and you, the decision was made.", "Between me and you, the decision was made."],
    answer: "Between you and me, the decision was made.",
  ),
  GkQuestion(
    question: "Which sentence is in the past tense?",
    options: [' I am running.', ' I will run.', ' I run.', 'I ran.'],
    answer: "I ran.",
  ),
  GkQuestion(
    question:
        "Select the properly phrased sentence: 'I have never been to that city before.'",
    options: [
     " I haven't never been to that city before.", " I haven't ever been to that city before.", "I never haven't been to that city before.", "I have never been to that city before."
    ],
    answer: " I have never been to that city before.",
  ),
  GkQuestion(
    question: "Identify the correctly phrased sentence: 'The dog ran quickly through the yard.'",
    options: [" The dog quickly ran through the yard.", " Quickly the dog ran through the yard.", " The quickly dog ran through the yard.", "The dog ran quickly through the yard."],
    answer: " The dog ran quickly through the yard.",
  ),
  GkQuestion(
    question:
        "Choose the properly phrased sentence: 'She sings well.'",
    options: [" She sings good.", " She sings well.", " She sings goodly.", "She sings gooder."],
    answer: " She sings well.",
  ),

];
final List<GkQuestion> hardQuestions = [
  GkQuestion(
    question: "Convert the sentence 'The cake was baked by Mary' to the active voice.",
    options: [
      " Mary was baking the cake.", " Mary baked the cake.", "The cake baked Mary.", " Mary has been baking the cake."
    ],
    answer: " Mary baked the cake.",
  ),
  GkQuestion(
    question: "Rewrite the sentence 'A story was told by the teacher' in the active voice.",
    options: ["The teacher telling a story.", "The teacher told a story.", " A story was telling the teacher.", "The teacher was telling a story."],
    answer: "The teacher told a story.",
  ),
  GkQuestion(
    question: "Change the sentence 'The letter has been written by him' to the active voice.",
    options: [
     " He has written the letter.", " He wrote the letter.", " The letter wrote him.", "Written by him is the letter."
    ],
    answer: "He has written the letter.",
  ),
  GkQuestion(
    question:
        "Transform the sentence 'The prize will be awarded by the principal' into the active voice.",
    options: [" The principal awarded the prize.", " The prize being awarded by the principal.", "The principal was awarding the prize.", " The prize will award the principal."],
    answer: "The principal awarded the prize.",
  ),
  GkQuestion(
    question: "Convert the sentence 'The movie was watched by millions of people' to the active voice.",
    options: [" Millions of people watched the movie.", " The movie was watching millions of people.", "The movie watched millions of people.", "Watching by millions of people was the movie."],
    answer: "Millions of people watched the movie.",
  ),
  GkQuestion(
    question: "Change the sentence 'She eats lunch at 12:00 every day' to the past tense.",
    options: [" She ate lunch at 12:00 every day.", " She eats lunch at 12:00 every day.", " She eating lunch at 12:00 every day.", "She will eat lunch at 12:00 every day."],
    answer: " She ate lunch at 12:00 every day.",
  ),
  GkQuestion(
    question: "Rewrite the sentence 'They will visit the museum next week' in the present continuous tense.",
    options: [" They visited the museum next week.", " They will be visiting the museum next week.", " They visit the museum next week.", " They are visiting the museum next week."],
    answer: "They will be visiting the museum next week.",
  ),
  GkQuestion(
    question:
        "Convert the sentence 'I am studying for my exams' to the future tense.",
    options: [
    " I studied for my exams.", "I will study for my exams.", " I study for my exams.", " I will be studying for my exams."
    ],
    answer: " I will study for my exams.",
  ),
  GkQuestion(
    question: "Transform the sentence 'He has finished his homework' into the present perfect continuous tense.",
    options: [" He finishes his homework.", " He has been finishing his homework.", " He finished his homework.", "He will finish his homework."],
    answer: " He has been finishing his homework.",
  ),
  GkQuestion(
    question:
        "Change the sentence 'The sun rises in the east' to the future tense.",
    options: [" The sun will rise in the east.", " The sun rises in the east.", " The sun is rising in the east.", "The sun will be rising in the east."],
    answer: " The sun will rise in the east."
  ),

];
