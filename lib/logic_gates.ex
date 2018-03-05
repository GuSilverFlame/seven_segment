defmodule LogicGates do
  @moduledoc """
    a module that implements logic gate functions
  """

  @doc """
    boolean 'and' operation function

    ## Parameters
      - a: first boolean input
      - b: second boolean input
  """

  def and_gate(a, b) when is_boolean(a) and is_boolean(b) do
    a&&b
  end

  @doc """
    boolean 'and' operation function with 3 elements

    ## Parameters
      - a: first boolean input
      - b: second boolean input
      - c: third boolean input
  """

  def and_gate(a, b, c) do
    and_gate(a,b) |> and_gate(c)
  end

  @doc """
    boolean 'and' operation function with 4 elements

    ## Parameters
      - a: first boolean input
      - b: second boolean input
      - c: third boolean input
      - d: fourth boolean input
  """

  def and_gate(a, b, c, d) do
    and_gate(a,b,c) |> and_gate(d)
  end

  @doc """
    boolean 'or' operation function

    ## Parameters
      - a: first boolean input
      - b: second boolean input
  """
  def or_gate(a, b) when is_boolean(a) and is_boolean(b) do
    a||b
  end

  @doc """
    boolean 'or' operation function with 3 elements

    ## Parameters
      - a: first boolean input
      - b: second boolean input
      - c: third boolean input
  """

  def or_gate(a, b, c) do
    or_gate(a,b) |> or_gate(c)
  end

  @doc """
    boolean 'or' operation function with 4 elements

    ## Parameters
      - a: first boolean input
      - b: second boolean input
      - c: third boolean input
      - d: fourth boolean input
  """

  def or_gate(a, b, c, d) do
    or_gate(a,b,c) |> or_gate(d)
  end

  @doc """
    boolean 'or' operation function with 5 elements

    ## Parameters
      - a: first boolean input
      - b: second boolean input
      - c: third boolean input
      - d: fourth boolean input
      - e: fifth boolean input
  """

  def or_gate(a, b, c, d, e) do
    or_gate(a,b,c,d) |> or_gate(e)
  end

  @doc """
    boolean 'not' operation function

    ## Parameters
      - a: boolean input
  """

  def not_gate(a) when is_boolean(a) do
    !a
  end

end