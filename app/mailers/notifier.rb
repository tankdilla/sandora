class Notifier < ActionMailer::Base
  default :from => "sandoramailer@sandorafoods.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.comment_received.subject
  #
  def comment_received(comment)
#    @greeting = "Hi"
    @comment = comment

    mail :to => "sandorafoods@gmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_created.subject
  #
  def order_created
    @greeting = "Hi"

    mail :to => "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.report_generated.subject
  #
  def report_generated
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end
