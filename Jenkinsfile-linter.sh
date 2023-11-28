#!/bin/bash
npm install npm-groovy-linter || {
  exit 2
}
export PATH=$HOME/bin/jdk17/bin:$PATH
export JAVA_HOME="$HOME/bin/jdk17"
java -version
npm-groovy-lint
