clean: allure-clean
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/
	rm -rf log* logs output* report*

install:
	pip3 install -r requirements.txt

run-serverest:
	npx serverest -t 600000 -p 3030

run-all:
	robot -d ./logs -V ./env/$(ENV).yaml .

run-regression:
	robot -d ./logs -i @regression -V ./env/$(ENV).yaml .

run-all-integration:
	robot -d ./logs --listener 'allure_robotframework:allure-results' -i @integration_tests -V ./env/$(ENV).yaml ./serverest/tests/integration-tests

run-all-schema:
	robot -d ./logs --listener 'allure_robotframework:allure-results' -i @schema_tests -V ./env/$(ENV).yaml ./serverest/tests/schema-tests

run-test:
	robot -d ./logs -i @test -V ./env/$(ENV).yaml .

run-test-report:
	robot -d ./logs --listener 'allure_robotframework:allure-results' -V ./env/$(ENV).yaml .

allure-report:
	allure generate allure-results --clean -o allure-report

allure-server:
	allure serve allure-results

allure-history:
	mv -f allure-report/history allure-results/history && rm -r allure-report || true

allure-clean:
	rm -r allure-* allure_* || true