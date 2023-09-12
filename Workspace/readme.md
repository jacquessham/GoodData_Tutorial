# Workspace Management
Workspace is a basic unit in GoodData.CN, or a tenant within GoodData.CN. A workspace is where a group of users who have the same data access to interact and share analytics within the same environment. In GoodData.CN, a typical architecture is to have one master workspace (Governed by the admins), and create an array of children workspaces which inherited the objects from the master workspace, including but not limited to logical data model, visualizations, dashboards. In order to distribute analytics to different workspaces, you may apply a data filter to set up data access to different workspaces based on attribute values available in the dataset. In this folder, we will go over how to manage workspaces, workspace layout, and data filter.

## Create a New Workspace
You may create a new workspace on the GoodData.CN UI, alternatively, you may make an API call to create a new workspace. Beside you may easily scale up compared with creating new workspaces on the UI, you may also declare Workspace ID through API (If you create a new workspace on the UI, the GoodData.CN engine create a hash string as the Workspace ID). You may find <i>create_ws.sh</i> as the example to create a new workspace.

### Create a New Child Workspace
Once you have a master workspace, you may create children workspaces with a parent-children hierarchy. To do so, you may add more metadata configuration within the <i>relationship</i> column to set the parent workspace. You may find <i>create_childws.sh</i> for the example.

## Import Layout
In order to duplicate a workspace, you may import a JSON file of workspace layout to another workspace. You may find <i>import_layout.sh</i> for the example. If you duplicate a workspace with this approach, it will not create a workspace with a parent-children hierarchy with another workspace.
<br><br>
Note 1: It is not recommended to import layout of JSON file exported with another version as some columns in the JSON file may not be used in the version of GoodData.CN you are using.
<br><br>
Note 2: An example workspace layout JSON file is currently not available, will be available in the future.

### Export Layout
Once you have develop dashboards and visualizations in a workspace, you may export the metadata to a JSON file. YOu may find <i>export_layout.sh</i> for the example. Once you have the JSON file exported, you may import the layout with the import layout API.


## Apply Data Filter
In order to distribute analytics to different workspaces, you may apply a data filter to set up data access to different workspaces based on attribute values available in the dataset. You may find <i>create_ws_filter.sh</i> for the example, such API will use <i>ws_filter.json</i> as the payload of the API.

### Delete Data Filter
Since the API used in GoodData.CN is declarative API, in order to delete a data filter, you need to upload the payload with empty payload (Or the configuration less the filter to be deleted). You may find <i>delete_ws_filter.sh</i> for the example.

## Next Step
After creating a workspace, it is essential to create a logical data model. You may find the instruction in the [LDM](../LDM) folder.