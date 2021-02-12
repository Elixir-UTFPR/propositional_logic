defmodule PropositionalLogic.CompositeFormulaTest do
  use ExUnit.Case
  alias PropositionalLogic.CompositeFormula
  alias PropositionalLogic.AtomicFormula

  test "create a new unary formula" do
    p = AtomicFormula.new(:p)
    not_p = CompositeFormula.new(:not, p)

    assert CompositeFormula.get_connective(not_p) == :not
    assert CompositeFormula.get_subformulas(not_p) == [p]
  end

  test "create a new binary formula" do
    p = AtomicFormula.new(:p)
    q = AtomicFormula.new(:q)
    p_and_q = CompositeFormula.new(:and, p, q)

    assert CompositeFormula.get_connective(p_and_q) == :and
    assert CompositeFormula.get_subformulas(p_and_q) == [p, q]
  end
end
