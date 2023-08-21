module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jyong5054+sandbox_aft@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jyong5054@gmail.com"
    SSOUserFirstName          = "Learn"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Created By" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "xutonggz@cn.ibm.com"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox-aft"
}

module "hr-dev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jyong5054+hr_aft@gmail.com"
    AccountName               = "hr-dev"
    ManagedOrganizationalUnit = "HR"
    SSOUserEmail              = "jyong5054@gmail.com"
    SSOUserFirstName          = "Learn"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Created By" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "xutonggz@cn.ibm.com"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "hr-dev"
}
