defmodule RationalNumber do
  @moduledoc """
  Documentation for AllRational.
  """

  @opaque RationalNumber :: { numerator :: integer, denominator :: integer }
  
  defstruct numerator: 0, denominator: 1
  

  def to_string(%RationalNumber{ numerator: number, denominator: 1 }),
    do: Integer.to_string(number)

  def to_string(%RationalNumber{ numerator: num, denominator: denom }),
    do: Integer.to_string(num) <> "/" <> Integer.to_string(denom)

  def to_charlist(%RationalNumber{ numerator: number, denominator: 1 }) do
    %RationalNumber{ numerator: num, denominator: denom }
    | to_string
    | String.to_charlist
  end

  # def sigil_n(num), do: parse_rational(num)

  # defmacro sigil_n(num, modifiers)

  # defmacro sigil_n({:<<>>, _line, [body]}, _modifiers) do
  #   sigil_n_function(body, __CALLER__)
  # end

  # defmacro sigil_n({:<<>>, _, _}, _modifiers) do
  #   raise ArgumentError, "interpolation is not supported with the ~n sigil"
  # end


  # defp sigil_n_function(_lin, ["%" <> struct_name | rest], ?a, caller) do
  #   struct_module_quoted = resolve_module(struct_name, caller)
  #   pairs = make_pairs(rest, ?a)
  #   quote do: %unquote(struct_module_quoted){unquote_splicing(pairs)}
  # end

end
