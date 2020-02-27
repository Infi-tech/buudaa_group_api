defmodule BuudaaApi.Repo do
  use Ecto.Repo,
    otp_app: :buudaa_api,
    adapter: Ecto.Adapters.Postgres
end
