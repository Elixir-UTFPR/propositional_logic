defmodule PropositionalLogic.AtomicFormulaTest do
  use ExUnit.Case
  alias PropositionalLogic.AtomicFormula

  test "create a new atomic formula" do
    sym =
      :p
      |> AtomicFormula.new()
      |> AtomicFormula.get_symbol()

    assert sym == :p
  end
end
