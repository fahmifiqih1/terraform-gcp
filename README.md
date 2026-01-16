# TERRAFORM 
## Terraform GCP Basic Infrastructure

This repository contains a **simple Terraform configuration** using **HCL** to provision basic infrastructure on **Google Cloud Platform (GCP)**.

The project demonstrates how to create:
- VPC Network
- Subnet
- Firewall rules
- Compute Engine instances

It is structured using **environment separation** and **reusable modules**.
`
.
├── environments         # Konfigurasi spesifik per environment (Root Modules)
│   ├── develop          # Environment Development
│   ├── staging          # Environment Staging
│   └── production       # Environment Production
├── modules              # Resource Reusable (Child Modules)
│   ├── compute          # Modul untuk VM/GCE instances
│   ├── firewall         # Modul untuk Firewall rules
│   └── network          # Modul untuk VPC, Subnet, dll.
├── gcp-json             # Lokasi Service Account Key (Sensitive)
├── tfstate              # Lokasi penyimpanan local state (jika tidak menggunakan remote backend)
└── README.md
`
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
