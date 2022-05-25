clean:
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/
	rm -rf log* logs output* report* results*

install:
	pip3 install -r requirements.txt

run-serverest:
	npx serverest -t 600000 -p 3000

run-all:
	robot -d ./logs .

run-regression:
	robot -d ./logs -i @regression .

run-all-integration:
	robot -d ./logs -i @integration ./serverest/tests/integration-tests

run-all-schema:
	robot -d ./logs -i @schema ./serverest/tests/schema-tests

run-test:
	robot -d ./logs -i @test .

run-test-report:
	robot --listener 'allure_robotframework;./logs' .

run-report:
	allure serve ./logs