require './lib/wit_bot/message.rb'

# top-level class documentation comment
class IntentRecognition
  HELLO_INTENT = 'hello_present'.freeze

  INTENTS = %i[hello].freeze

  attr_accessor :string

  def initialize(string)
    self.string = string
  end

  def intent
    INTENTS.detect { |intent| send("#{intent}_present?") }
  end

  def hello_present?
    include_string?(HELLO_INTENT)
  end

  private

  def include_string?(string_intent)
    hash_result = WitBot::Message.new.send(string)

    intent = hash_result['entities']['intent']

    return unless intent

    intent[0].values_at('value')[0] == string_intent
  end
end
