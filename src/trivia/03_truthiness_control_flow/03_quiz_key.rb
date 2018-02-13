@quiz_key = {
  section_title: "Truthiness Mini Trivia",
  instructions: "Answer the questions to the best of your abilities, if you get stuck, don't forget to ask for help!",
  quiz: [
    {
      type: "multiple_choice",
      question: "What is a boolean?",
      answers: {
        a: "A binary representation of true or false",
        b: "Where ghosts go to hang out",
        c: "A 0 or 1 predictor",
        d: "A method"
      },
      solution: "a"
    },
    {
      type: "multiple_choice",
      question: "A double bang operator (!!) coerces data into:",
      answers: {
        a: "True",
        b: "False",
        c: "True or False",
        d: "True or False or nil"
      },
      solution: "c"
    },
    {
      type: "multiple_choice",
      question: "A string in ruby is considered:",
      answers: {
        a: "Truthy",
        b: "Falsey",
        c: "Truthy unless it is empty",
        d: "Falsey unless it is empty"
      },
      solution: "a"
    },
    {
      type: "multiple_choice",
      question: "What are the only values in Ruby that are considered falsey?",
      answers: {
        a: "Empty Strings and 0",
        b: "False and nil",
        c: "0 and nil ",
        d: "False, 0 and nil"
      },
      solution: "b"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of the statement:
      6 > 9 || 4 < 5",
      answers: {
        a: "True",
        b: "False",
        c: "nil"
      },
      solution: "a"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of the statement:
      2 > 5 && 7 < 12",
      answers: {
        a: "True",
        b: "False",
        c: "nil"
      },
      solution: "b"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of the statement:
      7 == 7.5",
      answers: {
        a: "True",
        b: "False",
        c: "nil"
      },
      solution: "b"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of the statement:
      !'Hello World'",
      answers: {
        a: "True",
        b: "False",
        c: "nil"
      },
      solution: "b"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of the statement:
      !! 7 < 3",
      answers: {
        a: "True",
        b: "False",
        c: "nil"
      },
      solution: "b"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of the statement:
      81 >= (!45 - 6) || (!8 && !!'hello world')",
      answers: {
        a: "True",
        b: "False",
        c: "nil"
      },
      solution: "c"
    }
  ]
}
