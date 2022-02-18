#!/bin/bash
rm -rf vendor
bundle config set --local path 'vendor/bundle'
bundle install
cd ..
zip -r ../../compiled/retrieve_contact_information .
