# **Development Setup**

Step 1: clone the repo

> git clone git@gitlab.elapps.com:elitmus/elitmus-campus.git

Step 2: Create database user, database, and load the data from a dump

> mysql> grant all privileges on organisation. _to 'organisation'@'localhost' identified by 'organisation';
> mysql>flush privileges;
> mysql>create database organisation;

Step 3: Initialize project

> rake db:migrate
>
> rake assets:precompile

Step 4: Start services

> mysql.server start
# **Development Setup**

Step 1: clone the repo

> git clone git@gitlab.elapps.com:elitmus/elitmus-campus.git

Step 2: Create database user, database, and load the data from a dump

> mysql> grant all privileges on organisation. _to 'organisation'@'localhost' identified by 'organisation';
> mysql>flush privileges;
> mysql>create database organisation;

Step 3: Initialize project

> rake db:migrate
>
> rake assets:precompile

Step 4: Start services

> mysql.server start
>
> rails s