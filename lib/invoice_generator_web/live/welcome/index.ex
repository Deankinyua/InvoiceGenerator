defmodule InvoiceGeneratorWeb.WelcomeLive.Index do
  @moduledoc """
  The welcome to our Application.
  """

  use InvoiceGeneratorWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <div class="flex flex-col items-center border border-red-400">
      <section class="flex flex-col items-center justify-between gap-10 border border-red-400 h-screen py-12">
        <div>
          <section>logo</section>
          <section>Invoice</section>
        </div>
        <div>Sign in to Invoice</div>
        <div>
          Sign in with Google
        </div>
        <div>Continue with email</div>
        <div>
          By creating an account, you agree to Invoice company's
          <span class="font-bold">Terms of use</span>
          and <span class="font-bold">Privacy Policy</span>
        </div>
      </section>
    </div>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
