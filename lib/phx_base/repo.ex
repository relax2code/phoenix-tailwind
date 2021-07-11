defmodule BasePhx.Repo do
  use Ecto.Repo,
    otp_app: :phx_base,
    adapter: Ecto.Adapters.Postgres
end
