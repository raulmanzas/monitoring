from http.server import BaseHTTPRequestHandler, HTTPServer
from prometheus_client import start_http_server, Counter


class SimpleHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        request_counter.inc()
        self.send_response(200)
        self.end_headers()
        self.wfile.write(b'test')


if __name__ == '__main__':
    request_counter = Counter('test_requests_total', 'Total requests received')
    start_http_server(5001)
    server = HTTPServer(('localhost', 5000), SimpleHandler)
    server.serve_forever()
