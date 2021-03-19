defmodule Xoxo.Repo do
  use Ecto.Repo,
    otp_app: :xoxo,
    adapter: Ecto.Adapters.Postgres
end
