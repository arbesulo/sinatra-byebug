#!/bin/env ruby

require 'sinatra'
require 'byebug'

get '/' do
  debugger
  [200, {'content-type' => 'text/plain'}, 'Hello world!']
end
