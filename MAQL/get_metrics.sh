curl -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -X GET \
  http://localhost:3000/api/v1/entities/workspaces/demo_ws/metrics \
  -o metrics.json