data external get_env_var {
  program = [
    "bash",                                                                                   # Run with bash
    "${path.module}/scripts/script.sh",                                                       # Script to run                                         # sysdig instance ID  
  ]
}

output "env_varaible"{
    value = [for x in split(",", data.external.get_env_var.result["env_var"]): split(":", x)[1] if contains(split(":", x), "Schematics")][0]
}