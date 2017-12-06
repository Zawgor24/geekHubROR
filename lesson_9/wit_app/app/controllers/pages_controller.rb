class PagesController < ApplicationController
  def get_text
  end

  def answer
    client = Wit.new(access_token: 'YGBMYESQ37ZYBYMVPYSWWUHEOE4VWNR4')
    @answer_text = client.message(params[:client_text])

    @value = get_value(@answer_text)
  end

  private

  def get_value(text)
    return text['entities']['intent'][0].values_at('value')[0]
  end

end