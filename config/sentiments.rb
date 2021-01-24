def sentiment_from_text text_content:
    # [START language_sentiment_text]
    text_content = "Text to run sentiment analysis on"
  
    require "google/cloud/language"
  
    language = Google::Cloud::Language.language_service
  
    document = { content: text_content, type: :PLAIN_TEXT }
    response = language.analyze_sentiment document: document
  
    sentiment = response.document_sentiment
  
    puts "Overall document sentiment: (#{sentiment.score})"
    puts "Sentence level sentiment:"
  
    sentences = response.sentences
  
    sentences.each do |sentence|
      sentiment = sentence.sentiment
      puts "#{sentence.text.content}: (#{sentiment.score})"
    end
    # [END language_sentiment_text]
  end

puts sentiment_from_text text_content:"text here"