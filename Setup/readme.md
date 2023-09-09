# Setup GoodData.CN
GoodData.CN community edition can be hosted via Docker and requires a database to query from. The best choice of a database for a small personal use case is using Postgres database. It is recommended to use the <b>latest</b> version GoodData.CN. However, the community edition is not able to add users to the environment and create confusion to dashboard permission. In order to avoid this confusion, you may deploy GoodData.CN <b>version 2.2</b>, which is the last version without dashboard permission.

## docker-compose up
In the <i>docker-compose.yml</i> file defines two containers configuration of both GoodData.CN and Postgres database in the Docker network. If you would like to downgrade GoodData.CN to version 2.2, you may update that at the GoodData.CN image to <i>image: gooddata/gooddata-cn-ce:2.2</i>. Once it is updated, you may execute the following code on the command line to run the Docker network:

```
docker-compose up
```


## docker run
If you are connecting with another database or data warehouse and do not need to create a Docker network, you may simply execute the bash script <i>gooddata_init.sh</i> on the command line to run the container:

```
sh gooddata_init.sh
```

You may also update the version in the file too.

## Next Step
Once you have set up and Docker running, you may create the connection between GoodData.CN and the database. You may find the details in the [Connection](../Connection) folder.

## Reference
* GoodData.CN <a href="https://hub.docker.com/r/gooddata/gooddata-cn-ce">Docker Image</a> Documentation