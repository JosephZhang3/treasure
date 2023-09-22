# frozen_string_literal: true
# 符号其实就是用来指代一串字符串的唯一标记
instrument_section = {
  :cello => "string",
  :oboe => "woodwind",
  :violin => "string"
}
p instrument_section[:cello]
p instrument_section[:oboe]
p instrument_section["oboe"] # hash表里没有key是字符串"oboe"的项，只有key是symbol :oboe 的项