require 'active_support/core_ext/string/output_safety'
require 'rails_dump/dumpable'
require 'rails_dump/helpers'
require 'rails_dump/patches'
require 'rails_dump/version'

ActionView::Helpers.send("include", RailsDump::Helpers::Dump)