# TERRAFORM 
## Terraform GCP Basic Infrastructure

This repository contains a **simple Terraform configuration** using **HCL** to provision basic infrastructure on **Google Cloud Platform (GCP)**.

The project demonstrates how to create:
- VPC Network
- Subnet
- Firewall rules
- Compute Engine instances

It is structured using **environment separation** and **reusable modules**.
.
├── environments
│   ├── develop
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── provider.tf
│   │   ├── README.md
│   │   ├── terraform.tfvars
│   │   ├── variables.tf
│   │   └── version.tf
│   ├── production
│   │   └── main.tf
│   └── staging
│       └── main.tf
├── gcp-json
│   └── lateral-chiller-483407-d6-a99ebf38b2db.json
├── modules
│   ├── compute
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── firewall
│   │   ├── locals.tf
│   │   ├── main.tf
│   │   └── varibales.tf
│   └── network
│       ├── locals.tf
│       ├── main.tf
│       ├── outputs.tf
│       ├── provider.tf
│       └── variables.tf
├── README.md
└── tfstate
    └── terraform.tfstate

---

## 🚀 What This Project Does

- Creates a **custom VPC network**
- Creates **subnets** per environment
- Applies **firewall rules**
- Provisions **Compute Engine VM instances**
- Uses **Terraform modules** for clean and reusable code
- Separates environments for better management

---

## 🔧 Prerequisites

- Terraform >= 7.x.x
- Google Cloud account
- GCP Service Account with required permissions
- Service Account key (JSON)
