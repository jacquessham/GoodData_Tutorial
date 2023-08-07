curl http://localhost:3000/api/v1/layout/workspaces/demo_ws \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -X PUT \
  -d @gooddata_demo_layout.json