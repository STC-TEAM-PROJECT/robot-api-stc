# ROBOT-API-STC

-----------------------

[![SERVREST-API](https://img.shields.io/badge/API-ServeRest-brightgreen)](https://github.com/PauloGoncalvesBH/ServeRest/)
[![ROBOT-CI](https://github.com/STC-TEAM-PROJECT/robot-api-stc/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/STC-TEAM-PROJECT/robot-api-stc/actions/workflows/ci.yml)
[![REPORT-DEPLOYED](https://img.shields.io/badge/REPORT-DEPLOYED-brightgreen)](https://stc-team-project.github.io/robot-api-stc/)

Repository with examples for STC team studies on automated **robotframework** **API** and **Schema** tests and other libs:

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

- [ROBOT-API-STC](#robot-api-stc)
  - [Context table](#context-table)
    - [Prerequisites](#prerequisites)
    - [Configurations](#configurations)
    - [Installation](#installation)
      - [Tips](#tips)
    - [How to test](#how-to-test)
      - [Tips: Run tests](#tips-run-tests)
    - [Tested endpoints](#tested-endpoints)
    - [Report](#report)
      - [Tips: Run report](#tips-run-report)
        - [To view report](#to-view-report)
    - [CI](#ci)
    - [Supports](#supports)
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
git clone https://github.com/STC-TEAM-PROJECT/robot-api-stc.git
```

-----------------------

### Installation

**IMPORTANT:**
Use makefile commands to facilitate the processes, for example:

> To install dependencies:

- Install all dependencies via **requirements.txt**:

**default, no makefile:**

```js
pip3 install -r requirements.txt
```

**in that project, with the makefile:**

```makefile
make install
```

#### Tips

- Use your **requirements.txt** to add or remove libs and install via **makefile**.

> To clean your project:

```makefile
make clean
```

-----------------------

### How to test

> To run serverest local (port: 3000):

```makefile
make run-serverest
```

> To run all tests:

```makefile
env=dev make run-all
env=local make run-all
```

> To run all regression tests:

```makefile
env=dev make run-regression
env=local make run-regression
```

> To run all integration tests:

```makefile
env=dev make run-all-integration
env=local make run-all-integration
```

> To run all schema tests:

```makefile
env=dev make run-all-schema
env=local make run-all-schema
```

> To run with the @your_tag

```makefile
env=dev make run-test
env=local make run-test
```

#### Tips: Run tests

- You may need to open another **terminal** to run your tests.

- You need to choose a environments for tests: `env=dev` or `env=local`

- You need to put the **@any-tag** in your **test case** or edit in makefile.

-----------------------

### Tested endpoints

> All features tested for integration:

- [x] Login
- [ ] Usuários
- [ ] Produtos
- [ ] Carrinhos

> All features tested for schemas:

- [x] Usuários
- [x] Produtos
- [x] Carrinhos

-----------------------

### Report

> To generate the reports:

```makefile
env=dev make run-test-report
make allure-report

env=local make run-test-report
make allure-report
```

> To open the reports:

```makefile
env=dev make run-test-report
make allure-server

env=local make run-test-report
make allure-server
```

> To clean the reports:

```makefile
make allure-clean
```

#### Tips: Run report

- **All tests** (commands) use the **report** for better visualization of scenarios.

##### To view report

Access on: [GH-PAGES](https://stc-team-project.github.io/robot-api-stc/)

> example:

[![GH-PAGES](https://i.imgur.com/zJCmIfF.png)](https://stc-team-project.github.io/robot-api-stc/)

### CI

> Explain:

The `ROBOT-CI` follow these steps:

- lint for robotframework
- run schema_tests
- run integration_tests
- upload the artifact (in zip file)
- generate report and deploy on github pages: <https://stc-team-project.github.io/robot-api-stc/>

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
