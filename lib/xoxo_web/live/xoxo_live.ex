require Integer

defmodule XoxoWeb.XoxoLive do
  use XoxoWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :xos, %XO{})}
  end

  def handle_event("step", %{"id" => id}, socket) do
    xos = id
    |> String.to_atom
    |> update_records(socket.assigns.xos)
    socket = assign(socket, :xos, xos)

    {:noreply, socket}
  end

  defp update_records(id, xos) do
    x_or_o = xos
    |> Map.values
    |> Enum.count(&(&1 === "x" || &1 === "o"))
    |> Integer.is_even && "x" || "o"

    case id do
      :one   -> %XO{xos | one: x_or_o}
      :two   -> %XO{xos | two: x_or_o}
      :three -> %XO{xos | three: x_or_o}
      :four  -> %XO{xos | four: x_or_o}
      :five  -> %XO{xos | five: x_or_o}
      :six   -> %XO{xos | six: x_or_o}
      :seven -> %XO{xos | seven: x_or_o}
      :eight -> %XO{xos | eight: x_or_o}
      :nine  -> %XO{xos | nine: x_or_o}
    end
  end
end
