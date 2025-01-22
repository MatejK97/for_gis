<h1>DESCRIPTION</h1>
<p>
  This is a docker compose with 3 containers: <br>
    1. Apache containter that serves a static website which runs on port 8080 <br>
        - uses the static directory to persistant volume <br>
    2. Mysql Database container that is connected to WordPress <br>
        - uses the mysql directory for presistant volume <br>
    3. WordPress container which runs on port 8081 and has a custom page, status.php that shows us if we connected to MySQL <br>
        - uses the status directory for presistnat volume <br>
</p>

<p>
  We have a manage.sh script with which we can manipulate the docker compose <br>
  Run manage.sh with any of the following options: <br>
        'start' -- to start the docker compose containers <br>
        'stop' -- to stop the docker compose containers <br>
        'logs' -- to see the docker compose container logs <br>
        'status' -- to see the status of the docker compose containers <br>
        'help' -- to see all of the available arguments <br>
</p>

<h3>SETUP</h3>
<h4>Clone the git repository</h4>
<p>git clone https://github.com/MatejK97/for_gis.git</p>
<h4>Cd into the repository</h4>
<p>cd for_gis/</p>
<h4>Start the docker compose</h4>
<p>sh manage.sh start</p>
<h4>Check the status of docker containers</h4>
<p>sh mange.sh status</p>
