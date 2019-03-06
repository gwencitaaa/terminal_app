# terminal_app
Docs for terminal app for Mahdi, Paul and Gwenny

# brainstorm
Concept: 
- app 'Where should I eat dinner?'
- recommends a restaurant nearby based on user input

Ethical considerations/societal impact:
- using publicly available data
- no IPP (identifying) data being used
= therefore, minimal societal impact 

Outcomes for MVP:
- take user input
- return a restaurant suggestion based on input 
  - Trading name, address, type of food
  
Outside MVP if time: 
- how expensive e.g. $$ vs $$$ (5 scale?)
- rating (Based on review?) e.g. 5 stars? 
- dietary options / preferences e.g. Halal, gluten free, vego
- random may repeat, how to deal with this? Decided to keep out of MVP but pursue if completed
Notes from rubric meeting (info not clear from rubric):
- 5 mins EXCL. questions
- 80% should be app walk through (check—in slide deck or live demo??)
- take screenshots of convos in slack / Trello and put in here
- record all working notes in here

# Responsibilities of group members
Discussed Tues. AM before doing structure
Everyone should add updates of what they're doing in this readme + commit as soon as changes are made
For code changes, everyone should commit once running successfully—show one other group member before doing so (live demo)
For Trello, members tick off their own tasks when done + upload screenshot to here. 

# logistics
Everyone added their branch to git hub
Trello board created
Everyone joined trello board
Everyone working in local README.md and commiting when there are changes

# Structure of code planning
=======
Assumptions:
1 user entering input
Can read and follow the instructions (but will test edge cases)
Vegetarian options included but not separateable for MVP

Parts to code: 

G to do:
Create class for Restaurant, which will have attributes for:
> Trading name @restaurant_name String
> address @restaurant_location String
> type of food  @cuisine_category String
> will be one array of hashes (one hash per restaurant)

P to do:
Create class for Flavour_types
> should be array
> has four options: hot and spicy, creamy and rich, mild and fresh

M to do:
Create class for Cuisine_types 
> should be array
> array should include all cuisine type (i.e. geographical regions)
> e.g. Chinese, Korean, Japanese, Middle Eastern (incl. Persian), Modern Australian, Pub fare, Vegetarian, Vietnamese, Cambodian, Colombian, Mexican, Chilean, Brazilian, French, German, Italian (person add as they like)

Method outside class to get input
while loop to get user input ?
def ask_opening_question 
    while user_input != 

See visual plan for user flow

Approval:
Comments from Anhar : check out geocoder gem if time
Put two classes together for food bc they're both food—we thought this seemed weird

Approval: 
received from Simon + Aaron
Yes keep classes separate (three separate ideas)

Day 2 updates
Presentation slide deck draft completed, group to go through together and divy up speaking sections
Restaurant class removed as .csv file provides all data needed
    Instead, using functions to create array of restaurants by cuisine and select random restaurant (from single cuisine group)
Master merged so files are current (e.g. Trello screenshot of progress added, updated code added, GIT cheatsheets removed)
Flavour type class completed
Cuisine type class completed

~11:45am, group meeting to pull code together into one file 

There has been a change in Application logic/flow. 'Flavour Types' class file may now not be needed as these options have been hard-coded into the Cuisine Types file
Checked code styling/format and syntax
Added a Method 