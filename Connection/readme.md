# Connect with Data Sources
Once the GoodData.CN is running, the first step is to connect with a database. We will be using Postgres as the example database. A <a href="https://www.gooddata.com/developers/cloud-native/doc/2.2/connect-data/concepts/data-source/">data source</a> in GoodData is a entity registered in GoodData that allows you to connect such data source with mutliple workspaces. Once the data source is registered in GoodData.CN, you need to have GoodData scans the database and stores under the data source entity before utilizing the data source in the individual workspaces.

## Connecting with Data Sources
You may execute <i>connect_postgres.sh</i> to create a data source in GoodData.CN. In the script, it utilizes the 4 APIs to complete the task:
<ol>
	<li>Establish connection between GoodData and Postgres</li>
	<li>Scan and save the physical model in Postgres and save in JSON</li>
	<li>Upload the layout of the physical model found in Postgres and to connect GoodData</li>
	<li>Refresh the data source (Remove cache, but this step is optional)</li>
</ol>

<br>
You may find <i>connect_drill.sh</i> as the example to connect GoodData.CN with Apache Drill.
<br><br>
Documentation <a href="https://www.gooddata.com/developers/cloud-native/doc/2.2/connect-data/data-source-entity/#CreateandTestDataSources-CreateandManageDataSources">link</a>

### Scaning a Data Source
Once you have registered a data source, it is required to generate a physical data model (PDM) for GoodData.CN to map the metadata to the database before working on a logical data model (LDM). You may use <i>scan_ds.sh</i> as the example script to scan the data source. If you cannot or do not want to use this API, it can be done on the UI in the LDM Modeler. 
<br><br>
Documentation <a href="https://www.gooddata.com/developers/cloud-native/doc/2.2/model-data/create-pdm/pdm/">link</a>

### Testing a Data Source
Once you have registered a data source, you may test the connectivity of the data source. You may use <i>test_ds.sh</i> as the example script to test the data source <i>ps-gooddata-8731</i> -- Be sure to update the data source ID.
<br><br>
Documentation <a href="https://www.gooddata.com/developers/cloud-native/doc/2.2/connect-data/data-source-entity/#CreateandTestDataSources-CreateandManageDataSources">link</a>

### Supported Databases
GoodData.CN supports the mainstream databases/data warehouses such as:
<ul>
	<li>Postgres</li>
	<li>AWS Redshift</li>
	<li>Google BigQuery</li>
	<li>Vertica</li>
	<li>etc...</li>
</ul>

<br>
Above are the example databases/data warehouses supported by GoodData.CN, be sure to check with the updated list in the <a href="https://www.gooddata.com/developers/cloud-native/doc/cloud/connect-data/">documentation</a> page.

## Getting the List of the Data Sources
You may execute <i>get_datasources.sh</i> to obtain the list of the data sources registered in GoodData.CN. The list will be saved as <i>datasources.json</i> in the current directory.

## Deleting a Data Source
You may execute <i>delete_datasource.sh</i> to delete a data source. In this example script, it is going to delete the data source <i>ps-gooddata-8731</i> created in the <i>connect_postgres.sh</i> script -- Be sure to update the data source ID.

## Refreshing a Data Source/Removing Cache
Whenever a visualization is rendered in GoodData.CN, the result is cached in the data source object; even the dataset is updated, it will not reflected in GoodData.CN unless you refresh the data source/remove cache in GoodData.CN. You may execute <i>refresh_datasource.sh</i> to do so. In this example script, it is going to refresh the data source <i>ps-gooddata-8731</i> -- Be sure to update the data source ID.
<br><br>
Documentation <a href="https://www.gooddata.com/developers/cloud-native/doc/2.2/connect-data/notification/">link</a>

## Next Step: Creating a Workspace and Establishing a LDM
Once you have register a data source in GoodData.CN, you may utilize the data source to exposure to the workspaces. In the next step, we will go over how to create a worksapce(s) and establish a logical data model (LDM) on top of the data source in the [Workspace](../Workspace) folder.

