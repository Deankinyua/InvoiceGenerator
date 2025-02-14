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
        <div class="flex flex-row justify-center gap-20 border border-blue-400 w-full">
          <section>logo</section>
          <section>Invoice</section>
        </div>
        <div class="w-full">Sign in to Invoice</div>
        <div class="flex flex-row justify-center gap-10 w-full">
          <section>google logo</section>
          <section>Sign in with Google</section>
        </div>
        <div class="flex flex-row justify-center gap-10 w-full">
          <section>email logo</section>
          <section>Continue with email</section>
        </div>
        <div class="w-[70%] border border-green-400">
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
