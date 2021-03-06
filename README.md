# OpenApi Management
DEMO for pets API management on OCI using terraform and Resource Management, this repo cloud be used for basic building blocks for API Management on Oracle Cloud Infrastrucutre - OCI. 

Clone this repo and build the basic components and modules in terraform for your own projects, happy coding :)

## To use this repository
- Clone this GitHub repository into your account, you need to own the respository to create the next step;
- Sync your GitHub account into the OCI Resource Management [Source Providers](https://docs.oracle.com/en-us/iaas/Content/ResourceManager/Concepts/resourcemanager.htm#concepts__ConfigurationSourceProviderDefinition);
- Create one stack from the cloned repository [Create Stack](https://docs.oracle.com/en-us/iaas/Content/ResourceManager/Tasks/managingstacksandjobs.htm#Managing_Stacks_and_Jobs);
- After this steps you can alter the modules and terraform outputs to suite your needs for API management;
- All the basic modules and code are based on terraform 0.14 version.

## Others links and resources
- [Resource Manager Schema Documents](https://docs.oracle.com/en-us/iaas/Content/ResourceManager/Concepts/terraformconfigresourcemanager_topic-schema.htm#metaschema)
- [Oracle Cloud Infrastructure Provider - Hasicord Docs](https://registry.terraform.io/providers/hashicorp/oci/latest/docs)
- [OCI terraform provider Docs](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraform.htm)
- [Terraform provider - Oracle GitHub](https://github.com/terraform-providers/terraform-provider-oci)
- [Terraform Built-in Functions](https://www.terraform.io/docs/language/functions/index.html)

## Try it on OCI
[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/talemos/open-api-management/releases/download/v1.0.2/openAPI.zip)
