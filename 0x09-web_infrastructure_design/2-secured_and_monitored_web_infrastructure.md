2. Secured and Monitored Web Infrastructure
Introduction
This document describes the design and implementation of a secure and monitored web infrastructure for hosting www.foobar.com. The infrastructure is built with a focus on security, encryption, and comprehensive monitoring to ensure the website's integrity, availability, and confidentiality.

Infrastructure Components
Servers
Web Server: Hosts the website's static content and handles HTTPS requests.
Application Server: Processes dynamic content by running application logic.
Database Server: Stores and manages data for the web application.
Security Components
Firewalls
External Firewall: Positioned at the entry point of our network, it screens all incoming and outgoing traffic to block unauthorized access.
Internal Firewalls: Located between each pair of servers, these firewalls enforce traffic rules that only allow necessary communication between the web, application, and database layers.
SSL Certificate
Purpose: Installed to encrypt data in transit between the client's browser and our web server, safeguarding personal and sensitive information.
Implementation: Applied to www.foobar.com to ensure all traffic is served over HTTPS.
Monitoring Components
Monitoring Clients
Installed on each server, these clients collect and transmit data on server health, performance metrics, and potential security incidents to a centralized monitoring solution like Sumologic.
Operational Details
Role of Each Component
Firewalls prevent potential cyber threats and unauthorized access, creating a secure network environment for our infrastructure.
SSL Certificate ensures the privacy and integrity of data exchanged between users and the website, fostering trust and compliance with security standards.
Monitoring Clients are essential for real-time visibility into the infrastructure's performance and security posture, enabling proactive issue resolution and optimization.
Monitoring Strategy
Comprehensive monitoring covers system health, performance metrics, and security logs. It alerts the team to anomalies, spikes in traffic (which could indicate a DDoS attack), or system failures.
Security Considerations
SSL Termination at the Load Balancer
Discusses the risk associated with decrypting HTTPS traffic at the load balancer and the potential for unencrypted internal traffic.
Single MySQL Server for Writes
Addresses the scalability and availability concerns with having a single point of write operations and suggests potential mitigations like replication or clustering.
Homogeneous Server Components
Explores the risks and inefficiencies of running all components on each server, advocating for a distributed architecture to isolate and protect resources.
Challenges and Mitigations
SSL Termination Risk: Recommend employing internal encryption or secure network tunnels to protect data in transit between internal components.
MySQL Write Scalability: Propose implementing a high-availability setup with master-slave replication or adopting a distributed database system to enhance resilience and load handling.
Component Isolation: Suggest deploying services on dedicated servers or containers to minimize risk and optimize performance.
Conclusion
The designed infrastructure for www.foobar.com prioritizes security and monitoring to ensure the website's smooth and safe operation. By implementing strategic security measures, employing encryption, and deploying comprehensive monitoring, the infrastructure aims to achieve high availability, robust security, and optimal performance, setting a strong foundation for scalable and secure web hosting.
