# Exercises:



My project VISA APPLICATION MANAGEMENT SYSTEM (VAMS) gives the depth solution to management of visa application in an effective way. As now we can see many of our visa application centre converted their manual management system to computerized system to get the works easier and make the solution very dynamic. Besides that, the manual visa application management system has several problems which obstruct the smooth visa application management and there is also possibility of leaking the valuable and confidential information of a visa applicant. Moreover, the manual system takes a bit longer time to processing the visa application. So, here the objectives of this projects are to develop an online visa application management system for make visa application management easier than the manual system and create a centralized database to store all the visa application information together.

The methodology I used to develop my system is RAD (Rapid Application Development).

I used ASP.NET as the framework and C# (C-Sharp) as the language and it is deployed on IIS server.



## 1.	UML (Unified Modelling Language)

#### A. Activity Diagram:
- i) Activity Diagram for Applicant Registration:

![Activity Diagram for Applicant Registration](https://github.com/amrajon/VAMS/blob/main/Images/Activity%20Diagram%20for%20Applicant%20Registration.png)

Here, by this diagram it shows how an applicant can do the registration procedures. By clicking on the Register button, user will input the unique ID and password then the database will verify whether the user ID is already exists in the database or it is ready to accept it. Once it is confirmed that no other matching is found with the user ID then the system registers it as the new user.


- ii)	Activity Diagram for Creating Application:

![Activity Diagram for Creating Application](https://github.com/amrajon/VAMS/blob/main/Images/Activity%20Diagram%20for%20Creating%20Application.png)

Here, once the user login to the system and create an application. After that, the system will verify with the validation parameters and confirm that no more validation error and ready to accept the application. After that, the system will display the final form with the entered data to confirm and once the user confirms that it is correct then the application submitted successfully. And the user gets a notification.
- iii)	Activity diagram for login:

![Activity Diagram for login](https://github.com/amrajon/VAMS/blob/main/Images/Activity%20diagram%20for%20login.png)

Here, this diagram shows the process for a user to login to the system. By entering the User ID and password, after verification through the database it redirects the users to their respective homepage like the applicant homepage or admin homepage.

#### B. Sequence Diagram:
- i)	Sequence Diagram for Creating Visa Application:

![Sequence Diagram for Creating Visa Application](https://github.com/amrajon/VAMS/blob/main/Images/Sequence%20Diagram%20for%20Creating%20Visa%20Application.png)

This sequence diagram shows the process of create a new application and the sequences of responsibilities of the applicant and the admin.
- ii)	Sequence Diagram for Login:

![Sequence Diagram for Login](https://github.com/amrajon/VAMS/blob/main/Images/Sequence%20Diagram%20for%20Login.png)

This diagram shows the sequence of a user to login to the system.

#### C. Use Case Diagram:
- i)	Use Case Diagram:

![Use Case Diagram](https://github.com/amrajon/VAMS/blob/main/Images/Use%20Case%20Diagram.png)

This use case diagram shows the functions can be used by an applicant and an admin.

## 2.	DDD (Domain Driven Design)

Domain-Driven Design is the approach to software development which enables us to translate complex problem domains into rich, expressive, and evolving software. It's the way we design applications when the needs of our users are complex. This aims to match the mental model of the problem domain we're addressing.
There is one thought like what we face while developing a big complex system, such as, “the more code I add, the more complex it gets".

Here in my project,
It is divided the different services in a different domain to make the system easier.
For example, for logging in to the system there are authentication and authorization procedures which are the first stage of a secure system.
In this domain, it is only giving the service for login to the system even the database connection or the class used for coding.
Domain for login service:

http://localhost:51307/Pages/Account/Login.aspx

Login page code screenshot is here:

**Screensot 1:**

![Login page code screenshot](https://github.com/amrajon/VAMS/blob/main/Images/w2.PNG)

**Screensot 2:**

![Login page code screenshot](https://github.com/amrajon/VAMS/blob/main/Images/P%20(4).PNG)

Similarly, this domain is for the applicant registration is:

http://localhost:51307/Pages/Account/Applicant_Registration.aspx

**Screensot 1:**

![Login page code screenshot](https://github.com/amrajon/VAMS/blob/main/Images/w3.PNG)

**Screensot 2:**

![Login page code screenshot](https://github.com/amrajon/VAMS/blob/main/Images/P%20(5).PNG)

For applicant home page:

http://localhost:51307/Pages/Management/ApplicantPage.aspx

For visa application:

http://localhost:51307/Pages/Management/Visa_Application.aspx

For Application status checking:

http://localhost:51307/Pages/Management/Applicant_status_check.aspx

For Admin homepage:

http://localhost:51307/Pages/Management/AdminPage.aspx

For View system user:

http://localhost:51307/Pages/Management/View_users.aspx

Generating report for the admin:

http://localhost:51307/Pages/Management/Report.aspx

For adding admin user:

http://localhost:51307/Pages/Management/Add_Admin_user.aspx

For searching user:

http://localhost:51307/Pages/Management/Search_user.aspx

For viewing application details and approval:

http://localhost:51307/Pages/Management/ApplicantsDetails.aspx

## 3.	Metrics

Here in my project, I used total 3 Metrics which is the Sonar Cloud, Codacy and Visual Studio Code Metrics.

#### A. Sonar Cloud:
Sonar Cloud, and Codacy are the Metrics which is based on SonarQube. SonarQube is a widely adopted open-source platform to inspect continuously the quality of source code and detect bugs, vulnerabilities, and code smells in more than 20 different languages.
My project got passed in the Quality Gate check. The readability, security, and maintainability were scored A and there it found some duplication which measured as 0.7% of the total source codes.
In Duplications block, it shows there is 2 blocks which are duplicated. Those blocks are in the Applicant’s Details page which 2 were used for inserting for the first time and updating for further process.

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=amrajon_VAMS)](https://sonarcloud.io/dashboard?id=amrajon_VAMS)

![Sonar Cloud](https://github.com/amrajon/VAMS/blob/main/Images/SonarQube%20Metrics2.jpg)

#### B. Codacy:
Codacy Automatically identify issues through static code review analysis. Therefore we can be notified on security issues, code coverage, code duplication, and code complexity in every commit and pull request, directly from your current workflow.
In Codacy it graded as the rating B while it showed the issues 11%, complexity is 12% and duplication is 21%.

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/878e50599f534fdfa7a2cc7473522039)](https://www.codacy.com/gh/amrajon/VAMS/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=amrajon/VAMS&amp;utm_campaign=Badge_Grade)

![Codacy](https://github.com/amrajon/VAMS/blob/main/Images/Codacy%20Metrics.png)

#### B. Visual Studio Code Metrics:

**Screensot 1:**

![Visual Studio Code Metrics](https://github.com/amrajon/VAMS/blob/main/Images/9.PNG)

**Screensot 2:**

![Visual Studio Code Metrics](https://github.com/amrajon/VAMS/blob/main/Images/10.PNG)

## 4.	Clean code development:
The most popular definition of clean code is code that is easy to understand and easy to change. We could certainly say that the code follows some of the criteria of what makes code easy to understand. Such as, easy to understand the execution flow of the entire application, how the different objects collaborate with each other, the role and responsibility of each class, what each method does or easy to understand what is the purpose of each expression and variable. Here it is being discussed some of the techniques of clean code development:

#### i. Consistent naming convention:

Throughout coding, naming scheme of camel case is used for both variables and functions. Moreover, for immutable/final variables all-upper-casing scheme is used.

#### ii. Configure Data at Higher Level:
All configurable data (for example: Packages, Directory names, paths), have been placed at higher level, making tweaking of values easier for the purpose of debugging.

![Configure Data at Higher Level](https://github.com/amrajon/VAMS/blob/main/Images/1.PNG)

#### iii. Clean use of Functions:
It is tried to keep small and do one thing and sometimes I used descriptive names and fewer arguments.

**Screensot 1:**

![Clean use of Functions](https://github.com/amrajon/VAMS/blob/main/Images/r1.png)

**Screensot 2:**

![Clean use of Functions](https://github.com/amrajon/VAMS/blob/main/Images/r2.png)

**Screensot 3:**

![Clean use of Functions](https://github.com/amrajon/VAMS/blob/main/Images/3.PNG)

**Screensot 4:**

![Clean use of Functions](https://github.com/amrajon/VAMS/blob/main/Images/r3.png)

#### iv. Follow of comments rule:
I tried to explain what is happening by making a short comment and tried to give explanation for further if i need to think about it then sometimes it takes time to understand the codes.

**Screensot 1:**

![Follow of comments rule](https://github.com/amrajon/VAMS/blob/main/Images/5.PNG)

**Screensot 2:**

![Follow of comments rule](https://github.com/amrajon/VAMS/blob/main/Images/6.PNG)

#### v. General Rules for clean coding:
- Followed standard conventions.
- Tried to keep it simple.
- Tried to keep clean.

#### My Cheat Sheet for .NET:

i. **Assemblies:** A DLL or EXE file that forms the basis of deployment, version control, reuse, and security permissions of an application.

ii. **Namespaces:** The components of assemblies, namespaces primarily organize the objects present in the assemblies. An assembly can contain more than one namespace.

iii. **Adding references:** We need to add a reference to the external object that we want to use in our current application.

iv. **Attributes:** The tags that are used to provide additional information about the elements defined in a .NET program to explain assemblies, specify security requirements of methods, or specify features required to enforce security.

v. **Inheritance:** Enable us to create classes that are derived from some other classes known as base classes. Inheritance provides the advantage of defining a class only once. We can then reuse this functionality by deriving new classes from this class.

vi. **Windows Forms:** With a new forms package called Windows Forms, .NET allows to inherit a form from an existing form.

vii. **Structured exception handling:** Enable us to create more efficient and robust error handlers by using structured exception handling, which allows to detect and remove errors at runtime.

viii. **Multithreading:** Enable applications to handle multiple tasks simultaneously.

ix. **Garbage collection:** The function of the garbage collector, provided by Visual C#, is to check for the objects not being used by an application and to delete them from memory.

x: **Using the C# Compiler at the Command Line**

C:\>csc /t:library /out:reslib.dll mysource.cs

    csc /t:winexe /r:ctls1.dll /r:ctls2.dll winapp.cs
    
    csc /keyfile:strongkey.snk secure.cs
     
**/addmodule** -	Import metadata from a file that does not contain a manifest.

**/debug** -	Tells compiler to emit debugging info.

**/doc** -	Specifies an XML documentation file to be created during compilation.

**/keyfile** -	Specifies file containing key used to create a strong named assembly.

**/lib** -	Specifies directory to search for external referenced assemblies.

**/out** -	Name of compiled output file.

**/reference (/r)** -	Reference to an external assembly.

**/resource** -	Resource file to embed in output.

**/target (/t)** -	/t:exe /t:library /t:module /t:winexe


## 5. Build Management:

In software development, a build is the process of converting source code files into standalone software artifact that can be run on a computer, or the result of doing so. For Build Management, I used for this project is, Visual Studio 2019.

**Screensot 1:**

![Build Management](https://github.com/amrajon/VAMS/blob/main/Images/8.PNG)

**Screensot 2:**

![Build Management](https://github.com/amrajon/VAMS/blob/main/Images/7.PNG)


## 6. Unit testing:

In computer programming, unit testing is a software testing method by which individual units of source code—sets of one or more computer program modules together with associated control data, usage procedures, and operating procedures—are tested to determine whether they are fit for use.

## 7. Continuous Integration (Using GitHub for Visual Studio):

The GitHub for Visual Studio makes it easy to connect to and work with our repositories on GitHub and GitHub Enterprise from directly within Visual Studio 2015 or newer. Clone existing repositories or create new ones and start collaborating and follows the integration continuously.

![Continuous Integration (Using GitHub for Visual Studio)](https://github.com/amrajon/VAMS/blob/main/Images/12.PNG)

## 8. IDE (Integrated Development Environment):

An integrated development environment (IDE) is a software application that provides comprehensive facilities to computer programmers for software development. An IDE normally consists of at least a source code editor, build automation tools and a debugger.

Here, in my project, I used Visual Studio as the IDE.

Microsoft Visual Studio is an integrated development environment (IDE) for developing console and graphical user interface applications along with Windows Forms or WPF applications, web sites, web applications, and web services.

![IDE (Integrated Development Environment)](https://github.com/amrajon/VAMS/blob/main/Images/vs.PNG)

**Favourite shortcut keys:**
1. Quick Launch (Ctrl+Q)
2. Stop and Re-Build (Ctrl+Shift+F5)
3. Bulk Comment/Uncomment (Ctrl+K+C)
4. Build (Ctrl+Shift+B)
5. Solution Explorer (Ctrl+Alt+L)
6. Toolbox (Ctrl+Alt+X)
7. Navigate Backward (Ctrl+-)
8. Navigate Forward (Ctrl+Shift+-)
9. Select Words (Ctrl+Shift+Arrow)
10. Comment Selection (Ctrl+K,Ctrl+C)
11. Uncomment Selection (Ctrl+K,Ctrl+U)
18. Format Document (Ctrl+K,Ctrl+D)
19. Find and Replace (Ctrl+F/Ctrl+H)
20. Smart Break Line (Shift+Enter)
21. Start Debugging (F5)
22. Start Without Debugging (Ctrl+F5)
23. Stop Debugging (Shift+F5)
24. Run Tests (Ctrl+R,T)
25. Debug Tests (Ctrl+R,Ctrl+T)

## 9. DSL (Domain Specific Language):

A Domain Specific Language (DSL) is a computer language specialized to a particular application domain. This is in contrast to a general-purpose language, which is broadly applicable across domains.

**Screensot 1:**

![DSL (Domain Specific Language)](https://github.com/amrajon/VAMS/blob/main/Images/dsl21.PNG)

**Screensot 2:**

![DSL (Domain Specific Language)](https://github.com/amrajon/VAMS/blob/main/Images/dsl.png)

## 10. Functional programming:

Functional programming is a paradigm, or style, that values immutability, first-class functions, referential transparency, and pure functions. functions as machines — they take an input, or arguments, and then output something, the return value. Throughout this project, good practices for functional programming have been adopted. Following are few examples of such practices.

#### A. Side Effect Free Functions

As discussed earlier, wherever necessary context management has been used. So that effect of overlying function could remain locally. Hence using them would not result any side effects.

![Side Effect Free Functions](https://github.com/amrajon/VAMS/blob/main/Images/b1.PNG)

#### B. Use of Higher Order Function

Higher order functions is used.

![Use of Higher Order Function](https://github.com/amrajon/VAMS/blob/main/Images/z7.PNG)

#### C. Data Structure

Here fixed data structers are used.

![Data Structure](https://github.com/amrajon/VAMS/blob/main/Images/ds.PNG)


**************************************************************************************************************


# Screenshots:

**Screenshot 1: (Home Page)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(1).PNG)

**Screenshot 2: (Visa Policy)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(2).PNG)

**Screenshot 3: (Visa Requirements)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(3).PNG)

**Screenshot 4: (Login Page)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(4).PNG)

**Screenshot 5: (Registration Page)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(5).PNG)

**Screenshot 6: (Admin Dashboard)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(6).PNG)

**Screenshot 7: (View Users - Admin View)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(7).PNG)

**Screenshot 8: (Registration - Admin View)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(8).PNG)

**Screenshot 9: (Search User - Admin View)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(9).PNG)

**Screenshot 10: (View Application Details - Admin View)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(10).PNG)

**Screenshot 11: (Applicant Dashboard)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(11).PNG)

**Screenshot 12: (Application Status Checking - Applicant View)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(12).PNG)

**Screenshot 13: (Visa Application Submitting - Applicant View)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(13).PNG)
![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(140).png)
![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(15).PNG)

**Screenshot 14: (Report Generate - Admin View)**

![VAMS Project screenshots](https://github.com/amrajon/VAMS/blob/main/Images/P%20(17).PNG)
