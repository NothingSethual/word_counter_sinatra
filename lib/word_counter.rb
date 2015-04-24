class String
  define_method(:get_count) do |target|
    phrase_words = self.split()
    target_count = 0

    phrase_words.each do |word|
      if word.==(target)
        target_count = target_count + 1
      end
    end

    target_count

  end
end
