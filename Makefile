clean: allure-clean
	rm -fr .tox/
	rm -f .coverage
	rm -fr htmlcov/
	rm -rf log* logs output* report*

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
	robot --listener 'allure_robotframework:allure-results' -i @schema ./serverest/tests/schema-tests

run-test:
	robot -d ./logs -i @test .

run-test-report:
	robot --listener 'allure_robotframework:allure-results' .

allure-report:
	allure generate allure-results --clean -o allure-report

allure-server:
	allure serve allure-results

allure-history:
	mv -f allure-report/history allure-results/history && rm -r allure-report || true

allure-clean:
	rm -r allure-* allure_* || true