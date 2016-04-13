## docker-build_searchcode-server  

Automated-build searchcode server community edition image for hub.docker.com  
[repo on github](https://github.com/arkii/docker-build_searchcode-server)  

Thanks author [Benjamin Boyter](http://www.boyter.org/) provides the version ping URL.
  
**searchcode server** powerful code search in your cloud  
Own your data, searchcode server is not a SAAS or cloud product, download and install it on your own server.  
This image is community edition, if you want get commercial support, go to [https://searchcode.com](https://searchcode.com).  

## User Guide

#### try once
``` sh
docker run -p 8080:8080 -d docker.io/arkii/searchcode-server-community
```

#### run searchcode-server in production environment

```sh
mkdir -p /srv/searchcode/index
mkdir -p /srv/searchcode/repo
# copy default configuration file and database to your host fs, so that your configuration could kept after you destroy the container.
# if you want run searchcode-server in production environment, run 2 commands below is recommended.

docker run --rm arkii/searchcode-server-community cp /srv/searchcode.properties /srv/searchcode/searchcode.properties
docker run --rm arkii/searchcode-server-community cp /srv/searchcode.sqlite /srv/searchcode/searchcode.sqlite

git clone https://github.com/arkii/docker-build_searchcode-server.git
cd docker-build_searchcode-server
docker-compose up -d
```

**then visit [http://yourdockerserverip:8080/](http://yourdockerserverip:8080/)**  

To administer your searchcode server instance you need to click on the Admin link in the top right.
Enter the default password **Adm1n234**


## instead of centos v6, now it is alpine based jre runtime  

**After shrink, size of image has reduced.**

Name | Tag | Id | Modified | Size
--- | --- | --- | --- | ---
arkii/searchcode-server | latest | 4b9853529db6 | 12 days ago | 507.4 MB
arkii/searchcode-server-community | latest | af3990b5dd75 | 44 minutes ago | 130.2 MB
