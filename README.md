# SPOT
Product name: SPOT

# Team members
John Chai: Backend Developer

Preksha Munot: Frontend Developer

Evan Hsu: Backend Developer

Tilak Agarwal: Frontend Developer

Katie So: UXD Designer

# Sprint Planning 1: (pre-construction for G1 A)
1. Meeting with IS&T
2. Determine the backend language
3. Construct a new backend repo

Rationale: Focus on adjustment and data preservation from the IS&T side.

# Daily Scrum (02/26)
John Chai: Constructed backend using node and express; will establish connection to database as the next task

Preksha Munot: Research on BU authentication and front-end frameworks; plan to start constructing landing page base on design

Evan Hsu: Constructed backend using node and express; start drafting database structure base on IS&T database

Tilak Agarwal: Research on BU authentication and front-end frameworks; plan to start constructing landing page base on design

Scrum Evaluation:
We found one impediment to be the data safety preserving to be an issue when we collaborate with IS&T.
It is preventing us to develop one of the feature for G1. In order to resolve this issue, we plan to set a meeting with 
IS&T to specify details and start coding under guidance.


# Sprint Review 1
We conducted multiple meetings with our mentors and IS&T to discuss details and reached to some conclusion for data access.
Frontend framework is tbd and will set during the Monday class. We are meeting the requirements to start building G1 A and under
mentoring hope to finish G1 A by the end of next week.




# Sprint Planning 2: (construction for G1 A)
1. Meeting with Prasad (database access and construction).
2. Constructed api to pull data from IS&T successfully.
3. Design update (UXD).
4. Added Descriptions on frontend.

Rationale: We plan to (forecast) to mainly focus on completing G1 A as much as possible since it takes up 3 story points: updating the existing codebase and get the data for development purpose. We are waiting on Dharmesh to build the server so we constructed connections first with IS&T. Updated some front-end for building info. We are able to retreive the data.


# Daily Scrum (03/05)
John Chai: Meeting with IS&T and able to construct api calls to retreive data periodically from IS&T database; will do more research on web sockets and database construction.

Preksha Munot: Updated Understanding Presentation according to the feedback from mentors; updated some of the UI; will focus on the debugging and updating.

Evan Hsu: Meeting with Prassad, discussed workflow of the database; tested api calls through postman; will start building testing runs to ensure the quality of the code written.

Tilak Agarwal: Validation Exercises, summarizes findings from the surveys; updated some of the UI; will focus on the debugging and updating.

Katie So: Updated the current figma design and the design brief; keep updating the design and communication with development teams.

Scrum Evaluation:
We found some impediments to be the different database server different mentors suggested but we are able to finalize our decision in order to preserve data safety. We also notice that the frontend team need to focus on debugging as well as the previous codes have some issues.
In order to resolve this issue, we plan to set more meetings between the frontend developers and the mentors to get more used to the language and weekly coding sessions. Evidence can be found in the Google Drive Week 6 folder (a screenshot of our weekly coding session where we discussed functions to write)

Mob-Programming: the evidence can be found in the drive Week 6 folder.
Test-Driven Development: included in our code as the format of console.log() to validate the retrieval of data, marked in our updated backend code repository.

# Sprint Review 2
We obtained a working software and able to run the app server on localhost. In order to run the app, pls go to the private repository (https://github.com/Spark-Spot/Spot) and follow the readme there to see how to set up the environment and run the app. We showed our mentor Prassad and Rohit we are able to make acheivement on the backend. We finalized every stack with mentors and are able to construct the core of the backend and mange to handle continous data refreshing which is a great acheivement. We also updated some front-end code using the mocking data. We completed 70% of the G1 with some remaining front-end work to be updated. In general the developement process is moving smoothly; improvements are more meeting and coding sessions during the week since it is the beginning of the development.

# Sprint Retrospective
Improvements and feedbacks from the team: Increase communications between team members; Collect small questions during the development progress; Earlier distribution of weekly task. Meeting on Tue for 30min to discuss tasks and plans for the week. (9am-9:30am)



# Sprint Planning 4: (G6 Density by Floor& Backend enhancement)
Backend:
1. Meeting with Dharmesh & Rohit (aws rds and local server and general structure).
2. DB design and API calls design (google doc in folder)

Frontend:
1. Design update and usability tests (UXD).
2. Fully implemented listview.
3. Partially implemented favorites (able to click).

Rationale: We plan to mainly focus on starting G6, density by floor since we adjusted the priority according to the validation tests last week. We plan to create 2 api calls that retreive density by floor. Our frontend plan has been adjusted according to the amount of work on backend so we plan to bring some of the G3 into frontend work.


# Daily Scrum (03/20)
John Chai: Created and designed the new database on google doc. Implemented two more api calls for G6; after the meeting with Rohit decide to validate the aws account with instructors and start implement api calls base on the design.

Preksha Munot: Implemented css on the listview and added favorites options for each building; will start building the navigation bar and the favorites page for user preference.

Evan Hsu: Created and designed the new database on google doc; will work with John to set up aws lambda functions earlier next week.

Tilak Agarwal: Implemented css on the listview ; Fixed bugs for login page and connections to other pages. will start building the navigation bar and the favorites page for user preference.

Katie So: Updated the current figma design and the design brief; keep updating the design and communication with development teams.

Scrum Evaluation:
For this week's scrum, we planned the tasks as a team and did breakout room for frontend and backend. We accomplished the tasks we set for the day and made progress on both teams. The impediments we discovered is that the connection between frontend and backend needs to be established so starting from next week we also need to shift some focus onto the integration between frontend and backend.

Mob-Programming: the evidence can be found in the drive Week 8 folder during the daily scrum.
Test-Driven Development: Frontend developers able to see features displayed in the page (list of objects, fav heart feature, jpg of building, building name, building info); Backend developers able to create new api requests and retireve density by floor for certain building (2 api callbacks and 3 enhancement on cron tasks)

# Sprint Review 4
We are able to fully implement css for listview page and added favorites click. We met with two of our backend mentor and obtained info on constructing db on AWS RDS and also designed all api endpoints for the app. In general the developement process is moving smoothly; we intend to make great progress on backend next week and focus on integration.

# Sprint Retrospective
All teammates participated in the sprint review and discussed plans as a team. Improvements and feedbacks from the team: Development progress runing smoothly this week. Future planning at the stage is the integration of frontend and backend. We will try to establish a connection between the two.





# Sprint Planning 5: (G2 A — Nav Bar, Fav Page, Backend)
Backend:
1. Meeting with Dharmesh and Rohit (set up account on AWS and created table to store info, discuss integration).
2. Research on integration

Frontend:
1. Design update and usability tests (UXD).
2. Implement Nav bar
3. Partially implemented favorites/setting page.

Rationale: We plan to mainly focus on starting G3 A, add favorite functionality. According to the time limit we have for future dev process, we decide to expand our scope future in this week’s sprint. For backend, since we still waiting for the server to set up, we decide to create the db on AWS and then later just paste the table to that db. Our frontend plan is to implement some essential parts Navbar, Fav page and settings page. The initial set up and functionality should work by the end of this week.


# Daily Scrum (03/25)
John Chai: Created an account on AWS to manage db, connect rds with the local sql workbench, created tables for testing and real data on mysql workbench according to last week’s design. Will focus on data flow (retrieve from another db).

Preksha Munot: Implemented fav page for user preference and json issue on the frontend; will start working on the css and bug fixes for the specific page.

Evan Hsu: Researched on integration between Swift and Node.js, found resources to implement for integration; tested on the new local server set up; will work with Dharmesh to figure out some issues with the newly constructed server.

Tilak Agarwal: Implemented setting page and nav bar, raised a question about setting’s page that will be discussed in the next week’s planning meeting; will start working on the css and bug fixes for the specific page.

Katie So: Updated the current figma design and the design brief; keep updating the design and communication with development teams.



Scrum Evaluation:
For this week's scrum, as usual we distributed the tasks according to the team and work together in the zoom call. We accomplished most tasks we set for the day and made progress on both teams. The impediments we discovered this week is the lack of guidance from mentors can sometimes cause some delay on the initial work set. We need to spend lots of time researching and the server side is more complicated than we thought to implement. An impediment is to schedule a meeting time earlier in the week and reach out to more mentors for help. It is been a busy week for midterms so it is understandable.

Mob-Programming: the evidence can be found in the drive Week 9 folder during the daily scrum.

Test-Driven Development: Frontend developers able to create functional components (nav bar (3 items), setting’s page, fav page — initialization); Backend developers able to test server connections and table creations (able to connect to newly constructed local server, able to create tables for testing and product (total of 4 tables created) in schema, able to conducted research on integration and found useful resources, able to create an AWS account for project with correct settings); evidences are shown as screenshots to indicate progress.

# Sprint Review 5
Front end team did an awesome job on expanding the scope by creating almost most of the pages and set ups we need for the app. Backend team encountered some difficulties on setting up our own db but able to get the initial server set up and also did research on the integration part. In general the development process is moving smoothly; we intend to complete the data flow next week and start discussing integration with our mentors.


# Sprint Retrospective
All teammates participated in the sprint review and discussed plans as a team in the weekly sprint planning and review meeting.
Improvements and feedbacks from the team: Development progress running smoothly this week. A potential question on the functionality of settings page is brought up by one developer and we will discuss it in the next week’s sprint planning meeting. Also the icons for list view will be updated next week. Only select a few buildings on campus that are popular to implement functionality on.

s
# Sprint Planning 6: (G2 B — Fav Page CSS, Backend)
Backend:
1. Meeting with Rohit (get help for aws rds and how to implement lambda function).

Frontend:
1. Design update and usability tests (UXD).
2. Reconstructed the api part in the backend; researching to migrate the apis to aws lambda.
3. Working on favorites page, created new json file (building names addresses)

Rationale: We plan to mainly focus on starting G2 B, working on favorites data and css implementation. For backend, we reconstructed the api calls and added a few more functions that are useful for our frontend. Our frontend plan is to keep working on the favorites page css and the navbar and adjust the design according to the feedback from last week’s sprint discussion (floor density, sorting tab)


# Daily Scrum (03/30)
John Chai: Researched and learned about lambda functions on aws, meet with Rohit to checkout the current design; will focus on sending the css file to the rds db.

Preksha Munot: Keep working on the css of fav page based on the feedback from the last week; will start working on perfecting the updated css.

Evan Hsu: Reconstructed the current api system and testing of the newly implemented api endpoints; will work on the migration using aws lambda.

Tilak Agarwal: Work on the setting’s page and css; will start working on perfecting the updated css.

Katie So: Updated the current figma design and the design brief; keep updating the design and communication with development teams.


Scrum Evaluation:
For this week's scrum, as usual we distributed the tasks according to the team and work together in the zoom call. We accomplished most tasks we set for the day and made progress on both teams. The impediments we discovered this week is that we are encountering a learning curve for backend. An impediment is to reach out to mentors for help and do more research and learning.

Mob-Programming: the evidence can be found in the drive Week 10 folder during the daily scrum.

Test-Driven Development: Backend developers are able to meet testing using postman for up to date apis (floor density) the evidences can be found in Week 10 folder by screenshots.

# Sprint Review 6
Front end team kept working on the css of the fav page and setting page; encountered some difficulty on figuring out the css for the settings part. Backend team worked on creating more api calls and try to migrate the data from the local server to the rds db. In general the development process is moving smoothly; we lacks a little bit of development progress this week due to the fact that we also need to work on the presentation and other heavy courseload but will catch up next week. For stakeholder, we introduced a former user we did survey on and updated him with our progress. We obtained some feedback on the design and discussed in our meeting.


# Sprint Retrospective
All teammates participated in the sprint review and discussed plans as a team in the weekly sprint planning and review meeting.
Improvements and feedbacks from the team: Bit behind on some development goals. A few adjustments on the user story is brought up by some teammates and will discuss with mentors to figure out the best practice for the final demo day. A potential concern brought up by one of our mentors is the BU authentication page and will be recorded in our sprint planning next week.
