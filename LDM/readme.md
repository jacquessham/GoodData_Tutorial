# Logical Data Model
The logical data model (LDM) is the required first step before doing any analytics in GoodData.CN. It defines what columns and data model relationship to be utilized in the workspace and map to the physical data model. Once you have the LDM, you may define metrics and create visualization. You may create a LDM on the GoodData.CN UI, but you may create a LDM via an API demostrate in this folder.

## Put LDM
In order to duplicate the LDM from another workspace, you may export the LDM from that workspace to a JSON file and put it to a target workspace. You may find <i>put_ldm.sh</i> for the example.
<br><br>
Note: An example LDM JSON file is currently not available, will be available in the future.

## Get/Export LDM
You may export the LDM from a workspace after you have created on the GoodData.CN UI. You may find <i>get_ldm.sh</i> for the example.

## Next Step
After the LDM is prepared, you may define the metrics with MAQL. You may find the instruction in the [MAQL](../MAQL) folder.
