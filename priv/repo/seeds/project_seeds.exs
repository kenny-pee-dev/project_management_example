alias ProjectManagementExample.Repo
alias ProjectManagementExample.Management.Project

Repo.insert! %Project{
  title: "Super Cool Project",
  description: "Test description"
}

Repo.insert! %Project{
  title: "Ok Cool Project",
  description: "Test again description"
}

Repo.insert! %Project{
  title: "Not so Cool Project",
  description: "Test again description"
}
