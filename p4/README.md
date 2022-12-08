# P4 Load Balancer

## How to install P4 dependencies

Install P4C, simple_switch (bmv2), protoc by following this guide: https://opennetworking.org/news-and-events/blog/getting-started-with-p4/

## Load Balancing algorithms

This repository contains the P4 programs for four load balancing algorithms - round robin, random, weighted round robin and ip hash.

## How to run the load balancing algorithm on BMv2

1. Compile the program ``` p4c -b bmv2 lb_random.p4 -o lb_random.bmv2```
2. Start the BMv2 switch ``` sudo simple_switch --interface 0@ens8 --interface 1@ens7 --interface 2@ens10 --interface 3@ens9 lb_random.bmv2/lb_random.json & ```
3. Run simple switch to configure the routes ```simple_switch```.
4. Add the LB routes in simple switch mentioned in p4_route_setup.txt file.

## How to run the router program on BMv2

1. Compile the program ``` p4c -b bmv2 basic.p4 -o basic.bmv2```
2. Start the BMv2 switch ``` sudo simple_switch --interface 0@ens8 --interface 1@ens7 basic.bmv2/basic.json & ```
3. Run simple switch to configure the routes ```simple_switch```.
4. Add the router routes in simple switch mentioned in p4_route_setup.txt file.

