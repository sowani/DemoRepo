#!/bin/bash

#ssh -o StrictHostKeyChecking=no

  echo -e "Starting to update demo\n"

  #copy data we're interested in to other place
  cp -R DemoRepo $HOME/DemoRepo

  #go to home and setup git
  cd $HOME
  git config --global user.email "sowani@gmail.com"
  git config --global user.name "sowani"

  #using token clone gh-pages branch
  git clone --quiet https://${GH_TOKEN}@github.com/sowani/DemoRepo.git

  #go into diractory and copy data we're interested in to that directory
  cd DemoRepo
  cp -Rf $HOME/DemoRepo/* .

  #add, commit and push files
  git add -f .
  git commit -m "push demo"
  git push -fq origin master

  echo -e "Done magic with coverage\n"

