ModernScalaStack.g8
===

A [Giter8](http://www.foundweekends.org/giter8/) template for creating ModernScalaStack.g8



How to create a new project based on the template?
---

* Go to directory where you want to create the template
* Decide your project name (the hardest part :))
* Run the command

    `sbt new PhillHenry/ModernScalaStack.g8 --branch master --organization="uk.co.odinconsultants" --organizationName="OdinConsultants" -o ModernScalaStack`

or    

* Install g8 commandline tool (http://www.foundweekends.org/giter8/setup.html)
* Run the command

    `g8 PhillHenry/ModernScalaStack.g8 --branch master --organization="uk.co.odinconsultants" --organizationName="OdinConsultants" -o ModernScalaStack`
    
and then
    
    cd ModernScalaStack
    git init
	git add .
	git commit -m start
  
* Test generated project using command 

    `sbt test`
    

How to test the template and generate an example project?
---

* Run `./test.sh` 

An example project will be then created and tested in `target/sandbox/ModernScalaStack`

How to modify the template?
---

 * review template sources in `/src/main/g8`
 * modify files as you need, but be careful about placeholders, paths and so on
 * run `./test.sh` in template root to validate your changes
 
or (safer) ...

* run `./test.sh` first
* open `target/sandbox/ModernScalaStack` in your preferred IDE, 
* modify the generated example project as you wish, 
* build and test it as usual, you can run `sbt test`,
* when you are done switch back to the template root
* run `./update-g8.sh` in order to port your changes back to the template.
* run `./test.sh` again to validate your changes

NOTE: the update script seems to demand Java 8 so run something like this before you run it:
export JAVA_HOME=/usr/local/bin/Java/jdk1.8.0_241/
export PATH=$JAVA_HOME/bin:$PATH
- Phillip Henry

What is in the template?
--

Assuming the command above 
the template will supply the following values for the placeholders:

    $organization$ -> uk.co.odinconsultants
	$organizationName$ -> OdinConsultants
	$organizationNameNoSpaceLowercase$ -> odinconsultants

and produce the folders and files as shown below:

    ├── .bsp
	│   └── sbt.json
	│
	├── .gitignore
	├── .scalafmt.conf
	├── build.sbt
	├── LICENSE
	├── modules
	│   ├── core
	│   │   └── src
	│   │       ├── main
	│   │       │   └── scala
	│   │       │       └── uk
	│   │       │           └── co
	│   │       │               └── odinconsultants
	│   │       │                   └── mss
	│   │       │                       ├── HelloWorld.scala
	│   │       │                       └── StreamingWordCount.scala
	│   │       │
	│   │       └── test
	│   │           └── scala
	│   │               └── uk
	│   │                   └── co
	│   │                       └── odinconsultants
	│   │                           └── mss
	│   │                               ├── HelloWorldSuite.scala
	│   │                               └── StreamingWordCountSuite.scala
	│   │
	│   ├── docs
	│   │   └── docs.md
	│   │
	│   └── it
	│       ├── project
	│       │   └── build.properties
	│       │
	│       └── src
	│           └── test
	│               └── scala
	│                   └── uk
	│                       └── co
	│                           └── odinconsultants
	│                               └── mss
	│                                   ├── Docker.scala
	│                                   ├── DockerMain.scala
	│                                   └── HelloWorldITSuite.scala
	│
	├── project
	│   ├── build.properties
	│   ├── Dependencies.scala
	│   └── plugins.sbt
	│
	└── README.md
