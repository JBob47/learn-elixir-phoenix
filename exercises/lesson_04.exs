# lesson04.exs

defmodule Lesson04 do

  # Enum.map
  def map_example do
    Enum.map([1, 2, 3], fn number ->
      number * 2
    end)
  end

  # Enum.filter
  def filter_example do
    Enum.filter([1, 2, 3, 4, 5], fn number ->
      number > 3
    end)
  end

  # Enum.each
  def each_example do
    Enum.each(["Banner", "Sign"], fn item ->
      IO.puts(item)
    end)
  end

  # Pipes + Filter + Map
  def pdf_example do
    files = [
      "banner.pdf",
      "notes.txt",
      "proof.pdf"
    ]

    files
    |> Enum.filter(fn file ->
      String.ends_with?(file, ".pdf")
    end)
    |> Enum.map(fn file ->
      String.upcase(file)
    end)
  end

  # Clean a list of strings
  def clean_example do
    items = [
      "  banner  ",
      "  sign  ",
      "  backdrop  "
    ]

    items
    |> Enum.map(fn item ->
      item
      |> String.trim()
      |> String.upcase()
    end)
  end
end