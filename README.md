# forward-proxy
Setup forward proxy server using Apache trafficserver
*  If your server is on private subnet, your server cannot get out to internet directly.
*  You can setup a forward proxy server (with a public IP address).
*  Setup your firewall to allow your forward proxy server outbound to the WWW
*  On your private subnet server, setting http_proxy=yourtrafficserver:8080 and https_proxy=yourtrafficserver:8080 variables and test with curl https://www.google.com

