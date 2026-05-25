SHELL := /bin/bash
.SHELLFLAGS = -ec
.ONESHELL:

install:
	npm i

install-dev:
	npm i

test:
	npx vows --xunit > junit.xml

lint:
	echo "No lint command defined."

integration:
	echo '<testsuite name="integration" tests="0"></testsuite>' > jintegration.xml

.PHONY: test install install-dev lint integration