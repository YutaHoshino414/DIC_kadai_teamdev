class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @agenda = contact
    mail to: @agenda.team.users.pluck(:email), subject: "アジェンダ削除のお知らせ"
  end
end
