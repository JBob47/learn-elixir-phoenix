# day2.exs

defmodule SignageProof do
  def status(item_name) do
    "#{item_name} is Ready for Review"
  end
end


defmodule Proof do
  def process({:ok, file}) do
    "Processing #{file}"
  end

  def process({:error, reason}) do
    "Failed: #{reason}"
  end
end

defmodule ApprovalFile do
  def status({:approved, file}) do
    "Processing #{file}"
  end

  def process({:error, reason}) do
    "Failed: #{reason}"
  end
end

defmodule Approval do
  def status(:approved) do
    "Send to Production"
  end

  def status(:changes) do
    "Revisions Requested"
  end

  def status(_) do
    "Unknown Status"
  end
end

defmodule Clean do
  def format(name) do
    name
    |> String.trim()
    |> String.upcase()
    |> String.replace(" ", "-")
  end
end