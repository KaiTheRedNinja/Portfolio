# DecisionMaker

@Metadata {
    @PageImage(purpose: icon, source: "Empty_AppIcon", alt: "Empty App Icon")
}

DecisionMaker is an AI-powered app designed to help users make decisions. It won the Best Pre-University Project 
award during the 2022 Hack 'n' Roll hackathon.

## Details

Visit the [devpost](https://devpost.com/software/team-cak-e-dscn) for full details

### Inspiration

We use so much cutting-edge technology in our daily lives. To locate a friend in the same building we bounce signals off of literal supercomputers roaming around in space. However, there is one key aspect of our lives that technology has not touched yet.

Decision making. The most important core aspect of our lives. The sole thing that determines how successful one is and the legacy we leave behind. There haven't been any revisions to the system of decision making. When even our most cutting edge technology, machine learning, is used by machines to make decisions, why shouldn't we individuals have the ability to use technology to aid us in the process of decision making.

### What it does

Our app has four main key features: Randomisation, Decision Matrix, Reinforcement, and Pros and Cons

#### Randomisation
- Coin Flip
- Dice Roll
- Magic 8 Ball

#### Decision Matrix
- Custom Categories
- Custom Options
- Custom Weightage

#### Reinforcement
- Yes or No Option
- Positive Message
- Timed Notifications

#### Pros and Cons
- Custom Term
- Pros and Cons list
- Separate Sections for ease of viewing
- AI and ML used to list Pros and Cons

### How we built it

Language
 - 100% Swift 
IDE 
 - Xcode 
Packages: 
 - OpenAISwift (Pros and Cons)
 - LoaderUI (Custom Loading animations) 
Assistance 
 - NUS Hackers Technical Helpdesk

### Challenges we ran into

1. We were unable to find a way to upload the api files to Github as the API would consider the file 
leaked once they were on Github and thus keep reseting the key. We tried adding the file to a 
gitignore and Suyash (one of the NUS Hackers Core Team) helped us out a lot to try to figure out 
a solution. Eventually we settled on a solution of not including the key in the file and making 
sure those using the Github repository knew they had to add their own key.
2. Some of our members were not familiar with the SwiftUI framework thus at the beginning they found 
it hard to add code to the app. However, by teaching each other and learning by doing we were 
successfully able to ensure that every member of the team was able to contribute largely to the project.

### Accomplishments that we're proud of
- We are proud of the UI of the app as it is extremely neat and organised
- We are proud of the code we wrote as we wrote code from frameworks and packages we have never used before,
however we were successfully able to write efficient code that does its job extremely well.
- Incorporating modern and trending technology in our product
- Collaborating and splitting tasks efficiently
- The camaraderie we developed along the way

### What we learned

- We learnt more about SwiftUI architecture such as HStack, ZStacks, etc. We also learnt 
implementing features such as notifications
- We learnt how to use modern technologies such as OpenAI's APIs
- We learnt how to collaborate on programming projects as well as use Github to do this
