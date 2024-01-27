## Devops-final-project pre-requisites
- Running Mysql server 
  - Created user and empty Database - user should have all permissions for this database
- Installed docker to be able to run the container
    - not tested on the apple arm cpu

## Future improvements
- Execute unit tests in the pipeline
- Make additional git actions for different branches

### CI-CD executed in github actions
- PHP linter
- Gitleaks scanner
- Trivy vulnerability scanner
- Github action to push the image to docker hub