## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted in the Diagram. 

Diagram/Network Diagram.pdf


These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, All Configurations and run books are included in the folder Ansible 

 
This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- _TODO: What does Filebeat watch for?_
- _TODO: What does Metricbeat record?_

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| JumpBox  | Gateway  | 10.0.0.1   | Linux            |
| Web-1    | DVWA     | 10.1.0.5   | Linux            |
| Web-2    | DVWA     | 10.1.0.6   | Linux            |
| Web-3    | DVWA     | 10.1.0.7   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: Add whitelisted IP addresses_

Machines within the network can only be accessed by _____.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses          |
|----------|---------------------|----------------------         |
| Jump Box |     No              | 10.1.0.5 10.0.0.6 10.1.0.7    |
|          |                     |                               |
|          |                     |                               |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because spinning up new servers and automating the process will help in scalability of the applications. 


The playbook implements the following tasks:
1. Instsall docker and python dependecies
2. Download and install packages
3. configure/setup env

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Diagram/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
1. 10.1.0.5
2. 10.1.0.6
3. 10.1.0.7

We have installed the following Beats on these machines:
1. Filebeat

These Beats allow us to collect the following information from each machine:
`Winlogbeat` collects Windows logs, which we use to track user logon events, etc

Commands and Scripts Executed:
1. ssh redadmin@20.25.79.127 (ssh from local machine to Jump Box) 
2. Login to Ansible Container (Start Docker container and Attach it ) 
3. Modify the hosts and config files (Ansible folder) in the Container.
4. run ansible playbooks (Ansible folder) for Webserver, ELK, Filebeat. 
5. Open the Kibana in Broweser and validate the logs. 





