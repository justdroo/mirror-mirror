# Mad Lib

### Approaching this lab

First thing you want to do whenever you get to a new code base is take a look around 👀

Look at the file structure and take note of any conventions being used. For us, everything we need is contained within the `src` folder. Under that, we have four main sections: labs, lecture, spec, and trivia.
  - Lecture can come in handy if you need a reminder of what we discussed at the beginning of the module
  - Trivia contains all the trivia files and quiz builder
  - Spec houses all of our tests that we run against our lab
  - Labs are where the applications are being run

You'll notice as you look around, that there are answer keys and solved labs left in the code! If you get stuck, these are meant to guide you in the right direction. Keep in mind, this is only ONE way of completing the lab, there may be other solutions!

### Tests

Before you can successfully run the lab, you'll need to have all the tests passing. Tests are just ruby code that takes in expectations and compares it to actual outcomes. You'll want to look at the tests expectations in the `spec` folder to help you pass them.

RUNNING TESTS:
In your terminal, make sure we are in the correct location by entering `pwd`. This will print your working directory (current folder). At the end of the string you should see `/src`. If not you'll either want backup `cd ..` or dive deeper (`ls` to show all folders and files, then `cd folder_name` into the right folder)

`rspec` will run ALL the tests in all the labs. However, you can pass in a specific file to run and limit the scope to just this lab.

`rspec spec/01_data_types_and_variables_spec.rb`

What is rspec?
- Rspec is a testing framework built on ruby. It's a library maintained by other folks that allow you to import their 'gem' into your own projects so you can test you code and make sure nothing breaks unexpectedly.

### Running the lab

Once all the tests pass, you can run the lab one of two ways:

Option 1: `ruby labs/01_data_types_and_variables/runner.rb`
- We tell the computer we are running a ruby file, then pass in the location of the file we want it to run.
Option 2: `rake run_lab:1`
- Rake is a file that allows you to save and run ruby commands in the terminal. It's doing the exact same thing as option 1, but it's just a little easier to type and remember

All labs will have a shortcut like option 2, just enter the lab number after the colon.

### Bonus

Just because you finished the lab, doesn't mean there isn't more to learn! Here you will find additional and hopefully fun challenges.

- Take a look at `runner.rb`, what is this file doing? Try manipulating the code in the file and see what happens
