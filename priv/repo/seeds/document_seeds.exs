alias ProjectManagementExample.Repo
alias ProjectManagementExample.Management.Document

Repo.insert! %Document{
  name: "First Document",
  content: "We have our first content",
  view_count: 1,
  published: true,
  project_id: 1
}

Repo.insert! %Document{
  name: "Second Document",
  content: "We have our second content",
  view_count: 1,
  published: false,
  project_id: 1
}

Repo.insert! %Document{
  name: "Third Document",
  content: "We have our third content",
  view_count: 1,
  published: false,
  project_id: 2
}

Repo.insert! %Document{
  name: "Fourth Document",
  content: "We have our fourth content",
  view_count: 1,
  published: true,
  project_id: 3
}


Repo.insert! %Document{
  name: "Fifth Document",
  content: "We have our fifth content",
  view_count: 1,
  published: true,
  project_id: 3
}
