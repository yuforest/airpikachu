class TestMailer < ApplicationMailer
  def notify
    @greeting = "Hi"
    mail to: "送信先メールアドレス"
  end
end