# GoodData Tutorial
GoodData is a great business intelligence tool for multi-tenancy use cases. However, GoodData offers a community edition (GoodData.CN) to be used without any charge for personal usage. Any action in GoodData.CN is made by calling declarative APIs to update the change in GoodData.CN. In this repository, we will go over how to use GoodData.CN to build your dashboard.

## Basics
Coming soon...

## Setup
GoodData.CN community edition can be hosted via Docker and requires a database to query from. In the [Setup](/Setup) folder, you may find the instruction on how to setup both GoodData.CN and Postgres database with Docker.

## Connect to Postgres
Once the GoodData.CN is running, the first step is to connect with a database. We will be using Postgres as the example database. You may find the instruction in the [Connection](/Connection) folder.

## Workspace Management
Workspace is a basic unit in GoodData.CN, or a tenant within GoodData.CN. A workspace is where a group of users who have the same data access to interact and share analytics within the same environment. You may find the insturction of workspace management in the [Workspace](/Workspace) folder.

## Logical Data Model (LDM)
The logical data model (LDM) is the required first step before doing any analytics in GoodData.CN. It defines what columns and data model relationship to be utilized in the workspace and map to the physical data model. You may find the instruction in the [LDM](/LDM) folder.

## Metrics/MAQL
MAQL is a helpful tool to make simple or complex statistical calculations to create visualization. You may find how to create metrics with MAQL in the [MAQL](/MAQL) folder.

## Visualizations
Coming soon...

## Dashboards
Coming soon...

## LCM
Coming soon...

## Gallery
Coming soon...

## Reference
* GoodData.CN <a href="https://www.gooddata.com/developers/cloud-native/doc/2.2/">
Documentation</a>
* GoodData.CN <a href="https://hub.docker.com/r/gooddata/gooddata-cn-ce">Docker Image</a> Documentation