curl http://localhost:3000/api/v1/layout/workspaces/demo_ws/analyticsModel \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -X PUT \
  -d '{
    "analytics": {
        "analyticalDashboards": [],
        "dashboardPlugins": [],
        "filterContexts": [],
        "metrics": [
            {
                "content": {
                    "format": "$#,##0",
                    "maql": "SELECT SUM({fact/budget})"
                },
                "description": "",
                "tags": [],
                "id": "test",
                "title": "Test"
            }
        ],
        "visualizationObjects": []
    }
}' 