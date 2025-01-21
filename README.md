<h1>DESCRIPTION</h1>
<p>
  This is a docker compose with 3 containers:
    1. Apache containter that serves a static website which runs on port 8080
        - uses the static directory to persistant volume
    2. Mysql Database container that is connected to WordPress
        - uses the mysql directory for presistant volume
    3. WordPress container which runs on port 8081 and has a custom page, status.php that shows us if we connected to MySQL
        - uses the status directory for presistnat volume
</p>

<p>
  We have a manage.sh script with which we can manipulate the docker compose
  Run manage.sh with any of the following options:
        'start' -- to start the docker compose containers
        'stop' -- to stop the docker compose containers
        'logs' -- to see the docker compose container logs
        'status' -- to see the status of the docker compose containers
        'help' -- to see all of the available arguments
</p>
