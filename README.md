# docker-hhvm-typo3-cms

A Debian based Container for run TYPO3 CMS (6.X) with HHVM


We need a Mysql-Server 

```sh
$ sudo docker pull mysql
```

## Build the Container

```sh
$ sudo docker build -t="kartoffeltoby/typo3" .
```

## Run Container

```sh
$ sudo docker run  --restart always --rm=false -itd  -e "MYSQL_ROOT_PASSWORD=server" --name mysql  mysql

$ sudo docker run --restart always --rm=false -itd  -p 80:80 --link mysql:mysql -v typo3/:/app/ kartoffeltoby/typo3
```

### Maby we musst set the follwing lines in LocalConfiguration.php

```sh
SYS ->

'setDBinit' => 'SET SESSION sql_mode=\'\'',
'trustedHostsPattern' => '.*',
```
