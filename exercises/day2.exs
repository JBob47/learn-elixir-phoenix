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

defmodule Approval do
  def status({:approved, file}) do
    "Processing #{file}"
  end

  def process({:error, reason}) do
    "Failed: #{reason}"
  end
end