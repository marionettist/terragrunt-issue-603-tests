terragrunt = {
  terraform {
    source = "../../module"

    extra_arguments "common_var" {
      commands = [
        "${get_terraform_commands_that_need_vars()}"]
      arguments = [
        "-var-file=${get_tfvars_dir()}/../env.tfvars"]
    }

  }
}

foo = "foo"