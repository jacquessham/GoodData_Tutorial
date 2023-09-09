# Establish connection between GoodData and Postgres
curl http://localhost:3000/api/v1/entities/dataSources \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -X POST \
  -d '{
      "data": {
          "attributes": {
              "name": "Postgres 8731",
              "url": "jdbc:postgresql://host.docker.internal:8731/postgres",
              "schema": "gooddata_freemium",
              "username":"some_username",
              "password":"some_password",
              "type": "POSTGRESQL"
          },
          "id": "ps-gooddata-8731",
          "type": "dataSource"
      }
  }'

# Scan and save the physical model in Postgres and save in JSON
curl http://localhost:3000/api/v1/actions/dataSources/ps-gooddata-8731/scan \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
-X POST \
-d '{"separator": "__", "scanTables": true, "scanViews": false}' > pdm.json

# Upload the layout of the physical model found in Postgres and to connect GoodData
curl http://localhost:3000/api/v1/layout/dataSources/ps-gooddata-8731/physicalModel \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -H "Content-Type: application/json" \
  -X PUT -d @pdm.json

# Delete pdm.json
rm pdm.json

# Refresh the data source
curl http://localhost:3000/api/v1/actions/dataSources/ps-gooddata-8731/uploadNotification -X POST \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz"