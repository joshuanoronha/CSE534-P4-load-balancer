## Nginx Load Balancing

### How to install Nginx

On Ubunutu, run 
``` sudo apt update && sudo apt install nginx```

### LB config files

The config files for the four load balancing algorithms - round robin, random, weighted round robin and ip hash are provided.

### How to config lb files

1. Copy the required lb config file to ```/etc/nginx/conf.d```.
2. Run ```sudo systemctl restart nginx``` to restart the Nginx LB.

### How to set up the experiment

1. Run the notebook ```nginx_load_balancer.ipynb``` on FABRIC testbed to set up the basic experiment.
2. Run the notebook ```nginx_load_balancer_updated.ipynb``` on FABRIC testbed to set up the updated experiment. 
3. Follow the steps in P4 dir to setup the routers r1, r2
4. Install Flask on the servers s1, s2.

### Code Description
1. nginx_load_balancer.ipynb is the notebook to create a simple setup with 2 servers and 1 client for Nginx load balancer on FABRIC.
2. nginx_load_balancer_updated.ipynb creates a setup with 2 servers, 2 clients, 2 routers and 1 Nginx Load balancer.
3. analysis.ipynb was used to generate few graphs for the report.
4. nginx_random.conf, nginx_ip_hash.conf, nginx_wrr.conf, nginx_rr.conf are the Nginx config files for different load balancing algorithms.
5. server_route_config.txt describes the static routes in simple Nginx LB setup.
