# This file will pull a few UFT samples for use in training and demo purposes.
# It requires that nimbusserver is up and connected and the devops container is running.
# This script should placed in the default UFT tests folder located at: C:\Users\demo\Documents\Unified Functional Testing
#
# These samples also exist on the public admpresales git hub so they could also be cloned from 
# https://github.com/admpresales/

git clone http://nimbusserver:8091/git/uft-one-aos-web-regression.git
git clone http://nimbusserver:8091/git/uft-one-aos-web-sanity.git
git clone http://nimbusserver:8091/git/uft-one-flight-te-reflection-regression
git clone http://nimbusserver:8091/git/uftone-ai-aos-for-340
git clone http://nimbusserver:8091/git/uftone-flights-api-for-340
git clone http://nimbusserver:8091/git/uftone-web-aos-gui-for-340
git clone http://nimbusserver:8091/git/uft-one-flight-gui-comprehensive

Xcopy /E /I uft-one-aos-web-regression\AOS_UFT_WEB_Regression .\AOS_UFT_WEB_Regression
Xcopy /E /I uft-one-aos-web-sanity\AOS_UFT_WEB_Sanity .\AOS_UFT_WEB_Sanity

# Since the TE script has the same name inside of git we rename it first with a move command
move uft-one-flight-te-reflection-regression uft-one-flight-te-reflection-regression-git
Xcopy /E /I uft-one-flight-te-reflection-regression-git\uft-one-flight-te-reflection-regression .\uft-one-flight-te-reflection-regression

# Remove the cloned git repos so these all look like regular UFT-One projects
rmdir /Q/S uft-one-aos-web-regression
rmdir /Q/S uft-one-aos-web-sanity
rmdir /Q/S uft-one-flight-te-reflection-regression-git
