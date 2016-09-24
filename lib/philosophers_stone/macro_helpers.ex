defmodule PhilosophersStone.MacroHelpers do
  @doc """
  Block helper - create a block from a list of statements.

  Don't make a block if there is only one statement.
  """
  def block_helper(ast)

  def block_helper(list) when is_list(list) do
    list
    |> Enum.filter(fn x -> x != nil end)
    |> block_helper_inner
  end

  defp block_helper_inner([]) do
    nil
  end

  defp block_helper_inner([x]) do
    x
  end

  defp block_helper_inner(list) when is_list(list) do
    {:__block__, [], list}
  end
end