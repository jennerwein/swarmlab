# Getting started:

In this project, we build a simple Nodejs application, wich shows the local IP-Address.

1- Build and push the load-balancer Image (you can choose between the three algorithms):
Go please to the Folder where your load-balancing algorithm defined is (round-robin for example), and start the script push-loadbalancer.sh

``` ./push-loadbalancer.sh ```

2- Go please to the Folder where your docker-compose file is, and start it:

``` docker-compose up ```

## load-balancer:

# Load Balancing Basics with NGinx

Hight availability, fault-tolerance and optimization are always desirable and the Technologies and tools, helping to such gain in time and material take more and more importance inside big or even small entreprises.

Load balancing is often used to optimize resources and also to reduce latency.
Nginx is a very efficient HTTP load balancer, easy to configure, and can be used to distribute the data traffic over several servers.

# Create a Load Balancing Szenario:

## Load Balancing Methods:

Nginx supports several methods for load balancing:

> **Round-Robin:**

This method is used by default (if no Load-Balancing algorithm is specified, Round-Robin will be used), very easy to implement. A group of servers is defined in the [upstream] directive, the round robin load balancer searches through the list and forwards the client request to each server one after the other.
Round-robin method takes the [server] [weights] into account.

```javascript
http {
    upstream backend {
        server backend1.example.com;
        server backend2.example.com;
        server 192.0.0.1 backup;
    }
}
```

**Round-Robin limits**

When for example one of the servers has small capacity, the load-balancer with Round-Robin method will not take that in consideration and still distribute requests equally, as a result this server can be overloaded and go down.

> **weighted Round-Robin:**

With this method, we can assign more requests to the server with better capability of treating more requests.

In this example, **weight** means that in 6 requests, 5 of them will be transfered to the **server backend1.example.com**

```javascript
http {
    upstream backend {
        server backend1.example.com weight=5;
        server backend2.example.com;
        server 192.0.0.1 backup;
    }
}
```

> **Least Connections:**

Even if the servers have the same specs, it could be that one server will rapidly overloaded because for example the connected clients in this server stay for much more time connected.

With least-connections algorithm, connections will be sent to the server with least number of active connections

```javascript
http {
    upstream backend {
        least_conn;
        server backend1.example.com weight=5;
        server backend2.example.com;
        server 192.0.0.1 backup;
    }
}
```