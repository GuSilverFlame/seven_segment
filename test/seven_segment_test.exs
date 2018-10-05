defmodule SevenSegmentTest do
  use ExUnit.Case
  doctest SevenSegment

  test "Decode with 0 form a zero on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(false, false, false, false) == [
             true,
             true,
             true,
             true,
             true,
             true,
             false
           ]
  end

  test "Decode with 1 form a one on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(false, false, false, true) == [
             false,
             true,
             true,
             false,
             false,
             false,
             false
           ]
  end

  test "Decode with 2 form a two on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(false, false, true, false) == [
             true,
             true,
             false,
             true,
             true,
             false,
             true
           ]
  end

  test "Decode with 3 form a three on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(false, false, true, true) == [
             true,
             true,
             true,
             true,
             false,
             false,
             true
           ]
  end

  test "Decode with 4 form a four on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(false, true, false, false) == [
             false,
             true,
             true,
             false,
             false,
             true,
             true
           ]
  end

  test "Decode with 5 form a five on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(false, true, false, true) == [
             true,
             false,
             true,
             true,
             false,
             true,
             true
           ]
  end

  test "Decode with 6 form a six on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(false, true, true, false) == [
             true,
             false,
             true,
             true,
             true,
             true,
             true
           ]
  end

  test "Decode with 7 form a seven on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(false, true, true, true) == [
             true,
             true,
             true,
             false,
             false,
             false,
             false
           ]
  end

  test "Decode with 8 form a eight on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(true, false, false, false) == [
             true,
             true,
             true,
             true,
             true,
             true,
             true
           ]
  end

  test "Decode with 9 form a nine on a 'TRUE ON' seven segment display" do
    assert SevenSegment.decode(true, false, false, true) == [
             true,
             true,
             true,
             true,
             false,
             true,
             true
           ]
  end

  test "Decode works with integers" do
    assert SevenSegment.decode(9) == [true, true, true, true, false, true, true]
  end

  test "Decode works with lists" do
    assert SevenSegment.decode([true, false, false, true]) == [
             true,
             true,
             true,
             true,
             false,
             true,
             true
           ]
  end
end
