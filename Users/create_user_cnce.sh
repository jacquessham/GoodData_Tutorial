curl -H "Authorization: Bearer YWRtaW46Ym9vdHN0cmFwOmFkbWluMTIz" \
     -H "Content-type: application/json" -d '{"email": "jacquessham2015@gmail.com",
     "password": "123456", "displayName": "Jacques Sham"}' --request POST \
     http://localhost:3000/api/v1/auth/users
