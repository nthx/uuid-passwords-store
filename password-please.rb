#!/usr/bin/env ruby

require 'securerandom'

CONFIG_PATH='all-passwords-i-am-better-on-crypted-storage.txt'

class PasswordGenerator
  def generate
    SecureRandom.uuid
  end
end


class Storage
  def store!(filepath, website_url, uuid)
    open(CONFIG_PATH, 'a') { |f|
      f.puts "#{uuid} #{website_url} #{Time.new.utc}"
    }
  end
end

class CommandLineInterface
  def read_website
    website_url = ARGV[0]
    if website_url.to_s.strip == ''
      puts "Provide website identifier please: #{$PROGRAM_NAME} website_url"
      abort
    end
    website_url
  end
end


website_url = CommandLineInterface.new.read_website
uuid = PasswordGenerator.new.generate
Storage.new.store!(CONFIG_PATH, website_url, uuid)

puts "Your password for #{website_url} is: #{uuid}"
