curl http://localhost:3000/api/v1/entities/workspaces \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -X POST \
  -d '{
      "data": {
          "attributes": {
              "name": "GoodData Demo"
          },
          "id": "demo_ws",
          "type": "workspace"
      }
  }'