# Metrics/Multidimensional Analytical Query (MAQL)
In a brief summary, Multidimesional Analytical Query (MAQL) is GoodData's proprietyary querying language that simplify they query from SQL where you do not have to worry about table dimensions and easily translate your business logic to a simply query. MAQL is a helpful tool to make simple or complex statistical calculations to create visualization. Metrics in GoodData.CN not only can be created on the UI but also via an API call. In this folder, we will go over how to manage metrics with MAQL definition via API calls.


## How to use MAQL
This section will be discussed in the future. In the meantime, you may find more instruction in the <a href="https://www.gooddata.com/developers/cloud-native/doc/2.2/create-metrics/maql/maql-and-multidimensionality/">documentation</a> page.


## Post a New Metric
Once we have definition of a metric, you may make an API call with the definition in MAQL. You may find two examples in <i>post_metrics.sh</i>. The first one is a simple example to demostrate how to define a simple metric. The second one is an example to demostrate how to use escape characters to include keywords or string within a MAQL definition.

## Get the Metadata of a Metric
You may obtain a list of metrics you have previously defined. You may find the example script in <i>get_metrics.sh</i>.

## Delete a Metric
You may delete metric and you may find the example script in <i>delete_metrics.sh</i>. You should replace Metric ID of the desired metric you want to delete.

## Add Metric to the Data Catalog
After you have post a new metric, it does not automatically add to the data catalog in the Analytical Designer. You have to add it through an API call, the example script <i>add_metric2ad.sh</i> would show you how to do so.

## Next Step
Once you have the metrics defined, you use the metrics to create visualization and dashboard. Although both are usually be done on the UI, it is possible to create via API calls. You may find the instruction in the [Visualization](../Visualizations) and the [Dashboards](../Dashboards) folder. If you decide to create on the UI, you may find the instruction of life cycle management (LCM) in the [LCM](../LCM) folder.
