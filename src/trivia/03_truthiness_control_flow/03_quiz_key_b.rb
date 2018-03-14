@quiz_key_b = {
  section_title: "Control Flow Mini Trivia",
  instructions: "LALALLA",
  quiz: [
    {
      type: "multiple_choice",
      question: "Anyone who uses your app must be over a certain age,

      Which conditional would best handle this logic?",
      answers: {
        a: "If statement",
        b: "Case statement",
        c: "Times statement",
        d: "Loop"
      },
      solution: "a"
    },
    {
      type: "multiple_choice",
      question: "A blog post may have 5 potential states:
      DRAFT
      PREVIEW
      PUBLISHED
      SCHEDULED
      DELETED

      Which conditional would best handle the logic of
      showing options based on the state of a blog post?",
      answers: {
        a: "If statement",
        b: "Case statement",
        c: "Incrementing loop",
        d: "While statement"
      },
      solution: "b"
    },
    {
      type: "short_answer",
      question: "In order to buy girl scout cookies,
      money_in_wallet must be greater than cost_of_cookies.

      Fill in the blanks of this conditional statement:

      ___ ___ ___ ___
          print 'Here are your cookies!'
      else
          print 'No thin mints for you!'
      end",
      solution: "if_statement",
      hint: "Look at the errors above"
    },
    {
      type: "multiple_choice",
      question: "As part of our SingHappyBirthday class,
      we have a method called `are_you(age)` that prints out
      Are you 1?
      Are you 2?
      Are you 3?
      ...

      until we hit the birthday persons age.

      Which conditional would best handle this logic?",
      answers: {
        a: "If statement",
        b: "Case statement",
        c: "Infinite loop",
        d: "Incrementing loop"
      },
      solution: "d"
    },
    {
      type: "short_answer",
      question: "We are creating a childrens electronic toy
      that will print out what an animal says

      Fill in the blanks of this conditional statement:

      animal = 'cow'

      ___  ___
      when 'dog'
        puts 'woof'
      when 'cat'
        puts 'meow'
      when 'cow'
        puts 'moo'
      default
        puts 'wat?!?!'
      end",
      solution: "case_statement",
      hint: "Look at the errors above"
    },
    {
      type: "multiple_choice",
      question: "What is an infinite loop?",
      answers: {
        a: "A wormhole in your computer",
        b: "A relative statement",
        c: "A statement that will never terminate",
        d: "A methodical style of coding"
      },
      solution: "c"
    }
  ]
}
