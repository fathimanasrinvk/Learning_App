final List<Map<String, dynamic>> easyQuestions = [
  {
    'question': "Which sentence is grammatically correct?",
    'options': {
      "She do not like pizza": true,
      "She does not like pizza": false,
      "She do not likes pizza.": false,
      "She is not liking pizza": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question': "Which word is a pronoun?",
    'options': {
      "Run": false,
      "Beautiful": false,
      "They": true,
      "Quickly": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "What is the correct form of the plural for 'child'?",
    'options': {
      "Childs": false,
      "Childs": false,
      "Children": true,
      "Childers": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
     {
    'question': "Identify the conjunction in the following sentence: 'I wanted to go to the party, but I had to finish my homework.'",
    'options': {
      "wanted": false,
      "and": true,
      "but": false,
      "had": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "Which of the following is a preposition?",
    'options': {
      "Quickly": true,
      "Under": false,
      "Singing": false,
      "Happy": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question': "What is the comparative form of the adjective 'good'?",
    'options': {
      "Gooder": false,
      "Better": true,
      "Best": false,
      "Goodest": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question': "Which sentence is in the past tense?",
    'options': {
      "I am running.": false,
      "I will run.": false,
      " I run.": false,
      "I ran.": true,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "Choose the correct possessive form: 'The car belongs to Sarah and John.'",
    'options': {
      " Sarah's and John car": false,
      "Sarah's and John's car": true,
      "  Sarah and John car": false,
      "Sarah and John's car": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
    {
    'question': "What is the antonym of 'vivid'?",
    'options': {
      "Dull": true,
      "Colorful": false,
      "  Bright": false,
      "Vivacious": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "Identify the adverb in the following sentence: 'She sang beautifully.'?",
    'options': {
      "She": false,
      "Beautifully": true,
      "  Sang": false,
      "Song": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  // Add more questions here
];

final List<Map<String, dynamic>> mediumQuestions = [
  {
    'question': "What is a synonym for 'happy'?",
    'options': {
      'Sad': false,
      'Joyful': true,
      'Angry': false,
      'Tired': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question': "Choose the synonym for 'abundant.'",
    'options': {
      'Scarce': false,
      'Plentiful': true,
      'Limited': false,
      'Sparse': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
    {
    'question': "Which word is a synonym for 'brave'?",
    'options': {
      'Fearful': false,
      'Courageous': true,
      'Timid': false,
      'Shy': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "Identify the synonym for 'knowledge.'",
    'options': {
      'Ignorance': false,
      'Wisdom': true,
      'Confusion': false,
      'Stupidity': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "What is a synonym for 'celebrate'?",
    'options': {
      'Mourn': false,
      'Commemorate': true,
      'Lament': false,
      'Bemoan': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "Choose the correctly phrased sentence: 'Between you and me, the decision was made.'",
    'options': {
      'Between you and I, the decision was made.': false,
      'Between you and me, the decision was made.': true,
      'Between I and you, the decision was made.': false,
      'Between me and you, the decision was made.': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "Select the properly phrased sentence: 'I have never been to that city before.'",
    'options': {
      "I haven't never been to that city before.": false,
     " I haven't ever been to that city before.": false,
      " I never haven't been to that city before.": false,
      'I have never been to that city before.': true,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "Identify the correctly phrased sentence: 'The dog ran quickly through the yard.'",
    'options': {
      'The dog quickly ran through the yard.': false,
      'Quickly the dog ran through the yard.': false,
      ' The quickly dog ran through the yard.': false,
      ' The dog ran quickly through the yard.': true,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question': "Choose the properly phrased sentence: 'She sings well.'",
    'options': {
      'She sings good.': false,
      ' She sings goodly.': false,
      ' She sings well.': true,
      '  She sings gooder.': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
    {
    'question': "Identify the correctly phrased sentence: 'The meeting was attended by both Peter and me.'",
    'options': {
      'The meeting was attended by both Peter and I.': false,
      ' The meeting was attended by both Peter and me.': true,
      '  The meeting was attended by both me and Peter.': false,
      '   The meeting was attended by both I and Peter.': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  // Add more questions here
];

final List<Map<String, dynamic>> hardQuestions = [
  {
    'question':
        "Convert the sentence 'The cake was baked by Mary' to the active voice.",
    'options': {
      "Mary was baking the cake.": false,
      "Mary baked the cake.": true,
      "The cake baked Mary.": false,
      "Mary has been baking the cake.": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question':
        "Rewrite the sentence 'A story was told by the teacher' in the active voice.",
    'options': {
      "The teacher telling a story.": false,
      "The teacher told a story.": true,
      "A story was telling the teacher.": false,
      "The teacher was telling a story.": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
 
  {
    'question':
        "Transform the sentence 'The prize will be awarded by the principal' into the active voice.",
    'options': {
      "The principal awarded the prize.": true,
      "The prize being awarded by the principal.": false,
      "  The principal was awarding the prize.": false,
      "The prize will award the principal.": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question': "Convert the sentence 'The movie was watched by millions of people' to the active voice.",
    'options': {
      'Millions of people watched the movie.': true,
      'The movie was watching millions of people.': false,
      'The movie watched millions of people.': false,
      'Watching by millions of people was the movie.': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question': "Change the sentence 'She eats lunch at 12:00 every day' to the past tense.",
    'options': {
      'She ate lunch at 12:00 every day.': true,
      'She eats lunch at 12:00 every day.': false,
      'She eating lunch at 12:00 every day.': false,
      'She will eat lunch at 12:00 every day.': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
   {
    'question':
        "Rewrite the sentence 'They will visit the museum next week' in the present continuous tense.",
    'options': {
      "They visited the museum next week.": false,
      "They will be visiting the museum next week.": true,
      "They visit the museum next week.": false,
      "They are visiting the museum next week.": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question':
        "Convert the sentence 'I am studying for my exams' to the future tense.",
    'options': {
      " I studied for my exams.": false,
      "I will study for my exams.": true,
      "I study for my exams.": false,
      "I will be studying for my exams.": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
 
  {
    'question':
        "Transform the sentence 'He has finished his homework' into the present perfect continuous tense.",
    'options': {
      "He finishes his homework.": false,
      "He has been finishing his homework.": true,
      "  He finished his homework.": false,
      "He will finish his homework.": false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question': "Convert the sentence 'The movie was watched by millions of people' to the active voice.",
    'options': {
      'Millions of people watched the movie.': true,
      'The movie was watching millions of people.': false,
      'The movie watched millions of people.': false,
      'Watching by millions of people was the movie.': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  {
    'question': "Change the sentence 'The sun rises in the east' to the future tense.",
    'options': {
      'The sun will rise in the east.': true,
      'The sun rises in the east.': false,
      'The sun is rising in the east.': false,
      'The sun will be rising in the east.': false,
    },
    'selectedAnswer': null,
    'answeredCorrectly': false,
  },
  // Add more questions here
];
