def quiz
  @quiz_key
end

@quiz_key = [
  {
    type: "multiple_choice",
    question: "'Hello World' - is what type of data?",
    answers: {
      a: "String",
      b: "Integer",
      c: "Hash"
    },
    solution: "a"
  },
  {
    type: "multiple_choice",
    question: "56 - is what type of data?",
    answers: {
      a: "String",
      b: "Integer",
      c: "Array"
    },
    solution: "b"
  },
  {
    type: "multiple_choice",
    question: "'74' - is what type of data?",
    answers: {
      a: "String",
      b: "Integer",
      c: "Symbol"
    },
    solution: "a"
  },
  {
    type: "multiple_choice",
    question: "['Celery', 'Apples', 'Bananas'] - is what type of data?",
    answers: {
      a: "String",
      b: "Hash",
      c: "Array"
    },
    solution: "c"
  },
  {
    type: "short_answer",
    question: "Enter an integer other than 0",
    solution: "type_of_integer",
    hint: "an integer is just a number"
  }
]
