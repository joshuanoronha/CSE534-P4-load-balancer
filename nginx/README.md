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
