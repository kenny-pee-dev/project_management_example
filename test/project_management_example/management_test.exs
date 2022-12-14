defmodule ProjectManagementExample.ManagementTest do
  use ProjectManagementExample.DataCase

  alias ProjectManagementExample.Management

  describe "projects" do
    alias ProjectManagementExample.Management.Project

    import ProjectManagementExample.ManagementFixtures

    @invalid_attrs %{description: nil, title: nil}

    test "list_projects/0 returns all projects" do
      project = project_fixture()
      assert Management.list_projects() == [project]
    end

    test "get_project!/1 returns the project with given id" do
      project = project_fixture()
      assert Management.get_project!(project.id) == project
    end

    test "create_project/1 with valid data creates a project" do
      valid_attrs = %{description: "some description", title: "some title"}

      assert {:ok, %Project{} = project} = Management.create_project(valid_attrs)
      assert project.description == "some description"
      assert project.title == "some title"
    end

    test "create_project/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Management.create_project(@invalid_attrs)
    end

    test "update_project/2 with valid data updates the project" do
      project = project_fixture()
      update_attrs = %{description: "some updated description", title: "some updated title"}

      assert {:ok, %Project{} = project} = Management.update_project(project, update_attrs)
      assert project.description == "some updated description"
      assert project.title == "some updated title"
    end

    test "update_project/2 with invalid data returns error changeset" do
      project = project_fixture()
      assert {:error, %Ecto.Changeset{}} = Management.update_project(project, @invalid_attrs)
      assert project == Management.get_project!(project.id)
    end

    test "delete_project/1 deletes the project" do
      project = project_fixture()
      assert {:ok, %Project{}} = Management.delete_project(project)
      assert_raise Ecto.NoResultsError, fn -> Management.get_project!(project.id) end
    end

    test "change_project/1 returns a project changeset" do
      project = project_fixture()
      assert %Ecto.Changeset{} = Management.change_project(project)
    end
  end

  describe "documents" do
    alias ProjectManagementExample.Management.Document

    import ProjectManagementExample.ManagementFixtures

    @invalid_attrs %{}

    test "list_documents/0 returns all documents" do
      document = document_fixture()
      assert Management.list_documents() == [document]
    end

    test "get_document!/1 returns the document with given id" do
      document = document_fixture()
      assert Management.get_document!(document.id) == document
    end

    test "create_document/1 with valid data creates a document" do
      valid_attrs = %{}

      assert {:ok, %Document{} = document} = Management.create_document(valid_attrs)
    end

    test "create_document/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Management.create_document(@invalid_attrs)
    end

    test "update_document/2 with valid data updates the document" do
      document = document_fixture()
      update_attrs = %{}

      assert {:ok, %Document{} = document} = Management.update_document(document, update_attrs)
    end

    test "update_document/2 with invalid data returns error changeset" do
      document = document_fixture()
      assert {:error, %Ecto.Changeset{}} = Management.update_document(document, @invalid_attrs)
      assert document == Management.get_document!(document.id)
    end

    test "delete_document/1 deletes the document" do
      document = document_fixture()
      assert {:ok, %Document{}} = Management.delete_document(document)
      assert_raise Ecto.NoResultsError, fn -> Management.get_document!(document.id) end
    end

    test "change_document/1 returns a document changeset" do
      document = document_fixture()
      assert %Ecto.Changeset{} = Management.change_document(document)
    end
  end
end
