defmodule SevenSegmentTest do
  use ExUnit.Case
  doctest SevenSegment

  test "decode with 0 form a zero on a 'true on' seven segment display" do
    assert SevenSegment.decode(false, false, false, false) == [true, true, true, true, true, true, false]
  end

  test "decode with 1 form a one on a 'true on' seven segment display" do
    assert SevenSegment.decode(false, false, false, true) == [false, true, true, false, false, false, false]
  end

  test "decode with 2 form a two on a 'true on' seven segment display" do
    assert SevenSegment.decode(false, false, true, false) == [true, true, false, true, true, false, true]
  end

  test "decode with 3 form a three on a 'true on' seven segment display" do
    assert SevenSegment.decode(false, false, true, true) == [true, true, true, true, false, false, true]
  end

  test "decode with 4 form a four on a 'true on' seven segment display" do
    assert SevenSegment.decode(false, true, false, false) == [false, true, true, false, false, true, true]
  end

  test "decode with 5 form a five on a 'true on' seven segment display" do
    assert SevenSegment.decode(false, true, false, true) == [true, false, true, true, false, true, true]
  end

  test "decode with 6 form a six on a 'true on' seven segment display" do
    assert SevenSegment.decode(false, true, true, false) == [true, false, true, true, true, true, true]
  end

  test "decode with 7 form a seven on a 'true on' seven segment display" do
    assert SevenSegment.decode(false, true, true, true) == [true, true, true, false, false, false, false]
  end

  test "decode with 8 form a eight on a 'true on' seven segment display" do
    assert SevenSegment.decode(true, false, false, false) == [true, true, true, true, true, true, true]
  end

  test "decode with 9 form a nine on a 'true on' seven segment display" do
    assert SevenSegment.decode(true, false, false, true) == [true, true, true, true, false, true, true]
  end

  test "decode works with integers" do
    assert SevenSegment.decode(9) == [true, true, true, true, false, true, true]
  end

  test "decode works with lists" do
    assert SevenSegment.decode([true, false, false, true]) == [true, true, true, true, false, true, true]
  end

end
