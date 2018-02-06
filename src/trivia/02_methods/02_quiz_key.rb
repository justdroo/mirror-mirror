@quiz_key = {
  section_title: "Methods",
  instructions: "Answer the questions to the best of your abilities, if you get stuck, don't forget to ask for help!",
  quiz: [
    {
      type: "short_answer",
      question: "Define a method called, 'say_hello'",
      solution: "define_method",
      hint: "DEFine it "
    },
    {
      type: "short_answer",
      question: "Define a method called, 'say_hello' that accepts one argument of name",
      solution: "accept_argument",
      hint: ""
    },
    {
      type: "multiple_choice",
      question: "What is the correct way to define an optional or default argument?",
      answers: {
        a: "(name: 'Dr.Oo')",
        b: "(name = 'Dr. Oo')",
        c: "(name % Dr. Oo"
      },
      solution: "b"
    },
    {
      type: "multiple_choice",
      question: "Given a method:
      def welcome(name = 'student', language)
        puts 'Hello' + name + 'welcome to our class on ' + language
      end

      what is the output of:
      welcome('ruby')",
      answers: {
        a: "Hello ruby welcome to our class on language",
        b: "ERROR: undefined variable 'language'",
        c: "Hello student welcome to our class on ruby"
      },
      solution: "c"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of 'Hello World'",
      answers: {
        a: "Hello World",
        b: "string",
        c: "nil"
      },
      solution: "a"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of 'my_age = 300 + 1'",
      answers: {
        a: "my_age",
        b: "301",
        c: "integer"
      },
      solution: "b"
    },
    {
      type: "multiple_choice",
      question: "What is the return value of 'puts `Hello world, I am 301 years old`?'",
      answers: {
        a: "string",
        b: "Hello world, I am 301 years old",
        c: "nil"
      },
      solution: "c"
    },
    {
      type: "multiple_choice",
      question: "Given a method:
      def greeting(holiday)
        puts `Happy \#{holiday}!`
      end

      What is the return value of:
      greeting('Monday')",
      answers: {
        a: "nil",
        b: "Happy Monday",
        c: "puts `Happy Monday`"
      },
      solution: "a"
    },
    {
      type: "multiple_choice",
      question: "Given a method and invocation of:
      def i_love_ruby
        puts `Do I love ruby?`
        false
        true
      end

      What is the return value of this method?",
      answers: {
        a: "Do I love ruby?",
        b: "false",
        c: "true"
      },
      solution: "c"
    },
    {
      type: "multiple_choice",
      question: "Given a method and invocation of:
      def i_love_ruby
        puts `Do I love ruby?`
        return true
        value_to_return = false
      end

      What is the return value of this method?",
      answers: {
        a: "Do I love ruby?",
        b: "false",
        c: "true"
      },
      solution: "c"
    }
  ]
}
