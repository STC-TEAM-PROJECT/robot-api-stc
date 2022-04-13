# ROBOT-API-STC
-----------------------

[![SERVREST API](https://img.shields.io/badge/API-ServeRest-brightgreen)](https://github.com/PauloGoncalvesBH/ServeRest/)

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

- Install all dependencies via **requirements.txt**:

> Install dependencies:

```js
$ cd ${HOME}/robot-api-stc && pip3 install -r requirements.txt
```

> Tips:

- Use your _requirements.txt_ to add or remove libs

-----------------------

### How to test

> To install repo dependencies:

```js
$ pip3 install -r requirements.txt
```

> To run all tests:

```js
$ robot .
```

> To run all regression tests:

```js
$ robot -i @regression .
```

> To run all schemas tests:

```js
$ robot -i @schemas_tests .
```

> To run all integration tests:

```js
$ robot -i @integration_tests .
```

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

```js
$ robot -d ./logs .
```

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
