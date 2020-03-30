require "application_system_test_case"

module Feedback
  class TicketsTest < ApplicationSystemTestCase
    setup do
      @ticket = feedback_tickets(:one)
    end

    test "visiting the index" do
      visit tickets_url
      assert_selector "h1", text: "Tickets"
    end

    test "creating a Ticket" do
      visit tickets_url
      click_on "New Ticket"

      fill_in "Category", with: @ticket.category
      fill_in "Closed at", with: @ticket.closed_at
      fill_in "Confidence", with: @ticket.confidence
      fill_in "Ease", with: @ticket.ease
      fill_in "Email", with: @ticket.email
      fill_in "Ice score", with: @ticket.ice_score
      fill_in "Impact", with: @ticket.impact
      fill_in "Name", with: @ticket.name
      check "Notify" if @ticket.notify
      fill_in "Owner", with: @ticket.owner_id
      fill_in "Priority", with: @ticket.priority
      fill_in "Reported version", with: @ticket.reported_version
      fill_in "Response", with: @ticket.response
      fill_in "Status", with: @ticket.status
      fill_in "Text", with: @ticket.text
      fill_in "Title", with: @ticket.title
      fill_in "User", with: @ticket.user_id
      fill_in "Version", with: @ticket.version
      click_on "Create Ticket"

      assert_text "Ticket was successfully created"
      click_on "Back"
    end

    test "updating a Ticket" do
      visit tickets_url
      click_on "Edit", match: :first

      fill_in "Category", with: @ticket.category
      fill_in "Closed at", with: @ticket.closed_at
      fill_in "Confidence", with: @ticket.confidence
      fill_in "Ease", with: @ticket.ease
      fill_in "Email", with: @ticket.email
      fill_in "Ice score", with: @ticket.ice_score
      fill_in "Impact", with: @ticket.impact
      fill_in "Name", with: @ticket.name
      check "Notify" if @ticket.notify
      fill_in "Owner", with: @ticket.owner_id
      fill_in "Priority", with: @ticket.priority
      fill_in "Reported version", with: @ticket.reported_version
      fill_in "Response", with: @ticket.response
      fill_in "Status", with: @ticket.status
      fill_in "Text", with: @ticket.text
      fill_in "Title", with: @ticket.title
      fill_in "User", with: @ticket.user_id
      fill_in "Version", with: @ticket.version
      click_on "Update Ticket"

      assert_text "Ticket was successfully updated"
      click_on "Back"
    end

    test "destroying a Ticket" do
      visit tickets_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Ticket was successfully destroyed"
    end
  end
end
