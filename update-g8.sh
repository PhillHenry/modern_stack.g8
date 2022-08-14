#!/usr/bin/env bash

if [[ -d ./src/main/g8 ]]; then

   if ! command -v git &> /dev/null
   then
     echo "[ERROR] git command cannot be found, please install git first"
     exit -1
   fi

   if ! command -v sbt &> /dev/null
   then
     echo "[ERROR] sbt command cannot be found, please install sbt first"
     exit -1
   fi

   mkdir -p target
   cd target
   if [[ -d .makeitg8 ]] && [[ -d .makeitg8/.git ]] ; then
        cd .makeitg8
        git pull origin master
   else
        rm -r .makeitg8
        git clone https://github.com/arturopala/make-it-g8.git .makeitg8
        cd .makeitg8
   fi

   sbt "run --noclear --force --source ../../target/sandbox/ModernScalaStack --target ../.. --name ModernScalaStack.g8 --description ModernScalaStack.g8  -K templateGithubUser=PhillHenry organization=uk.co.odinconsultants organizationName=OdinConsultants" -Dbuild.test.command="sbt test" 

   echo "Done, updated the template based on target/sandbox/ModernScalaStack"
   exit 0

else

    echo "[ERROR] run the script ./update-g8.sh in the template's root folder"
    exit -1

fi
