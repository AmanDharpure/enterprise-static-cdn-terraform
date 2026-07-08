# enterprise-static-cdn-terraform
<div align="center">

#  Enterprise Static CDN on AWS using Terraform

### Infrastructure as Code (IaC) | Amazon S3 | CloudFront | Origin Access Control (OAC) | Terraform

![Terraform](https://img.shields.io/badge/Terraform-1.15+-623CE4?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws)
![CloudFront](https://img.shields.io/badge/Amazon-CloudFront-232F3E?style=for-the-badge&logo=amazonaws)
![S3](https://img.shields.io/badge/Amazon-S3-569A31?style=for-the-badge&logo=amazons3)
![GitHub](https://img.shields.io/badge/GitHub-Actions-2088FF?style=for-the-badge&logo=githubactions)

</div>

---

#  Overview

This project demonstrates how to deploy a **secure, production-style static website** on **Amazon Web Services (AWS)** using **Terraform**.

The infrastructure provisions a **private Amazon S3 bucket** for website hosting, an **Amazon CloudFront distribution** for global content delivery, and **Origin Access Control (OAC)** to ensure that website content is accessible only through CloudFront.

The entire infrastructure is managed using **Terraform**, following Infrastructure as Code (IaC) principles.

---

#  Architecture

```
                    ┌────────────────────┐
                    │      End Users     │
                    └──────────┬─────────┘
                               │
                               ▼
                  Amazon CloudFront (HTTPS)
                               │
                 Origin Access Control (OAC)
                               │
                               ▼
                  Private Amazon S3 Bucket
                               │
                  index.html / style.css
```

---

#  Features

- ✅ Infrastructure as Code using Terraform
- ✅ Private Amazon S3 bucket
- ✅ Amazon CloudFront CDN
- ✅ Origin Access Control (OAC)
- ✅ HTTPS content delivery
- ✅ Automatic website upload using Terraform
- ✅ Server-side encryption (AES-256)
- ✅ Bucket versioning
- ✅ Public access completely blocked
- ✅ Secure and production-ready architecture

---

#  AWS Services Used

| Service | Purpose |
|----------|---------|
| Amazon S3 | Static website storage |
| Amazon CloudFront | Global Content Delivery Network |
| Origin Access Control | Secure CloudFront → S3 communication |
| IAM | Secure permissions |
| Terraform | Infrastructure provisioning |

---

# Project Structure

```text
Enterprise-Static-CDN-Terraform
│
├── .gitignore
├── .terraform.lock.hcl
├── README.md
├── cloudfront.tf
├── outputs.tf
├── provider.tf
├── s3.tf
├── terraform.tfvars
├── variables.tf
├── versions.tf
│
├── website
│   ├── index.html
│   └── style.css
│
└── screenshots
```

---

# Terraform Workflow

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Preview Infrastructure

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

# Security Best Practices

- Private S3 bucket
- Public access blocked
- Server-side encryption enabled
- Bucket versioning enabled
- CloudFront Origin Access Control (OAC)
- HTTPS-only content delivery
- Infrastructure managed using Terraform

---

# Project Screenshots

## Website

<img width="1902" height="962" alt="Screenshot 2026-07-08 224606" src="https://github.com/user-attachments/assets/e6bb672f-58e2-48ed-9c7e-3bb3f9c280ce" />


---

## CloudFront Distribution

<img width="1917" height="901" alt="Screenshot 2026-07-08 224809" src="https://github.com/user-attachments/assets/76a20ad5-f409-4c89-aca8-fe5ac8bc47c2" />


---

## Amazon S3 Bucket

<img width="1912" height="906" alt="Screenshot 2026-07-08 224857" src="https://github.com/user-attachments/assets/4a5761a0-f96d-4a60-a102-05b5cd32d808" />


---

## Project Structure

<img width="1917" height="1016" alt="Screenshot 2026-07-09 001055" src="https://github.com/user-attachments/assets/f3dbbc02-fc24-4611-a378-6c2c03fc7334" />



---

# Deployment

Clone the repository

```bash
git clone https://github.com/AmanDharpure/enterprise-static-cdn.git
```

Go to the project directory

```bash
cd enterprise-static-cdn
```

Initialize Terraform

```bash
terraform init
```

Deploy

```bash
terraform apply
```

---

# Terraform Resources Created

- Amazon S3 Bucket
- S3 Bucket Versioning
- S3 Server-side Encryption
- S3 Public Access Block
- Amazon CloudFront Distribution
- Origin Access Control (OAC)
- S3 Bucket Policy
- Website Objects (index.html & style.css)

---

# Learning Outcomes

Through this project I gained hands-on experience with:

- Infrastructure as Code (IaC)
- Terraform Fundamentals
- AWS Cloud Infrastructure
- Amazon S3
- Amazon CloudFront
- Origin Access Control (OAC)
- IAM Permissions
- Secure Static Website Hosting
- Git & GitHub
- Cloud Deployment Best Practices

---

# Future Enhancements

- GitHub Actions CI/CD
- Remote Terraform State (S3 + DynamoDB)
- AWS WAF Integration
- Route 53 Custom Domain
- ACM SSL Certificate
- Monitoring with CloudWatch
- Multi-environment Terraform Modules

---

# Author

**Aman Dharpure**

-  LinkedIn: https://www.linkedin.com/in/aman-dharpure-333397324
-  GitHub: https://github.com/AmanDharpure

---

<div align="center">

⭐ If you found this project useful, consider giving it a star!

</div>
