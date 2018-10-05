defmodule LogicGatesTest do
  use ExUnit.Case
  doctest LogicGates

  test "and_gate makes 'AND' operation" do
    assert LogicGates.and_gate(true, true) == true
    assert LogicGates.and_gate(true, false) == false
    assert LogicGates.and_gate(false, true) == false
    assert LogicGates.and_gate(false, false) == false
  end

  test "or_gate makes 'OR' operation" do
    assert LogicGates.or_gate(true, true) == true
    assert LogicGates.or_gate(true, false) == true
    assert LogicGates.or_gate(false, true) == true
    assert LogicGates.or_gate(false, false) == false
  end

  test "not_gate makes 'NOT' operation" do
    assert LogicGates.not_gate(true) == false
    assert LogicGates.not_gate(false) == true
  end
end
