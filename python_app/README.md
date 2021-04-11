# Pushing metrics from a python app

The code in this repository implements metrics extraction using prometheus_client from a http server.
A counter metric called `test_requests_total` has been created and it's value is incremented whenever a 
GET request is handled by SimpleHander.
