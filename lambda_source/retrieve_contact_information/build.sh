#!/bin/bash
cd retrieve_contact_information
rm -rf vendor
bundle config set --local path 'vendor/bundle'
bundle install
cd ..
zip -r ../../compiled/retrieve_contact_information retrieve_contact_information
