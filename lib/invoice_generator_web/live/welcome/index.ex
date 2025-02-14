defmodule InvoiceGeneratorWeb.WelcomeLive.Index do
  @moduledoc """
  The welcome to our Application.
  """

  use InvoiceGeneratorWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <div class="flex flex-col items-center border border-red-400">
      <section class="flex flex-col items-center justify-start gap-6 border border-red-400 h-[90vh] py-8">
        <div class="flex flex-row justify-center items-center gap-6 border border-blue-400 w-full">
          <section><img src="images/mobilelogo.svg" /></section>
          <section class="font-semibold text-[#7c5dfa] text-5xl">Invoice</section>
        </div>
        <div class="w-full flex flex-col items-center border border-red-400 mb-20">
          Sign in to Invoice
        </div>
        <div class="flex flex-row justify-center items-center gap-10 w-full border border-red-400 mb-10">
          <section><img src="images/googlesmall.svg" /></section>
          <section>Sign in with Google</section>
        </div>
        <div class="flex flex-row justify-center items-center gap-10 w-full mb-14">
          <section><img src="images/email.svg" /></section>
          <section>Continue with email</section>
        </div>
        <div class="w-[68%] border border-green-400">
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
