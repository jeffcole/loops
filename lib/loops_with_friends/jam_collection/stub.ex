defmodule LoopsWithFriends.JamCollection.Stub do
  @moduledoc """
  Provides a subbed jam collection API for use in testing.
  """

  @behaviour LoopsWithFriends.JamCollection

  def new(opts \\ []) do
    opts = Keyword.put_new(opts, :caller, self())
    send opts[:caller], :called_jam_collection_new

    %{}
  end

  def refresh(_jams, _jam_id, ["user-1"], opts \\ []) do
    opts = Keyword.put_new(opts, :caller, self())

    send opts[:caller], :called_jam_collection_refresh
  end

  def most_populated_with_capacity(_jams) do
    send self(), :called_jam_collection_most_populated_with_capacity
  end

  def jam_full?(jams, _jam_id) when jams == %{} do
    send self(), :called_jam_collection_jam_full?
  end

  def remove_user(_jams, _jam_id, _user_id, opts \\ []) do
    opts = Keyword.put_new(opts, :caller, self())

    send opts[:caller], :called_jam_collection_remove_user
  end
end
