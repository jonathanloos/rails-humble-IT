require 'test_helper'

module Feedback
  class TicketsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @ticket = feedback_tickets(:one)
    end

    test "should get index" do
      get tickets_url
      assert_response :success
    end

    test "should get new" do
      get new_ticket_url
      assert_response :success
    end

    test "should create ticket" do
      assert_difference('Ticket.count') do
        post tickets_url, params: { ticket: { category: @ticket.category, closed_at: @ticket.closed_at, confidence: @ticket.confidence, ease: @ticket.ease, email: @ticket.email, ice_score: @ticket.ice_score, impact: @ticket.impact, name: @ticket.name, notify: @ticket.notify, owner_id: @ticket.owner_id, priority: @ticket.priority, reported_version: @ticket.reported_version, response: @ticket.response, status: @ticket.status, text: @ticket.text, title: @ticket.title, user_id: @ticket.user_id, version: @ticket.version } }
      end

      assert_redirected_to ticket_url(Ticket.last)
    end

    test "should show ticket" do
      get ticket_url(@ticket)
      assert_response :success
    end

    test "should get edit" do
      get edit_ticket_url(@ticket)
      assert_response :success
    end

    test "should update ticket" do
      patch ticket_url(@ticket), params: { ticket: { category: @ticket.category, closed_at: @ticket.closed_at, confidence: @ticket.confidence, ease: @ticket.ease, email: @ticket.email, ice_score: @ticket.ice_score, impact: @ticket.impact, name: @ticket.name, notify: @ticket.notify, owner_id: @ticket.owner_id, priority: @ticket.priority, reported_version: @ticket.reported_version, response: @ticket.response, status: @ticket.status, text: @ticket.text, title: @ticket.title, user_id: @ticket.user_id, version: @ticket.version } }
      assert_redirected_to ticket_url(@ticket)
    end

    test "should destroy ticket" do
      assert_difference('Ticket.count', -1) do
        delete ticket_url(@ticket)
      end

      assert_redirected_to tickets_url
    end
  end
end
