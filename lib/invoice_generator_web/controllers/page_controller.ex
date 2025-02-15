defmodule InvoiceGeneratorWeb.PageController do
  use InvoiceGeneratorWeb, :controller

  def home(conn, _params) do
    redirect(conn, to: "/welcome")
    # render(conn, :home, layout: false)
  end

  def signup(conn, params) do
    email = InvoiceGenerator.UserEmail.welcome(%{name: params["name"], email: params["email"]})
    InvoiceGenerator.Mailer.deliver(email)
    render(conn, :thanks, layout: false)
  end
end
