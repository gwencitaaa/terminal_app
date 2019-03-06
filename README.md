# terminal_app
Docs for terminal app for Mahdi, Paul and Gwenny

# brainstorm
Concept: 
- app 'Where should I eat dinner?'
- recommends a restaurant nearby based on user input

Ethical considerations/societal impact:
- app is using publicly available data
- no senstiive, unique or personal information being collected from users or used in app
= therefore, minimal negative risk of societal impact 

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
SPRINT: individual parts to code

Screenshot from Trello, end of Day 1 (sprints not labelled yet):
![Screenshot from Trello, Day 1 (sprints not lablled yet)](https://raw.githubusercontent.com/gwencitaaa/terminal_app/master/Trello_screenshot_Day2AM_progress.png)

G to do:
Create class for Restaurant, which will have attributes for:
> Trading name @restaurant_name String
> address @restaurant_location String
> type of food  @cuisine_category String
> will be one array of hashes (one hash per restaurant)

Day 2 update: 
> Class removed because data from csv was sufficient + this was a faster option 
> For future considerations, we would do it as a class so it was more maintainable and flexible
> Instead of class, .csv file reading method was used + called, allowing data from csv on restaurants to be used in file
    > File reading method allowed us to create hashes of restaurants from the csv data
    > These restaurant hashes could then be organised according to their cuisine type
    > From cuisine type, we could then make a random selection of a restaurant to recommend to the user


P to do:
Create class for Flavour_types
> should be array
> has four options: hot and spicy, creamy and rich, mild and fresh

Day 2 update: 
> Group came together for creating master file and going over what we had to work with 
> Cuisine types had method for flavour type hard-coded, so group agreed to remove the Flavour_types class as it was no longer needed
> File was left in Github master branch for record

M to do:
Create class for Cuisine_types 
> should be array
> array should include all cuisine type (i.e. geographical regions)
> e.g. Chinese, Korean, Japanese, Middle Eastern (incl. Persian), Modern Australian, Pub fare, Vegetarian, Vietnamese, Cambodian, Colombian, Mexican, Chilean, Brazilian, French, German, Italian (person add as they like)

Day 2 update:
> arrays created to give random selection of 3 cuisine types
> user can accept these or get a new set
> 12 cuisines hard-coded that arrays rotate through


Method outside class to get input
while loop to get user input ?
def ask_opening_question 
    while user_input != 
Day 2 update: M completed and debugged
group made changes to spelling, language + some variable names so they were more descriptive
in interests of time, some were left general.

User flow
We did a user flow at task level
See visual plan for user flow in slide deck, screenshot 'Task flow diagram'

Approval:
Comments from Anhar : check out geocoder gem if time
Put two classes together for food bc they're both food—we thought this seemed weird
After going through different processes, agreed

Approval: 
received from Simon + Aaron
Yes keep classes separate (three separate ideas)—changed as per previous notes

Day 2 updates
Presentation slide deck draft completed, group to go through together and divy up speaking sections
Restaurant class removed as .csv file provides all data needed
    Instead, using functions to create array of restaurants by cuisine and select random restaurant (from single cuisine group)
Master merged so files are current (e.g. Trello screenshot of progress added, updated code added, GIT cheatsheets removed)
Flavour type class in progress
Cuisine type class completed

~11:45am, group meeting to pull code together into one file 

3pm update
SPRINT: Group coding for Master file
All individual parts completed, commencing Master file sprint