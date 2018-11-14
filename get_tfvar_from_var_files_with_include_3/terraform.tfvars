terragrunt = {
  terraform {
    extra_arguments "business_unit_vars" {
      commands = [
        "${get_terraform_commands_that_need_vars()}"]
      arguments = [
        "-var-file=${get_tfvars_dir()}/envs.tfvars",
      ],
    }
  }
}
