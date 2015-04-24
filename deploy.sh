#!/bin/bash

ssh -o StrictHostKeyChecking=no
if [ "$TRAVIS_BRANCH" == "travis" ]; then
    git add -f .
    git commit -m "Add built output"
    git push https://$(GH_USER):$(GH_PASSWORD)@github.com/sowani/DemoRepo.git} demo
fi
