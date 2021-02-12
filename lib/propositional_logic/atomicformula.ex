defmodule PropositionalLogic.AtomicFormula do
  defstruct symbol: :p

  def new(a_symbol) when is_atom(a_symbol) do
    %__MODULE__{symbol: a_symbol}
  end

  def get_symbol(%__MODULE__{} = formula) do
    formula.symbol
  end
end
