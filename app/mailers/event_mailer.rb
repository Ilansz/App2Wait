class EventMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.event_mailer.launched.subject
  #
  def launched
    @event = params[:event]
    @group = Group.find(@event.group.id)

    emails = []

    @group.users.each do |user|
      emails << user.email
    end

    emails.each do |email|
      mail to: email, subject: "You've been challenged on App2Wait!"
    end
    # raise
  end
end
