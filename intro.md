# Dev Ops.

## 1. Four Pillars

## 2. Architecture

## 3. CI/CD

### difference with v model

test if it works instead of what you actually want

Aprochiphal story :

Governement wanted to build a software for the NHS.

Built with waterfall method. 

* Plan 
* Design
* Build Test
* Deploy 

over 6 monthts spent before putitng the program in fron to f a GP

Devops validate sooner with end users before bothering building something.

Most of the time people dont know what they want. Even if you ask them

manage to bring everyone in with agile for short cycle.

Very last to bring in is devops. brings operation and deployment to agile teams.

How fast we can learn 

mashing up beetween developper and operation team. 



#### Eric Reis - Lean startup. Must read.

Group on story :

Low cost
fast learning
simple to implement

## 1. Four pillars

1. (Biz) Ease of use : Platform and tools for the whole team to use, so we can control how fast things flow to production.Vagrant : We dont want people to developp stuff on their own laptop. because they are all different. if a deveoppper thinks something is to slow, it is the devops s job to think of something to make it faster 

2. (Biz) Flexibility : one thing that will attract big companies.                                                                                                       Vender locking -> we want to. make sure everything we build we dont end up depending on it.  shouldnt be any huge cost to switch moving between . Biggest thing. Talk about that in interview. Old guard teams that have built hguge systems that nobody understands.

3. Resiliency: (Where we have the most fun) deveoppers are responsible for the code. sdet for the testing. but ultimetly it is the devops s team to make sure something goes live and stay live. Example Axa, losing their database could cost them their business. Want to build an infrastrucutre to implement changes quickly and safely, that it works and cant destroy anything, but if it does, that we can bring it up quickly. 0 tolerance of downtime. if the big companies like netflix have an outage for day. a very large number of customer will try something and maybe decise they like.
ITV scandal for the worlds cup. it was the devops team that had to be held accountable. 

4. Cost : When goign to see a client, you need to explain to him what would be the costs involved not to implement a software for him or what could be the benefits to implement something new. 

## 2. Risk Register

Build a table stating risk, chance of occurance, impact and actions. 

it is about setting priorities. 


## Architecure and pipelines.

### Monolith

### N - tiers architecture

### Environments

We are going to try to split monolith apps into many parts.

1. 1 tier -- > monolith


2. 2 tier -- > two monotith, database and webiste hosted on different parts 

3. 3 tier separates the app . 1. Data, 2. Logique Tier, Api 3. Render ->> Front End.

--> Taken out all the views from the monolith 


virtual box and vangrant to create a virtual machine 

User virtual box to use the hardware to run the stuff. --> infrsastructure.

xenial64 is the most recent version of ubuntu.
1. vagrant up run the program
2. vagrant ssh to log into the machine
3. sudo apt-get to download program
4. example sudo apt-get install nginx -y (-y is not to get asked the question : are you sure ? )



