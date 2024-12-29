# Azure DevOps CI/CD Solution for ASP.NET Core Developer

## Web App

- create Web App for all three environments
<img src="/pictures/webapp.png" title="web app"  width="900">

- set SCM basic auth to on
<img src="/pictures/webapp0.png" title="web app"  width="900">

- create databases. Set firewall rules
<img src="/pictures/webapp1.png" title="web app"  width="900">

- set firewall rules for the server
<img src="/pictures/webapp01.png" title="web app"  width="900">

- publish
<img src="/pictures/webapp2.png" title="web app"  width="900">

- select *Tools/SQL Server/New Data Comparison* . Then connect to local and Azure databases
<img src="/pictures/webapp3.png" title="web app"  width="900">

- the app should be working fine on all environments
<img src="/pictures/webapp4.png" title="web app"  width="900">


## CI/CD

### CI Pipeline

- create pipeline using the classic editor. Choose branch *develop*

- choose ASP.NET Core. Rename pipeline as *BlogWeb-Dev*
<img src="/pictures/cicd.png" title="ci/cd"  width="900">

- enable CO/CD on branch develop
<img src="/pictures/cicd1.png" title="ci/cd"  width="900">

- running the pipeline qhould result in artifacts
<img src="/pictures/cicd2.png" title="ci/cd"  width="900">

- enable CI/CD on branch develop
<img src="/pictures/cicd1.png" title="ci/cd"  width="900">

- running the pipeline qhould result in artifacts
<img src="/pictures/cicd2.png" title="ci/cd"  width="900">


## CD Pipeline

- create *Azure App Service Deployment*
<img src="/pictures/cicd3.png" title="ci/cd"  width="900">

- choose ASP.NET Core. Rename pipeline as *BlogWeb-Dev*
<img src="/pictures/cicd4.png" title="ci/cd"  width="900">

### Project Settings

- choose SCRUM
<img src="/pictures/settings.png" title="project settings"  width="900">

- project configuration
<img src="/pictures/settings2.png" title="project settings"  width="900">

- add team
<img src="/pictures/settings3.png" title="project settings"  width="900">


### Board

- create epic
<img src="/pictures/board.png" title="board"  width="900">

- create feature
<img src="/pictures/board2.png" title="board"  width="900">


### Backlog

- add sprint
<img src="/pictures/backlog.png" title="backlog"  width="900">


### Self-Hosted Agent

- add VM. Choose windows 2019 Gen2

- turn *enhanced security configurations off*
<img src="/pictures/agent.png" title="agent"  width="900">

