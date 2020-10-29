# Practice sheet 7

You created in Lab-4 a Whoami image, this image will now be used to discover some load balancing algorithms.

## Exercise 1

The main objective of this exercise is to discover some load balancing algorithms:

- round-robin
- weighted-round-robin
- least-connections

round-robin | weighted-round-robin | least-connections
------------ | ------------- | -------------------
This method is used by default (if no Load-Balancing algorithm is specified, Round-Robin will be used), very easy to implement. A group of servers is defined in the [upstream] directive, the round robin load balancer searches through the list and forwards the client request to each server one after the other. Round-robin method takes the [server] [weights] into account. | When for example one of the servers has small capacity, the load-balancer with Round-Robin method will not take that in consideration and still distribute requests equally, as a result this server can be overloaded and go down | Even if the servers have the same specs, it could be that one server will rapidly overloaded because for example the connected clients in this server stay for much more time connected.

[See the documentation to discover other algorithms](https://docs.nginx.com/nginx/admin-guide/load-balancer/http-load-balancer/)

Create a load balancing scenario (based on the three algorithms mentioned or choose other from the official documentation), create a **[Dockerfile](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)** to create an image of this scenario and push it to your **[Dockerhub](https://hub.docker.com/)**

## Exercise 2

- The objective of this exercise is to illustrate load-balancing based on Whoami application. Try to use your three load-balancing configuration files from exercice 1 to test and describe the functionality of your load-balancers.

Try to write a **[Docker-compose](https://docs.docker.com/compose/gettingstarted/)** in order to start three services or even more (is your choice) and call the the Whoami application in the browser, each time with a new background.

**[Hint]: call the Whoami app, each time with a new port number and look for a solution to get a new color code on each call (use the hostname for example)**