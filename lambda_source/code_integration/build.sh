#!/bin/bash
# rm -rf vendor
# bundle config set --local path 'vendor/bundle'
# bundle install
ruby CodeIntegration.rb
zip -r ../../compiled/code_integration .
