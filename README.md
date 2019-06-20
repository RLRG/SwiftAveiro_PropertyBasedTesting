# SwiftAveiroTheHotelBuffet
:fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish:

This is the repository that you need to checkout to follow the *"Bacallao Property-Based Testing"* workshop at SwiftAveiro 2019.

Sit down and enjoyyyy !!!!

## Getting ready !!
### Requirements
* Xcode 10.2
* iOS 12.2 SDK
* Swift 5
* Kahoot - download app or have the website https://kahoot.it next to you ! We'll have a nice time at the end of the session for sure !
### Getting the code
In order to build, run and access the code for the workshop, the first thing you have to do is to clone this repository:
```
git clone https://github.com/RLRG/SwiftAveiro_PropertyBasedTesting.git
```

### Running the tests
Open `SwiftAveiroTheHotelBuffet.xcworkspace` with XCode 10.2. Then, run the tests by going to the menu "Product -> Test". The initial project just have a fake test. This will ensure that everything is working fine for you !

## Workshop
This workshop is divided in two main parts:
1. The first one is the introduction to the concept "Property-Based Testing" and the iOS framework SwiftCheck and the main purpose of it is to understand what we will be doing at a later stage with a real simple project, ie, this is the needed preparation for the second part! More details about this first part can be found in the corresponding paragraphs:
  - Introduction
  - Sum properties
  - Playing with SwiftCheck
2. The fun starts here by programming a real simple app called "Bacallao Hotel Buffet". We will be doing pair-programming and I'm sure you'll get a super high code coverage ! More details about this first part can be found in the corresponding paragraphs:
  - Real Project: Bacallao Property-Based Testing
  - Kahoot + Sum up !

### Introduction (15')
We are going to start the workshop by introducing a little bit the foundation and main concept of *"Property-Based Testing"*:
- What is it?
- Why and when is it useful?
- How does it work?

### Sum Properties (15')
After the theoretical introduction about Property-Based testing, we, all, will be programming the SUM properties, which is a use case which is used a lot in the blogging community to understand the basics of this testing philosophy.

This way, you will be able to understand how the iOS framework works and you will be able to see the syntax on how we need to program this kind of tests.

### Playing with SwiftCheck (15')
*Time for you to play guys !* :fish:

The idea from now on is that you can play a little bit with the code we have just written for the Sum Properties exercise. Some ideas:
- Make the tests fail
- Analyze the logs by printing some values
- Write one stupid test to get used to the syntax with other type of input parameters (String, etc.)

Moreover, the purpose is to investigate a little bit about the framework (https://github.com/typelift/SwiftCheck), read a bit the documentation so that you are able to complete the following exercises !

Here you go with the exercises (don't worry if you don't get them all, I'll provide the solution before we start the next section !):

#### EXERCISE 1
*Add logs to see what is being tested:* Apart from adding the "print" statement to the inside code of the test, there is a clever way to do is provided by the framework itself. How can we do it?

#### EXERCISE 2
*Modify default number of executions:* The first thing you need to ask yourself is: "What is the default number of executions?". After you get it, try to find out the way you can modify it, the framework provides a way to change it !

#### EXERCISE 3:
*Analyze shrinking:* Make a test fail (example: “any INT is < 50”) in order to see in the logs how shrinking works.

#### EXERCISE 4:
*Create a custom generator which generate Ints between 25 and 50.*


Before going to the next section, I am going to give you a complete example solution so you can compare your results ! :)

### Real Project: Bacallao Property-Based Testing (60')
*Time for fun !* :fish:

This exercise is highly recommended to do it pairs (*pair programming!*) to share ideas since it is important to remark that there can be many different solutions for this exercise !

*Some hints*
1. Start by looking at the real code so that you understand what we need to test.
2. The next recommended step is to think what are the properties for the Client model struct. When you have two or three: implement them !
3. Do the same with the Waiter (it's the same as the Client!).
4. Follow the same approach you followed for the two previous classes but now with the HotelBuffet logic.

--> What is the *code coverage* you have got at the end of the session ? While you are programming the tests, check this out !

Before going to the next section, I am going to give you a complete example solution so you can compare your results ! :)

### KAHOOT + SUM UP ! (15')
*Time for the contest!*

We will close this session with a contest among all the participants to check who is the one who was paying better attention to the mentor :sunglasses: We'll check also in this test who is the fastest one answering the quiz questions !!

So, take your mobile Kahoot app or just go to the website https://kahoot.it and pay attention to the Game PIN I'll give you.

IMPORTANT TO NOTE: The winner will have a *nice prize from adidas* :) !

## Feedback
As I am continuously learning and improving, I would appreciate if you can give me some valuable feedback :smiley:
In order to do so, I have created a SurveyMonkey, it's just one minute !
https://es.surveymonkey.com/r/QGCR5JK

:fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish: :fish:
