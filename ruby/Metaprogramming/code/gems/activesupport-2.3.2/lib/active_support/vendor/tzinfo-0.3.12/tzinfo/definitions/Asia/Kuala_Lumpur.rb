#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Asia
      module Kuala_Lumpur
        include TimezoneDefinition
        
        timezone 'Asia/Kuala_Lumpur' do |tz|
          tz.offset :o0, 24406, 0, :LMT
          tz.offset :o1, 24925, 0, :SMT
          tz.offset :o2, 25200, 0, :MALT
          tz.offset :o3, 25200, 1200, :MALST
          tz.offset :o4, 26400, 0, :MALT
          tz.offset :o5, 27000, 0, :MALT
          tz.offset :o6, 32400, 0, :JST
          tz.offset :o7, 28800, 0, :MYT
          
          tz.transition 1900, 12, :o1, 104344641397, 43200
          tz.transition 1905, 5, :o2, 8353142363, 3456
          tz.transition 1932, 12, :o3, 58249757, 24
          tz.transition 1935, 12, :o4, 87414055, 36
          tz.transition 1941, 8, :o5, 87488575, 36
          tz.transition 1942, 2, :o6, 38886499, 16
          tz.transition 1945, 9, :o5, 19453681, 8
          tz.transition 1981, 12, :o7, 378664200
        end
      end
    end
  end
end
