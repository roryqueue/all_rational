defmodule AllRationalTest do
  use ExUnit.Case
  doctest AllRational

  test "addition maintain denominator" do
    assert ~n(2/5) + ~n(2/5) === ~n(4/5)
    assert ~n(2/5) + ~n(4/5) === ~n(6/5)
  end


  test "addition simplifying denominator" do
    assert ~n(1/4) + ~n(1/4) === ~n(1/2)
    assert ~n(11/9) + ~n(4/9) === ~n(5/3)
  end


  test "addition simplifying to whole number" do
    assert ~n(2/5) + ~n(3/5) === 1
    assert ~n(15/4) + ~n(1/4) === 4
  end


  test "addition increasing denominator" do
    assert ~n(9/11) + ~n(1/3) === ~n(38/33)
    assert ~n(2/5) + ~n(2/4) === ~n(9/10)
  end

end
