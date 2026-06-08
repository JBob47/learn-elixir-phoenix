
# lesson05.exs

defmodule Lesson05 do

  # Split a list into first item and rest of list
  def split_example do
    [first | rest] = [1, 2, 3, 4]

    %{
      first: first,
      rest: rest
    }
  end

  # Return the first item in a list
  def first_item([first | _rest]) do
    first
  end

  # Check if a list is empty
  def empty?([]) do
    true
  end

  def empty?(_list) do
    false
  end

end