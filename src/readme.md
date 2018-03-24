# Programming Workshop

These are instructions for setting up the 'intro to programming' code and running it locally. We'll discuss downloading the files, installing dependencies and tools, and running the commands

## Setup

### Clone/Download the code

There are two options for getting the code on your local computer. You may use git if you feel comfortable with this, otherwise you can download the raw files.

#### Downloading a Zip file
On the right hand side, click the green 'Clone or Download' button. On the dropdown, select 'Download Zip'.

This will automatically begin the download of all the files needed for this lab. From here, unzip the files and move the folder to wherever you want to keep your code. My suggestion is under `User/Name/` create a folder called `Code` and keep all your projects contained within there.

#### Using Git
If you feel comfortable with git in the command line, clone the repo down. You will need to do this from the [main repository page](https://github.com/justdroo/mirror-mirror Teach Materials for Intro to Programming by justdroo)

For more information on this method, take a look at the [Github Documentation](https://help.github.com/articles/cloning-a-repository/)

### Installing dependencies

#### Tools
You will need a command line and a text editor for this workshop.

Command line - Mac comes pre-installed with 'terminal' and PC comes with 'cmd'. However there are many other free alternatives like 'iterm2'

Text Editor - Both Mac & PC come with a text editor, however I suggest you download either 'Atom' or 'Sublime'. Both free options come out of the box with more useful features than the standard text editor like syntax highlighting.

#### Ruby
If you are on a Mac, ruby should come pre-installed. You can verify this by typing `ruby -v` into the terminal and it should tell you the version you are on.

If you are on a PC, you can use RubyInstaller to install the language:
https://rubyinstaller.org/

If you are having trouble running commands, check to make sure you are using version 2.4.0 by typing `ruby -v` into the terminal. If not, you'll need to download the Ruby Version Manager.
http://codingpad.maryspad.com/2017/04/29/update-mac-os-x-to-the-current-version-of-ruby/

#### Rspec
Once you have ruby installed, you'll need to build the testing framework used for the labs. Installing ruby should include the `gem` module for downloading libraries.

In the command line, type `cd ~` to change the directory to your home folder. Next type, `gem install rspec` - you may be asked for the administrative password.

### Running commands

BE SURE YOU ARE IN THE `src` FOLDER! Running commands outside of this folder will result in errors or seeing 0 examples on the tests.

- `pwd` - print working directory, tells you which folder you are currently in
- `cd folder` - change directory to folder
- `cd ..` - go up one directory
- `ls` - list all folders and files in this directory

#### Trivia

Trivia is built through a quiz generator contained within the `trivia` folder. By calling the runner file from a section folder, we can run the trivia game from the terminal.

`ruby trivia/01_data_types_and_variables/runner.rb`

or through the rake shortcut

`rake run_trivia:1`

#### Labs

There are two parts to each lab, the actually running of the application and the tests. Every lab comes with a readme. See this readme for instructions on the lab and for specific commands to run the lab and tests.

Running the application - to run the application, you can call the runner file in the appropriate file.

`ruby labs/01_data_types_and_variables/runner.rb`

or through the rake shortcut

`rake run_lab:1`

After running the lab, you'll probably notice errors in the terminal. This is okay! Read what the error says and try to figure out what went wrong and where (hint: it gives you a file and line number). Use the tests to help you out. Once all the tests pass, the lab should work.

Run tests by calling rspec on the spec file for the associated lab.

`rspec spec/01_data_types_and_variables_spec.rb`

### Having Trouble?
All the lecture notes are contained in the 'lecture' folder as well as under the 'lecture-screenshots' folder

Check your ruby version `ruby -v`, it should be version 2.4.0 - if not you may need to update.

Are you in the `src` folder?

Don't forget, labs come with a solved version if you're really getting stuck. This is just one way of solving the lab though! There are hundreds of ways to make these labs work.

Still struggling? Getting stuck on configuration issues? Let me know and I can help you out!
- Send me a DM on twitter: https://twitter.com/just_droo
- Schedule a time to speak: https://calendly.com/just_droo
