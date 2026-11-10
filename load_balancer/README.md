# Load Balancer Project

## Overview

This project focuses on configuring web servers and implementing load balancing using Nginx and HAProxy on Ubuntu servers.

The objective is to distribute incoming HTTP traffic between two web servers, improve availability, and identify which server handles each request.

## Servers Used

| Server | Hostname | Private IP | Role |
|---|---|---|---|
| Web Server 1 | 7281-web-01 | 10.30.31.159 | Hosts the Nginx web server |
| Web Server 2 | 7281-web-02 | 10.30.26.93 | Hosts the Nginx web server |
| Load Balancer | 7281-lb-01 | — | Distributes traffic using HAProxy |

## Project Tasks

### Task 0: Custom HTTP Response Header

**Script:** `0-custom_http_response_header`

This script configures a new Ubuntu machine with Nginx and adds a custom HTTP response header.

The header identifies which web server handled the request.

Header configuration:

- Header name: `X-Served-By`
- Header value: The hostname of the server.

Example response:

```text
X-Served-By: 7281-web-01
```

The same configuration is applied to both web servers.

### Task 1: Install and Configure HAProxy

**Script:** `1-install_load_balancer`

This script installs and configures HAProxy on the load balancer server.

HAProxy distributes incoming HTTP requests between the two web servers using the round-robin algorithm.

Backend servers:

```text
7281-web-01  10.30.31.159:80
7281-web-02  10.30.26.93:80
```

The configuration also enables HAProxy to check whether the backend servers are available.

## Files

| File | Description |
|---|---|
| `0-custom_http_response_header` | Installs Nginx and configures the custom HTTP response header |
| `1-install_load_balancer` | Installs and configures HAProxy |
| `1-haproxy_ssl_termination` | Contains the HAProxy SSL termination task |

## Testing

### Test the Nginx servers

Run the following command on each web server:

```bash
curl -I localhost
```

Expected response header on web-01:

```text
X-Served-By: 7281-web-01
```

Expected response header on web-02:

```text
X-Served-By: 7281-web-02
```

### Test HAProxy

On the load balancer, run:

```bash
sudo systemctl status haproxy
```

Check that the service is running.

Then send multiple requests:

```bash
curl -I http://localhost
```

The `X-Served-By` header should alternate between the two web servers.

You can also test using the load balancer's public IP:

```bash
curl -I http://13.40.24.204
```

## Technologies Used

- Ubuntu Linux
- Nginx
- HAProxy
- Bash scripting
- HTTP
- SSH
- Round-robin load balancing

## Conclusion

The project demonstrates how to configure two Nginx web servers and use HAProxy to distribute incoming HTTP traffic between them.

The custom `X-Served-By` response header makes it possible to identify which backend server handled each request.

