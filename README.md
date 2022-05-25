# ROBOT-API-STC
-----------------------

[![SERVREST-API](https://img.shields.io/badge/API-ServeRest-brightgreen)](https://github.com/PauloGoncalvesBH/ServeRest/)
[![ROBOT-CI](https://github.com/STC-TEAM-PROJECT/robot-api-stc/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/STC-TEAM-PROJECT/robot-api-stc/actions/workflows/ci.yml)
[![LOGS](https://img.shields.io/badge/REPORT-DEPLOYED-brightgreen)](https://ulucasfraga.github.io/cypress_api_for_studies/)

Repository with examples for STC team studies on automated **robotframework** __API__ and __Schema__ tests and other libs:

- robot
- requests
- jsonValidator
- faker

> The **RobotFramework** is a generic open source automation framework. It can be used for test automation and robotic process automation: [GET TO KNOW ROBOT](https://robotframework.org/)

**Note:** The other libs included are for API and Schema testing:

- [GET TO KNOW ROBOT-REQUESTS](https://github.com/MarketSquare/robotframework-requests#readme)

- [GET TO KNOW JSON-VALIDATOR](https://github.com/peterservice-rnd/robotframework-jsonvalidator/blob/master/README.rst)

- [GET TO KNOW FAKER](https://github.com/guykisel/robotframework-faker/blob/master/README.rst)

-----------------------

## Context table

> Index `README`.

  - [Prerequisites](#prerequisites)
  - [Configurations](#configurations)
  - [Installation](#installation)
  - [How to test](#how-to-test)
  - [Tested endpoints](#tested-endpoints)
  - [Report](#report)
  - [Support](#support)
  - [License](#license)

-----------------------

### Prerequisites

- [python and pip](https://www.python.org/downloads)
- [vscode or other IDE](https://code.visualstudio.com/download)
- [robotframework](https://github.com/robotframework/robotframework)

-----------------------

### Configurations

- Clone this project using _ssh_ or _https_.

> Clone project:

```js
$ git clone https://github.com/STC-TEAM-PROJECT/robot-api-stc.git
```

-----------------------

### Installation

**IMPORTANT:**
Use makefile commands to facilitate the processes, for example:

> To install dependencies:

- Install all dependencies via **requirements.txt**:

__default, no makefile:__
```js
$ pip3 install -r requirements.txt
```

__in that project, with the makefile:__
```makefile
$ make install
```
##### Tips:

- Use your __requirements.txt__ to add or remove libs and install via __makefile__.


> To clean your project:

```makefile
$ make clean
```

> To run serverest local (port: 3000):

```makefile
$ make run-serverest
```

##### Tips:

- You may need to open another __terminal__ to run your tests.

-----------------------

### How to test

> To run all tests:

```makefile
$ make run-all
```

> To run all regression tests:

```makefile
$ make run-regression
```

> To run all integration tests:

```makefile
$ make run-all-integration
```

> To run all schema tests:

```makefile
$ make run-all-schema
```

> To run with the @your_tag

```makefile
$ make run-test
```

##### Tips:

- You need to put the **@test** tag in your __test case__ or edit in makefile.


-----------------------

### Tested endpoints

> All features tested for integration:
- [ ] Login
- [ ] Usuários
- [ ] Produtos
- [ ] Carrinhos

> All features tested for schemas:
- [ ] Login
- [x] Usuários
- [ ] Produtos
- [ ] Carrinhos

-----------------------

### Report

> To generate reports:

```makefile
$ make run-all
```

##### Tips:

- **All tests** (commands) use the __report__ for better visualization of scenarios


-----------------------


### Supports

- Linkedin: <a href="https://www.linkedin.com/in/fellipe-conforto-0ab00b100/" target="_blank">**Fellipe Conforto**</a>
- Linkedin: <a href="https://www.linkedin.com/in/ulucasfraga/" target="_blank">**Lucas Fraga**</a>
- Linkedin: <a href="https://www.linkedin.com/in/lucas-de-felice-fernandes-92122b149/" target="_blank">**Lucas de Felice**</a>
- Linkedin: <a href="https://www.linkedin.com/in/rafael-felice-791814134/" target="_blank">**Rafael de Felice**</a>

-----------------------

### License

[![License](https://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2022 © <a href="https://github.com/STC-TEAM-PROJECT" target="_blank">STC-TEAM</a>
