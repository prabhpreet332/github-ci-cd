# github-ci-cd

## Resources:

Getting started:
1. https://docs.github.com/en/actions/quickstart
2. https://docs.github.com/en/actions/learn-github-actions/usage-limits-billing-and-administration
3. 

More around the actions (custom build)
1. https://docs.github.com/en/actions/learn-github-actions/finding-and-customizing-actions

Basic understanding:
1. https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions

First Job for reference:
1. https://github.com/prabhpreet332/github-ci-cd/actions/runs/4015527605/jobs/6897359112
2. Jobs run during the setup: 
    - https://github.com/prabhpreet332/github-ci-cd/actions/workflows/github-actions.yml?query=branch%3Afeature%2Fadds-test-actions-file+actor%3Aprabhpreet332

Steps to add:
1. Linting
    1. black
    2. isort
    3. flake8
2. unittest run
2. unittest coverage report
3. sonar lint (later on)
4. build
    1. dockerfile-build
    2. push to docker-hub
        1. x.y.z
        2. on feature-branch "feature/**" for push x.y.z+1
        2. on master for merge x.y+1.z
        2. on master for merge "release/**" x+1.0.0
5. security scan (later on)
