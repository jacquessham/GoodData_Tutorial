# Visualizations in GoodData
Visualization may be created in Analytical Designer, which is where users may create visualization on the UI. However, it is possible to create or manager visualization via APIs in GoodData.CN. In this folder, we will go over how to create, manage, or delete visualizations via API calls.

## Get the Metadata of a Visualization
After you have created a visualization, either in the Analytical Designer or via APIs. You may find the example in <i>get_visualization.sh</i>.

## Delete a visualization
Beside deleting a visualization, you may either delete it in the Analytical Designer or via APIs. If you would like to delete a visualization via API call, you may find the example in <i>delete_visualization.sh</i>.

## Create a Visualization via API
You may find the example in <i>create_visualizations.sh</i>. In the example, you will fill in the metadata within <i>content</i> -> <i>buckets</i> array. Within the <i>buckets</i> array, it contains all the attributes, measures, and/or metrics used in the visualization and each element represents each attribute, measure, and/or metric. Each element may consists of <i>localIdentifier</i>, which can simply a random hash number. At last, the visualization type would be defined under <i>visualizationUrl</i>.

## Next Step
You may find instruction on adding visualizations to [Dashboard](../Dashboard).
