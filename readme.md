# Sample IBM Cloud Terraform example for creating Access Groups

## Purpose

The purpose of this project is to demonstrate best practices around using Terraform to create multiple access groups for a
IBM Kubernetes or Red Hat OpenShift project with typical required levels of access for different roles.   This Terraform example creates
three Access Groups for the project to represent Administrators, Operators, and Users of the environment and grants the roles the approrpriate 
persmissions to the access group.   Users can then be added to these groups and will inherit the groups permissions

- The Administrator Access Group is created with Platform Administrator, and Service Manager roles for  the Kubernetes Service, Container
Registry Service, IBM Key Protect Service, IBM Schematics Service, and the IBM Loging and Monitoring services that are part of the Project's Resource Group.
- The Operator Access Group is created with Platform Operator, and Service Manager roles for  the Kubernetes Service, Container
Registry Service, IBM Key Protect Service and the IBM Loging and Monitoring services that are part of the Project's Resource Group.
- The User Access Group is created with Platform View, and Service Reader roles for  the Kubernetes Service, Container
Registry Service, IBM Key Protect Service,  and the IBM Loging and Monitoring services that are part of the Project's Resource Group.

Further restrictions to these groups could be added to the sample TF files to limit access to a region or even specific service id.

More Details On Access Groups Can be found at:<br>
[https://cloud.ibm.com/docs/account?topic=account-groups&interface=ui](https://cloud.ibm.com/docs/account?topic=account-groups&interface=ui)

Documentation on the IBM Cloud Provider and the Identity and Access Management configurations:<br>
[https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/iam_access_group_policy](https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/iam_access_group_policy)

## Usage
Update [variables.tf](variables.tf) with the desired Project and Access Group names.   Each access group will be named Project_AccessGroupName

```
export IC_API_KEY=<apikey>
terraform init
terraform plan
terraform apply
```

