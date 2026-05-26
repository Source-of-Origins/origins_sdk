defmodule OriginsSdk.Internal do
  @moduledoc false
  # Shared decoders. Used by generated resource modules.

  def decode_datetime(nil), do: nil

  def decode_datetime(iso) when is_binary(iso) do
    case DateTime.from_iso8601(iso) do
      {:ok, dt, _offset} -> dt
      _ -> nil
    end
  end

  def decode_date(nil), do: nil

  def decode_date(iso) when is_binary(iso) do
    case Date.from_iso8601(iso) do
      {:ok, d} -> d
      _ -> nil
    end
  end

  def decode_atom(nil), do: nil
  def decode_atom(str) when is_binary(str), do: String.to_atom(str)
  def decode_atom(atom) when is_atom(atom), do: atom
end
