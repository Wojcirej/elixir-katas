defmodule ElixirKatas.ConvertStringToNumber do
  
  def call(string) do
    { parsed, _ } = Integer.parse(string)
    parsed
  end
end