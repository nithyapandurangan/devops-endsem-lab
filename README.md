# devops-endsem-lab
## Automate the maven build lifecycle in a docker container using jenkins and git
1. Create a simple java project with a pom.xml that defines a maven lifecycle (including build,test and package phases).
2. Write a dockerfile that includes maven and your application code, configured to run maven commands inside the container.
3. Push the project to a git repository.
4. In jenkins configure a pipeline to clone the repository, build the docker image and run the maven build lifecycle inside the container.
5. Setup jenkins to trigger this job automatically upon new commits to the git repository.
