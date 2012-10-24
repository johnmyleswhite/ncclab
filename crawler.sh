#!/bin/bash

#http://thomashunter.name/blog/install-wget-on-os-x-lion/

rm -rf html_ncclab

wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --domains localhost \
     --no-parent \
localhost:3000
mv localhost:3000 html_ncclab

scp -r html_ncclab johnmyle@johnmyleswhite.com:/home2/johnmyle/public_html/html_ncclab
