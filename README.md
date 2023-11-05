# IaC_Oblig2
Mandatory assignment 2 in the course IIKG3005 - Infrastructure as Code

# Table of Contents

* [Introduction](#IaC_Oblig2)
* [Overview](#overview)
* [Prerequisits](#prerequisits)
* [Getting started](#getting-started)
    * [Initialize terraform](initialize-terraform)
    * [Configuration](#configuration)
    * [Planning](#planning)
    * [Apply changes](#apply-changes)
* [Usage](#usage)
* [Workflows and branches](workflows-and-branches)
* [Resources](#resources)
* [Contributing](#contributing)
* [Contact](#contact)


## Overview

This project contains Terraform configurations for deploying an infrastructure in Microsoft Azure. To help automize and streamline the development process with testing and deployment i use github actions with yaml workflows. 

## Prerequisites

Before you begin, ensure you have the following prerequisites installed and configured:

- [Terraform](https://www.terraform.io/downloads.html) (version 0.13 or above)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- An Azure subscription with sufficient permissions to create resources
- Connection with azure through service principal and envoirment variables

## Getting Started

Follow these instructions to get your Terraform configuration up and running.


### Initialize Terraform

1. Clone this repository to your local machine.
```
git clone "https://github.com/MangusWesterheim/IaC_Oblig2.git"
```
2. Navigate to the directory containing the Terraform configuration files.
3. Connect to azureCLI with service principal and envoirment variables
4. Initialize the Terraform environment:

   ```bash
   terraform init
   ```

### Configuration

1. Rename `terraform.tfvars.example` to `terraform.tfvars`.
2. Edit `terraform.tfvars` to include your Azure resource configuration values.
3. Review the variables defined in `variables.tf` and adjust them if necessary.

### Planning

Generate a plan to see the changes that will be applied:

```bash
terraform plan -out=main.tfplan
```

### Apply Changes

Apply the plan to create the Azure infrastructure:

```bash
terraform apply "main.tfplan"
```

## Usage

This project is strictly a test infrastructure to test and learn usage of CI/CD using workflows for deployment and testing.

## Workflows and branches
As stated the purpose of this project is to practice the use of CI/CD pipelines to continously test and deploy an Azure infrastructure. This project consists of two branches and two workflows. The dev branch is used for development and testing, if the testing(testing.yaml) which consists of terraform validate, fmt and tflint passes you can create a pull request to merge with the main branch. When the two branches merge the action-runner.yaml workflow will run and push the infrastructure to Azure.



## Resources

List the resources that are being created and managed by this Terraform project.

- Azure Resource Group
- Azure Storage Account
    - Azure Storage container
- Azure Key Vault
    - Azure Key Vault Secret 
- Azure Virtual Network
    - Azure Network Security Group
    - Azure Virtual Network
    - Azure Subnet
    - Azure Network Security Group
- Virtual Machine
    - Azure Public IP
    - Azure Network Interface
    - Azure Linux Virtual Machine 


## Contributing

- Magnus Westerheim Johannessen
- Tor Ivar Melling (lecturer)


## Contact

[Magnus Westerheim Johannessen](https://media.tenor.com/hYVsWvkpdrMAAAAC/you-didnt-say-the-magic-word-ah-ah.gif)

