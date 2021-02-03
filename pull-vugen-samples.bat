# This file will pull a few VUGEN samples for use in training and demo purposes.
# It requires that nimbusserver is up and connected and the devops container is running.
# This script should placed in the default VUGEN scripts folder located at: C:\Users\demo\Documents\VuGen
#
# These samples also exist on the public admpresales git hub so they could also be cloned from 
# https://github.com/admpresales/

git clone http://nimbusserver:8091/git/vugen-aos-web-html
git clone http://nimbusserver:8091/git/vugen-flight-te
git clone http://nimbusserver:8091/git/vugen-html-correlation-examples
git clone http://nimbusserver:8091/git/vugen-aos-shopping
git clone http://nimbusserver:8091/git/vugen-truclient-aos-ios

# Since the pulled scripts have the same name inside of git we rename them first with a move command
# Leave the correlation example in a git repo - don't move, copy or delete
move vugen-aos-web-html vugen-aos-web-html-git
move vugen-flight-te vugen-flight-te-git
Xcopy /E /I vugen-aos-web-html-git\vugen-aos-web-html .\vugen-aos-web-html
Xcopy /E /I vugen-flight-te-git\vugen-flight-te .\vugen-flight-te

# Remove the cloned git repos so these all look like regular VuGen projects
rmdir /Q/S vugen-aos-web-html-git
rmdir /Q/S vugen-flight-te-git
