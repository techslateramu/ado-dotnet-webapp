
![TechSlate](img/ts.png)

# <span style="color: lightgreen;">**Executing an CI/CD Pipeline for running a Dotnet web Application Locally.**</span>


# <span style="color: lightpink;">Introduction

# .NET - Demo Web Application

This is a simple .NET web app using the new minimal hosting model, and Razor pages. It was created from the `dotnet new webapp` template and modified adding custom APIs, Bootstrap v5, Microsoft Identity and other packages/features.

The app has been designed with cloud native demos & containers in mind, in order to provide a real working application for deployment, something more than "hello-world" but with the minimum of pre-reqs. It is not intended as a complete example of a fully functioning architecture or complex software design.

- **Info** - Will show system & runtime information, and will also display if the app is running from within a Docker container and Kubernetes.
- **Tools** - Some tools useful in demos, such a forcing CPU load (for autoscale demos), and error/exception pages for use with App Insights or other monitoring tool.
- **Monitoring** - Displays realtime CPU load and memory working set charts, fetched from an REST API and displayed using chart.js
- **Weather** - (Optional) Gets the location of the client page (with HTML5 Geolocation). The resulting location is used to fetch a weather forecast from the [OpenWeather API](https://openweathermap.org/)
- **User Account** - (Optional) When configured with Azure AD (application client id and secret) user login button will be enabled, and an user-account details page enabled, which calls the Microsoft Graph API

![screen](https://user-images.githubusercontent.com/14982936/71717446-0bc47400-2e10-11ea-8db2-1db5b991d566.png)
![screen](https://user-images.githubusercontent.com/14982936/71717448-0bc47400-2e10-11ea-8bf0-5115d4c8c4a4.png)
![screen](https://user-images.githubusercontent.com/14982936/71717426-fea78500-2e0f-11ea-881f-ad9bd8adbfae.png)

<br>

</br>

# <span style="color: lightgreen;">Running and Testing Locally

# <span style="color: lightpink;">Pre-requisites
 - **Be using Linux, WSL or MacOS, with bash, make etc .**
- [.NET 6](https://docs.microsoft.com/en-us/dotnet/core/install/linux) - for running locally, linting, running tests etc
- **Clone the project to any directory where you do development work .**

# <span style="color: lightpink;">Folder Structure
- Modules - which contains modules of terraform
- Pipeline - this folder contains pipeline
- Terraform - this folder contains actual terraform project files ( main.tf, var.tf, provider.tf, backend.tf)

# <span style="color: lightpink;">Process

### 1. **First step to begin with , Open your VS CODE and do ``clone`` the repository .**

 ![Calc](./img/git-clone.png)

### 2. **Refer to the script properly and understand the process and steps.**

 ![Calc](./img/csproj.png) 

### 3. **As we are running Locally , Lets first check the ``dotnet version``** . If you haven't installed yet , Follow the link and install it. https://learn.microsoft.com/en-us/dotnet/core/install/

     dotnet --version
 ![Calc](./img/version.png)   

### 4. **Now get into the ``src`` folder and Run the following command :**

     dotnet run

![Calc](./img/run.png)

### 5. Now follow the localhost link and see whether the Dotnet application is running .

![Calc](./img/local.png)


### 6. The .Net Web Application is running successfully .

![Calc](./img/dotnet.png)

### 7. Now lets try to make some changes in html file and try to build it again . Lets add ``Techslate`` word to the display name.

![Calc](./img/html.png)

### 8. Now lets run the following command to build the application .

     dotnet build

![Calc](./img/build.png)

### 9. Once Build is done , we need to execute the file. As we are already in ``src`` folder copy that path after ``src`` .

![Calc](./img/EXEC.png)

***











































































































# Running and Testing Locally

### Pre-reqs

- Be using Linux, WSL or MacOS, with bash, make etc
- [.NET 6](https://docs.microsoft.com/en-us/dotnet/core/install/linux) - for running locally, linting, running tests etc

Clone the project to any directory where you do development work



# GitHub Actions CI/CD

A set of GitHub Actions workflows are included for CI / CD. Automated builds for PRs are run in GitHub hosted runners validating the code (linting and tests) and building dev images. When code is merged into master, then automated deployment to AKS is done using Helm.

[![](https://img.shields.io/github/workflow/status/benc-uk/dotnet-demoapp/CI%20Build%20App)](https://github.com/benc-uk/dotnet-demoapp/actions?query=workflow%3A%22CI+Build+App%22) [![](https://img.shields.io/github/workflow/status/benc-uk/dotnet-demoapp/CD%20Release%20-%20AKS?label=release-kubernetes)](https://github.com/benc-uk/dotnet-demoapp/actions?query=workflow%3A%22CD+Release+-+AKS%22)

# Optional Features

The app will start up and run with zero configuration, however the only features that will be available will be the *Info*, *Tools* & *Monitoring* views. The following optional features can be enabled:

