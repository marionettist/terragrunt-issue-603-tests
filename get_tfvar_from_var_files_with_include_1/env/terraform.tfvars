terragrunt = {
  terraform {
    source = "../../module"

    include {
      path = "${find_in_parent_folders()}"
    }

    extra_arguments "stack_vars" {
      commands = [
        "${get_terraform_commands_that_need_vars()}"]
      arguments = [
        "-var", "foo=${get_tfvar_from_var_files("bar")}"  # should set foo to "bar_value"
      ],
    }
  }
}

