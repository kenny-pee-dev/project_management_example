defmodule ProjectManagementExampleWeb.DocumentView do
  use ProjectManagementExampleWeb, :view
  use JaSerializer.PhoenixView

  attributes [:name, :published, :content, :view_count, :project_id]
end
