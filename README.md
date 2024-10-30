# Bloc Architecture

### Check list review (Important)

The following aspects are considered to ensure good quality and high-performance deliverables

##### 1. Requirements

- [ ] 1.1 Task requirements have been met

##### 2. Compiler

- [ ] 2.1 Code compiles without any warnings
- [ ] 2.2 Static analysis passes
- [ ] 2.3 Favorite IDE shows 0 errors, warnings
- [ ] 2.4 No spelling mistakes, except for specific project names or 3rd party packages

##### 3. Naming conventions

- [ ] 3.1 Classes, enums, typedef, and extensions name are in UpperCamelCase
- [ ] 3.2 Libraries, packages, directories, and source files name are in snake_case(lowercase_with_underscores)
- [ ] 3.3 Variables, constants, parameters, and named parameters are in lowerCamelCase
- [ ] 3.4 Semantically meaningful naming approach followed

##### 4. Readability

- [ ] 4.1 Code is self-explanatory
- [ ] 4.2 Controllers, Views, ViewModels, and Repositories do not contain business logic
- [ ] 4.3 There aren't multiple if/else blocks in blocks
- [ ] 4.4 There isn't hardcoded data
- [ ] 4.5 There isn’t any commented-out code
- [ ] 4.6 The data flow is understandable
- [ ] 4.7 Streams, TextEditingControllers, and Listeners are closed
- [ ] 4.8 Comments start at /// and contain a clear explanation of method properties, returns, and usage.
- [ ] 4.9 Code does not contain print() log()...
- [ ] 4.10 Reusable code extracted into mixins, utils, and extensions.
- [ ] 4.11 Only private Widgets can be placed in the same file as the parent widget.
- [ ] 4.12 Used const in Widgets
- [ ] 4.13 Switch Case blocs contain the default value
- [ ] 4.14 Code fit in the standard 14-inch laptop screen. There shouldn’t be a need to scroll horizontally to view the code

##### 5. Directory structure

- [ ] 5.1 Segregation of code into a proper folder structure namely providers, entities, screens/pages, and utils.

##### 6. Linting rules

- [ ] 6.1 Used package imports
- [ ] 6.2 Used flutter_lints for lint rules

##### 7. Layout

- [ ] 7.1 Widgets do not contain hardcoded sizes
- [ ] 7.2 Widgets do not contain hardcoded colors or font sizes.
- [ ] 7.3 Widgets do not produce render errors

##### 8. State

- [ ] 8.1 Bloc Provider used only at the needed level instead of providing everything at top level
- [ ] 8.2 context.watch() used only when listening to changes
- [ ] 8.3 used context select to listen to specific object properties in order to avoid rebuilding the entire tree

##### 9. Third-party packages

- [ ] 9.1 Used third-party services do not break the build.

##### 10. Implementation

- [ ] 10.1 Code follows Object-Oriented Analysis and Design Principles
- [ ] 10.2 Any use case in which the code does not behave as intended
- [ ] 10.3 DRY
- [ ] 10.4 KISS
- [ ] 10.5 YAGNI
- [ ] 10.6 The Single-responsibility principle followed
- [ ] 10.7 The Open–closed principle followed
- [ ] 10.8 The LisKov substitution principle followed
- [ ] 10.9 The Interface segregation principle followed
- [ ] 10.10 The Dependency inversion principle followed

##### 11. Error handling

- [ ] 11.1 Network requests wrapped into a try .. catch blocks
- [ ] 11.2 Exceptions messages are localized
- [ ] 11.3 Error messages are user-friendly

##### 12. Security and Data Privacy

- [ ] 12.1 Application dependencies are up to date
- [ ] 12.2 Authorization and authentication are handled in the right way
- [ ] 12.3 Sensitive data like user data, and credit card information are securely handled and stored.
- [ ] 12.4 Environment variables aren't stored in git

##### 13. Performance

- [ ] 13.1 Code changes do not impact the system performance in a negative way

<h1 align="center">Hi 👋, I'm Van Minh Tuan</h1>
<h3 align="center">Looking for a ambitious and professional working environment to perform and exlpore my more than 8-year experience in fullstack and mobile development.</h3>

#### Generate language

```
dart run bloc_architecture:generate
```

- 📫 How to reach me **leetuanbmt@gmail.com**

<h3 align="left">Connect with me:</h3>
<p align="left">
<a href="https://twitter.com/leetuanbmtgmail" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="leetuanbmtgmail" height="30" width="40" /></a>
<a href="https://linkedin.com/in/leetuanbmt" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="leetuanbmt" height="30" width="40" /></a>
<a href="https://fb.com/leetuanbmt" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="leetuanbmt" height="30" width="40" /></a>
<a href="https://instagram.com/leetuanbmt2019" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="leetuanbmt2019" height="30" width="40" /></a>
<a href="https://www.hackerrank.com/leetuanbmt" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/hackerrank.svg" alt="leetuanbmt" height="30" width="40" /></a>
</p>

<h3 align="left">Languages and Tools:</h3>
<p align="left"> <a href="https://aws.amazon.com/amplify/" target="_blank" rel="noreferrer"> <img src="https://docs.amplify.aws/assets/logo-dark.svg" alt="amplify" width="40" height="40"/> </a> <a href="https://angular.io" target="_blank" rel="noreferrer"> <img src="https://angular.io/assets/images/logos/angular/angular.svg" alt="angular" width="40" height="40"/> </a> <a href="https://aws.amazon.com" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" alt="aws" width="40" height="40"/> </a> <a href="https://azure.microsoft.com/en-in/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/microsoft_azure/microsoft_azure-icon.svg" alt="azure" width="40" height="40"/> </a> <a href="https://dart.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg" alt="dart" width="40" height="40"/> </a> <a href="https://www.docker.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original-wordmark.svg" alt="docker" width="40" height="40"/> </a> <a href="https://firebase.google.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg" alt="firebase" width="40" height="40"/> </a> <a href="https://flutter.dev" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg" alt="flutter" width="40" height="40"/> </a> <a href="https://git-scm.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/git-scm/git-scm-icon.svg" alt="git" width="40" height="40"/> </a> <a href="https://ionicframework.com" target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/d/d1/Ionic_Logo.svg" alt="ionic" width="40" height="40"/> </a> <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg" alt="javascript" width="40" height="40"/> </a> <a href="https://materializecss.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/prplx/svg-logos/5585531d45d294869c4eaab4d7cf2e9c167710a9/svg/materialize.svg" alt="materialize" width="40" height="40"/> </a> <a href="https://www.mongodb.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mongodb/mongodb-original-wordmark.svg" alt="mongodb" width="40" height="40"/> </a> <a href="https://www.microsoft.com/en-us/sql-server" target="_blank" rel="noreferrer"> <img src="https://www.svgrepo.com/show/303229/microsoft-sql-server-logo.svg" alt="mssql" width="40" height="40"/> </a> <a href="https://www.mysql.com/" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/mysql/mysql-original-wordmark.svg" alt="mysql" width="40" height="40"/> </a> <a href="https://postman.com" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/getpostman/getpostman-icon.svg" alt="postman" width="40" height="40"/> </a> <a href="https://www.python.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/> </a> <a href="https://tailwindcss.com/" target="_blank" rel="noreferrer"> <img src="https://www.vectorlogo.zone/logos/tailwindcss/tailwindcss-icon.svg" alt="tailwind" width="40" height="40"/> </a> </p>
