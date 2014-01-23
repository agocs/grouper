class EventMailer < ActionMailer::Base
  def group_mail group, event_name
    email_addresses = group.people.map(&:email_address)
    mail(to: email_addresses, subject: event_name)
  end

  def opt_in_mail event, person
    @person = person
    @event = event
    mail(to: person.email_address, subject: event.name)
  end

  def opt_out_mail event, person
    @person = person
    @event = event
    mail(to: person.email_address, subject: event.name)
  end
end