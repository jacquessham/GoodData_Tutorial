curl http://localhost:3000/api/v1/entities/dataSources \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -X GET > datasources.json