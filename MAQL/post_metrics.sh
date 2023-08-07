curl -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -X POST \
  http://localhost:3000/api/v1/entities/workspaces/demo_ws/metrics \
  -d '{
  "data": {
    "id": "sales",
    "type": "metric",
    "attributes": {
      "title": "Sales",
      "description": "",
      "content": {
        "format": "#,##0.00",
        "maql": "SELECT sum({metric/revenue})"
      }
    }
  }
}'

curl -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
  -H "Content-Type: application/vnd.gooddata.api+json" \
  -H "Accept: application/vnd.gooddata.api+json" \
  -X POST \
  http://localhost:3000/api/v1/entities/workspaces/demo_ws/metrics \
  -d '{
  "data": {
    "id": "revenue_editedprice",
    "type": "metric",
    "attributes": {
      "title": "Revenue (Edited Price)",
      "description": "",
      "content": {
        "format": "#,##0",
        "maql": "SELECT SUM(SELECT CASE WHEN {label/date.dayOfWeek}=\"3\" Then 0.8*{fact/order_lines.price}*{fact/order_lines.quantity}, WHEN {label/date.dayOfWeek}=\"0\" Then 1.2*{fact/order_lines.price}*{fact/order_lines.quantity} ELSE {fact/order_lines.price}*{fact/order_lines.quantity} end)"
      }
    }
  }
}'