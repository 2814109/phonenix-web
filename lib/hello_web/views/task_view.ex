defmodule HelloWeb.TaskView do
  use HelloWeb, :view
  alias HelloWeb.TaskView

  def render("index.json", %{tasks: tasks}) do
    %{data: render_many(tasks, TaskView, "task.json")}
  end

  def render("task.json", %{task: task}) do
    %{
      id: task.id,
      content: task.content,
      state: task.state
    }
  end
end
