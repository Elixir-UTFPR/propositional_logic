defmodule PropositionalLogic.CompositeFormula do
  @unary_connectives [:not]
  @binary_connectives [:and, :or, :implies]

  defstruct connective: nil, subformulas: nil

  def new(unary_connective, formula)
      when unary_connective in @unary_connectives do
    %__MODULE__{connective: unary_connective, subformulas: [formula]}
  end

  def get_connective(%__MODULE__{} = c_formula) do
    c_formula.connective
  end

  def get_subformulas(%__MODULE__{} = c_formula) do
    c_formula.subformulas
  end

  def new(binary_connective, left_formula, right_formula)
      when binary_connective in @binary_connectives do
    %__MODULE__{connective: binary_connective, subformulas: [left_formula, right_formula]}
  end
end
