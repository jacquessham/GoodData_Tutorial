curl http://localhost:3000/api/v1/entities/workspaces \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -X POST \
  -d '{
      "data": {
          "attributes": {
              "name": "GoodData Demo (Child 1)"
          },
          "id": "demo_child1_ws",
          "type": "workspace",
          "relationships": {
            "parent": {
                "data": {
                  "id": "headquarters",
                  "type": "workspace"
                }
            }
          }
      }
    }'