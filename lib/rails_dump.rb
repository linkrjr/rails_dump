require 'rails_dump/patches'
require 'rails_dump/helpers'

ActionView::Helpers.send("include", RailsDump::Helpers::Dump)