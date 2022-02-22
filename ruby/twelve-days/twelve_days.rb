# frozen_string_literal: true

class TwelveDays
  LIBRARY_EXT = {
    'one' => {
      'day' => 'first',
      'song' => 'a Partridge in a Pear Tree.'
    },
    'two' => {
      'day' => 'second',
      'song' => 'two Turtle Doves, and '
    },
    'three' => {
      'day' => 'third',
      'song' => 'three French Hens, '
    },
    'four' => {
      'day' => 'fourth',
      'song' => 'four Calling Birds, '
    },
    'five' => {
      'day' => 'fifth',
      'song' => 'five Gold Rings, '
    },
    'six' => {
      'day' => 'sixth',
      'song' => 'six Geese-a-Laying, '
    },
    'seven' => {
      'day' => 'seventh',
      'song' => 'seven Swans-a-Swimming, '
    },
    'eight' => {
      'day' => 'eighth',
      'song' => 'eight Maids-a-Milking, '
    },
    'nine' => {
      'day' => 'ninth',
      'song' => 'nine Ladies Dancing, '
    },
    'ten' => {
      'day' => 'tenth',
      'song' => 'ten Lords-a-Leaping, '
    },
    'eleven' => {
      'day' => 'eleventh',
      'song' => 'eleven Pipers Piping, '
    },
    'twelve' => {
      'day' => 'twelfth',
      'song' => 'twelve Drummers Drumming, '
    }
  }.freeze

  def self.song
    output = ''
    LIBRARY_EXT.each_with_index do |(_key, value), index|
      output += "On the #{value['day']} day of Christmas my true love gave to me: "
      (0..index).to_a.reverse.each do |index_past|
        output += LIBRARY_EXT.values[index_past]['song']
      end
      output += "\n"
      output += "\n" unless index == LIBRARY_EXT.count - 1
    end
    output
  end
end
