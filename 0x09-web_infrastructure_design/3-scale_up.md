3. Scale Up
Introduction
This document outlines an upgraded web infrastructure for improved scalability, reliability, and separation of concerns. By adding a load balancer and dedicating servers to specific roles, we aim to enhance the website's performance and availability.

Infrastructure Components
Servers
Web Server: Dedicated to serving static content and handling client HTTP(S) requests.
Application Server: Runs the application logic, handling dynamic content generation based on the requests received from the web server.
Database Server: Stores, retrieves, and manages all the data required by the application, interacting exclusively with the application server.
Load Balancer (HAproxy)
Configured in a cluster with an existing load balancer to distribute incoming traffic evenly across multiple servers, ensuring no single server becomes overwhelmed and improving the website's availability and response times.
Component Details
Web Server
Purpose: Serves as the first point of contact for incoming internet traffic, responding to client requests by serving static content directly and forwarding dynamic content requests to the application server.
Rationale for Addition: Isolating the web serving capabilities improves security and efficiency by allowing the server to be optimized for its specific role.
Application Server
Purpose: Processes application logic, accesses the database based on user requests, and generates dynamic content to be served back to the client via the web server.
Rationale for Addition: Separating the application processing from other tasks allows for more specialized resource allocation and scaling based on computational needs.
Database Server
Purpose: Acts as the central data repository for the application, handling data storage, retrieval, and management.
Rationale for Addition: Isolating the database enhances security and performance by limiting access to the data layer and allowing for optimizations specific to database operations.
Load Balancer (HAproxy)
Purpose: Distributes incoming traffic across multiple servers to ensure even load distribution, prevent server overload, and reduce response times.
Rationale for Addition: Adding a load balancer in a cluster configuration with another improves reliability and availability. It ensures the infrastructure can handle increased traffic and provides redundancy, minimizing downtime in case one load balancer fails.
Conclusion
The scaled-up infrastructure described in this document introduces a load balancer and dedicated servers for each component of the web application, laying a foundation for a scalable, reliable, and secure web presence. By separating concerns and distributing traffic effectively, we ensure the application remains responsive and available, even as demand grows.
