#!/bin/bash
cd retrieve_development_contact_info
rm -rf vendor
bundle config set --local path 'vendor/bundle'
bundle install
cd ..
zip -r ../compiled/retrieve_development_contact_info retrieve_development_contact_info
