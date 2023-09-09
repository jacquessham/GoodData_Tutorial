# Connect with Data Sources
Once the GoodData.CN is running, the first step is to connect with a database. We will be using Postgres as the example database. A data source in GoodData is a entity registered in GoodData that allows you to connect such data source with mutliple workspaces. Once the data source is registered in GoodData.CN, you need to have GoodData scans the database and stores under the data source entity before utilizing the data source in the individual workspaces.

## Connecting with Data Sources
You may execute <i>connect_postgres.sh</i> to create a data source in GoodData.CN. In the script, it utilizes the 4 APIs to complete the task:
<ol>
	<li>Establish connection between GoodData and Postgres</li>
	<li>Scan and save the physical model in Postgres and save in JSON</li>
	<li>Upload the layout of the physical model found in Postgres and to connect GoodData</li>
	<li>Refresh the data source (Remove cache, but this step is optional)</li>
</ol>

You may find <i>connect_drill.sh</i> as the example to connect GoodData.CN with Apache Drill.

### Scaning a Data Source
Coming soon...

### Testing a Data Source
Coming soon...

## Getting the List of the Data Sources
You may execute <i>get_datasources.sh</i> to obtain the list of the data sources registered in GoodData.CN. The list will be saved as <i>datasources.json</i> in the current directory.

## Deleting a Data Source
You may execute <i>delete_datasource.sh</i> to delete a data source. In this example script, it is going to delete the data source <i>ps-gooddata-8731</i> created in the <i>connect_postgres.sh</i> script -- Be sure to update the data source ID.

## Refreshing a Data Source/Removing Cache
Coming soon...

## Next Step: Creating a Workspace and Establishing a LDM
Coming soon...

