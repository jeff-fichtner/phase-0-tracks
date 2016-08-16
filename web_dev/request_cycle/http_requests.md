##Release 0: View HTTP Requests

What are some common HTTP status codes?

>1xx: informational
2xx: success
	- 200 OK
	- 201 Created
	- 204 No Content
3xx: redirection
	- 304 Not Modified
4xx: client error
	- 400 Bad Request
	- 401 Unauthorized
	- 403 Forbidden
	- 404 Not Found
	- 409 Conflict
5xx: server error
	- 500 Internal Server Error


What is the difference between a GET request and a POST request? When might each be used?

>GET - asks for data, can be cached and bookmarked, not to be used with sensitive data
POST - sends data, not cached or bookmarked, no data restrictions, binary included


Optional bonus question: What is a cookie? How does it relate to HTTP requests?

>A cookie is a piece of data stored in the web browser. It either expires at the end of the session or persists, allowing a user to stay logged in, for example.

>When a browser makes an HTTP request, the server responds by setting those cookies, and then they're sent back with each future HTTP request, where they're either modified, added to or deleted.