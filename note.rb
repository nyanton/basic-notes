class Notes

  attr_reader :title, :note, :done
  attr_accessor :done

  def initialize(title, note, done = false)
    @title = title
    @note = note
    @done = done
  end
end
