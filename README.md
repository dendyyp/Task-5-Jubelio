## Task-5 Jubelio Assessment (Comparison)

### Prerequisite
1. Ruby (Make sure you already installed ruby. To check installed ruby you can using this command `$rvm list`)
2. Cucumber (Make sure you already installed cucumber. To check you can using this command `$cucumber --version`)
3. Add this to Gemfile 
```
source 'https://rubygems.org'

gem 'capybara'
gem 'cucumber'
gem 'pry'
gem 'rspec'
gem 'webdrivers'
``` 
4. Run this command to install gem
```bundle install```
5. Add env file like this ```features/support/env.rb```
6. Run this command to install
```cucumber --init```
7. Editor (Visual Studio Code)
8. Install Cucumber extension in text editor

### How to run this automation scenarios in local
1. Clone this repo using this command:
>$ git clone https://github.com/dendyyp/Task-5-Jubelio.git
2. Open this repo in your editor
3. Open terminal in your editor
4. To run all scenario can using this command:
>$ cucumber
5. To run specific/several scenario can using run with tags like this:
>$ bundle exec cucumber -t @login

### Run in Local

#### Login

https://user-images.githubusercontent.com/45061250/223359140-7ce2996b-616f-46a1-8000-a23adb069c00.mov

#### Update product 

https://user-images.githubusercontent.com/45061250/223359290-fcebbe54-fbfc-48df-8170-a7fe08e76d36.mov

### Run Results

#### Login

<img width="868" alt="Screen Shot 2023-03-07 at 00 10 19" src="https://user-images.githubusercontent.com/45061250/223359902-a1fa913b-758e-4897-97e4-f0e86f58ce1a.png">

#### Update product stock

<img width="1077" alt="Screen Shot 2023-03-07 at 00 10 11" src="https://user-images.githubusercontent.com/45061250/223359732-5143303b-f875-47c6-9def-d3d94afab50e.png">



