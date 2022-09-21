defmodule ProjectManagementExampleWeb.ProjectView do
  use ProjectManagementExampleWeb, :view
  use JaSerializer.PhoenixView

  attributes [:title, :description]
end
