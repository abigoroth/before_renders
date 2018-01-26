# before_renders [![Gem Version](https://badge.fury.io/rb/before_renders.svg)](https://badge.fury.io/rb/before_renders)

If Rails before_filter or after_filter doesn't enough, try before_renders. Tested in Rails 5.1.4


## Installation

In your Gemfile:

```ruby
gem 'before_renders'
```

or system wide:

```console
$ gem install before_renders
```


## Usage

Now you can execute methods before your rails application start to render anything. Example in application controller like below :

```ruby
class ApplicationController < ActionController::Base
    before_render :set_layout

    def set_layout
        # ...
    end
end
```

You can also use in concerns like so:
```ruby
module PrintableController
  extend ActiveSupport::Concern

  included do
    before_render :update_gst_sum, only: [:new, :show, :print_rf]
  end
end
```
