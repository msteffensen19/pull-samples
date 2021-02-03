# This file will pull a few ANALYSIS samples for use in training and demo purposes.
# It requires that nimbusserver is up and connected and the devops container is running.
# This script should placed in the default ANALYSIS folder located at: C:\Users\demo\Documents\Analysis
#
# These samples also exist on the public admpresales git hub so they could also be cloned from 
# https://github.com/admpresales/

git clone http://nimbusserver:8091/git/analysis-aos-web.git

Xcopy /E /I analysis-aos-web\analysis-aos-web .\analysis-aos-web

