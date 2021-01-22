class ChangeOwnerMailer < ApplicationMailer
  def change_owner_mail(team, owner)
    @team = team
    @owner = owner
    mail to: owner.email, subject: "#{team.name}チームリーダー変更のご案内"
  end
end
