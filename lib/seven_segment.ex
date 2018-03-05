defmodule SevenSegment do
  import LogicGates
  @moduledoc """
    SevenSegment decoder that outputs a list of booleans
    equivalent to the inputs of a seven segment display
  """

  @doc """
    outputs a list of booleans representing the segments of a seven segment display

    ## Parameters
      - a: boolean representing the first digital input
      - b: boolean representing the second digital input
      - c: boolean representing the third digital input
      - d: boolean representing the last digital input
  """
  def decode(a, b, c, d)
  when is_boolean(a) and is_boolean(b) and is_boolean(c) and is_boolean(d) do
    nb = not_gate(b)
    nc = not_gate(c)
    nd = not_gate(d)

    nb_nd = and_gate(nb, nd)
    nc_nd = and_gate(nc, nd)
    c_nd = and_gate(c, nd)
    nb_c = and_gate(nb, c)
    b_nc = and_gate(b, nc)

    [
      and_gate(b, d) |> or_gate(a, c, nb_nd),
      and_gate(c, d) |> or_gate(nb, nc_nd),
      or_gate(b, nc, d),
      and_gate(b, nc, d) |> or_gate(nb_nd, c_nd, nb_c, a),
      or_gate(nb_nd, c_nd),
      and_gate(b, nd) |> or_gate(a, nc_nd, b_nc),
      or_gate(a, b_nc, nb_c, c_nd)
    ]
  end

  @doc """
    outputs a list of booleans representing the segments of a seven segment display

    ## Parameters
      - value: can be of the following types =>
        -list: a list of 4 booleans representing digital input pins
        -number: integer up to 9 representing the decimal numbers to be printed on the seven segment display
  """

  def decode(value) when is_list(value) and length(value) == 4 do
    apply(SevenSegment, :decode, value)
  end

  def decode(value) when is_integer(value) and value < 10 do
    integer_to_bool_list(value) |> decode
  end

  defp integer_to_bool_list(number) do
    Integer.to_string(number, 2) |> String.pad_leading(4, ["0"]) |> binary_string_to_bool_list
  end

  defp binary_string_to_bool_list("0") do
    [false]
  end

  defp binary_string_to_bool_list("1") do
    [true]
  end

  defp binary_string_to_bool_list("0" <> rest) do
    [false] ++ binary_string_to_bool_list(rest)
  end

  defp binary_string_to_bool_list("1" <> rest) do
    [true] ++ binary_string_to_bool_list(rest)
  end

end
