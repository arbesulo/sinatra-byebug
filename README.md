# Minimal sinatra app to demonstrate an error with byebug

## Setup

Install the gems

```bash
bundle install
```

Start the server

```bash
ruby app.rb -o 0.0.0.0
```

Perform a request

```bash
curl localhost:4567
```

## The bug

After hitting the `debugger` call `frame` or `backtrace`


```
== Sinatra (v2.2.0) has taken the stage on 4567 for development with backup from Puma
Puma starting in single mode...
* Puma version: 5.6.2 (ruby 2.7.5-p203) ("Birdie's Version")
*  Min threads: 0
*  Max threads: 5
*  Environment: development
*          PID: 30836
* Listening on http://0.0.0.0:4567
Use Ctrl-C to stop

[1, 9] in /Users/fer/wokspace/sinatra-byebug/app.rb
   1: #!/bin/env ruby
   2: 
   3: require 'sinatra'
   4: require 'byebug'
   5: 
   6: get '/' do
   7:   debugger
=> 8:   [200, {'content-type' => 'text/plain'}, 'Hello world!']
   9: end
(byebug) frame
*** undefined method `GET /' for class `Sinatra::Application'
Did you mean?  get
               gets
(byebug) 
```
