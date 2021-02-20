#
#   generate build.sh, docker-composer.xml, startup based on vars.env file.
#
# build.templ  docker-compose.templ  startup.templ
. ./vars.env
#
cat build.templ | gomplate > build.sh
chmod 755 build.sh
#
cat docker-compose.templ | gomplate > docker-compose.yml
#
cat startup.templ | gomplate > startup
chmod 755 startup

