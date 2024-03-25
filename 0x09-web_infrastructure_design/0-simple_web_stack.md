Introduction
This document describes the setup of a simple web stack on a single server. This basic infrastructure is designed to host a website that is accessible via the domain name www.foobar.com. The stack includes a web server, an application server, application files, and a database.

Infrastructure Components
Server
A single physical or virtual machine that hosts all components of the web stack. It is responsible for processing user requests and serving the website's content.
Web Server (Nginx)
Nginx is chosen as the web server due to its high performance, stability, and efficient handling of concurrent connections. It listens for incoming HTTP(S) requests and serves static content directly to the user, such as HTML, CSS, and JavaScript files.
Application Server
The application server runs the website's backend logic. It interacts with the database to fetch or store data and generates dynamic content based on user requests, which is then served through the web server.
Application Files (Your Code Base)
These are the actual files of the web application, including the source code, assets, and dependencies. The application files are executed by the application server to render the website's content.
Database (MySQL)
MySQL is used as the relational database management system to store, retrieve, and manage the website's data. It holds user information, content, and other data necessary for the website's functionality.
Domain Name (foobar.com)
The domain name provides a human-readable address for the website. It is configured with a DNS record that points to the server's IP address, allowing users to access the website by entering www.foobar.com in their browser.
Configuration Details
DNS Setup
An A record is created for foobar.com pointing to the server's IP address (e.g., 8.8.8.8), enabling users to reach the website via www.foobar.com.
Web Server Configuration
Nginx is configured to listen on port 80 (HTTP) and/or 443 (HTTPS). It serves static files directly and forwards requests for dynamic content to the application server.
Application Server Setup
The application server is set up to execute the application files. It must be configured to communicate with the web server and the database.
Database Configuration
MySQL is installed and configured on the server. A database is created for the application, along with a user account that has the necessary permissions to access and modify it.
Considerations and Limitations
Single Point of Failure (SPOF)
Since all components are hosted on a single server, any hardware or software failure can make the website unavailable.
Scalability
The infrastructure may struggle to handle increased traffic or load, as it relies on a single server.
Maintenance Downtime
Updating the application or performing maintenance on the server may require downtime, as there is no redundancy.
Conclusion
A simple web stack on a single server is suitable for hosting small to medium-sized websites with moderate traffic. It provides a cost-effective solution with relatively straightforward setup and maintenance. However, for larger applications or those requiring high availability and scalability, a more complex, distributed infrastructure may be necessary.
