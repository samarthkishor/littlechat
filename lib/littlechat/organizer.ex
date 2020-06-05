defmodule Littlechat.Organizer do
  alias Littlechat.Repo
  alias Littlechat.Room

  import Ecto.Query

  def get_room(slug) when is_binary(slug) do
    from(room in Room, where: room.slug == ^slug)
    |> Repo.one()
  end

  def create_connected_user do
    UUID.uuid4()
  end
end
