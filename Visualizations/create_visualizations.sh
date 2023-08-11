curl -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -X POST \
  http://localhost:3000/api/v1/entities/workspaces/demo_ws/visualizationObjects \
  -d '{
  "data": {
    "id":"testing_insight",
    "type": "visualizationObject",
    "attributes": {
      "title":"Testing Insight",
      "description":"",
      "content":{
          "buckets": [
            {
              "items": [
                {
                  "measure": {
                    "localIdentifier": "8839cae840d8459caa35400d94abd44d",
                    "definition": {
                      "measureDefinition": {
                        "item": {
                          "identifier": {
                            "id": "revenue",
                            "type": "metric"
                          }
                        },
                        "filters": [
                          
                        ]
                      }
                    },
                    "title": "Revenue"
                  }
                }
              ],
              "localIdentifier": "measures"
            },
            {
              "items": [
                {
                  "attribute": {
                    "localIdentifier": "c8285e3eb43f448d84ff2056950ada6b",
                    "displayForm": {
                      "identifier": {
                        "id": "date.day",
                        "type": "label"
                      }
                    }
                  }
                }
              ],
              "localIdentifier": "trend"
            }
          ],
          "filters": [
            
          ],
          "sorts": [
            
          ],
          "properties": {
            
          },
          "visualizationUrl": "local:line",
          "version": "2"
      }
    }
  }
}'