defmodule ConvertStringToNumberTest do
  use ExUnit.Case

  ExUnit.Case.register_attribute __ENV__, :example_params

  examples = 1..100 |> Enum.map(
    fn _ ->
      num = Enum.random(0..10000)
      str = Integer.to_string(num)
      { str, num }
    end
  )

  Enum.each(
    examples,
    fn example ->
      { str, num } = example
      @example_params { str, num }
      describe "when str = '#{str}'" do
        test "returns #{num} as a number", context do
          { str, num } = context.registered.example_params
          assert ElixirKatas.ConvertStringToNumber.call(str) === num
        end
      end
    end
  )
end