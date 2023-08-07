curl http://localhost:3000/api/v1/entities/dataSources \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -X POST \
  -d '{
      "data": {
          "attributes": {
              "name": "Drill-mongoDB",
              "url": "jdbc:drill:drillbit=drill:31010",
              "schema": "dfs.data",
              "type": "DRILL",
              "username":"",
              "password":""
          },
          "id": "drill-gooddata",
          "type": "dataSource"
      }
  }'