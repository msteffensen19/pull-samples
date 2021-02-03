# This file will pull a few SCENARIO samples for use in training and demo purposes.
# It requires that nimbusserver is up and connected and the devops container is running.
# This script should placed in the default SCENARIO tests folder located at: C:\Users\demo\Documents\Controller\scenario
#
# These samples also exist on the public admpresales git hub so they could also be cloned from 
# https://github.com/admpresales/

git clone http://nimbusserver:8091/git/controller-aos-web-html

copy controller-aos-web-html\controller-aos-web-html.lrs .\controller-aos-web-html.lrs

