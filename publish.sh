#!/bin/bash
yarn standard-version --release-as $1
git add .
git commit -m "chore(release): $2 [ci skip]"
git tag -a $2 "chore(release): $2 [ci skip]"
git push -q https://${GITHUB_TOKEN}@github.com/HarrisonHenri/myskills.git staging --tags