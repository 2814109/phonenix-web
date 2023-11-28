defmodule Hello.Todo.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "todo_tasks" do
    field :state, :integer
    field :content, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:content, :state])
    |> validate_required([:content, :state])
  end
end
