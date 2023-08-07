curl http://localhost:3000/api/v1/actions/dataSources/demo-ds/scan \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
-X POST \
-d '{"separator": "__", "scanTables": true, "scanViews": false}' > pdm.json