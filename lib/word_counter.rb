class String
  define_method(:get_count) do |target|
    target.downcase!

    # Downcase original phrase, remove all punctuation
    phrase_stripped = self.downcase().gsub(/[^a-z0-9\s]/i, '')
    phrase_words = phrase_stripped.split()
    target_count = 0

    phrase_words.each do |word|
      # If the phrase word matches the target word
      if word.==(target)
        # Increment target_count by one
        target_count = target_count + 1
      end
    end

    return target_count

  end
end
