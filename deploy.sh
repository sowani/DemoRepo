#!/bin/bash

ssh -o StrictHostKeyChecking=no
git add -f .
git commit -m "Add built output"
git push https://$(GH_USER):$(GH_PASSWORD)@github.com/sowani/DemoRepo.git demo
