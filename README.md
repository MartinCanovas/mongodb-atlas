# Overview

Terraform script that creates a MongoDB cluster in Atlas (MongoDB Cloud).
<br/><br/>

# Requirements

- [Terraform](https://www.terraform.io/downloads.html) 0.12+
- An MongoDB Atlas account
- Environment variables:
```
    $ export MONGODB_ATLAS_PUBLIC_KEY="xxxx"
    $ export MONGODB_ATLAS_PRIVATE_KEY="xxxx"
```

Documentation to create an Atlas API keys: https://docs.atlas.mongodb.com/configure-api-access/#programmatic-api-keys

<br/><br/>
# Usage

Add the `org_id` value in variables.tf file with your Organization ID.

Change other variables value such as instance type, MongoDB version, and whitelist IP to your needs.

Create an execution plan:
```
$ terraform plan
```

Execute Terraform plan:
```
$ terraform apply
```

Destroy the Terraform-managed infrastructure:
```
$ terraform destroy
```

<br/><br/>
# License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.


<br/><br/>
# Terraform Provider

Website: https://www.terraform.io

<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">