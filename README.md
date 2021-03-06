### Current Version (1.0.5)

### Framework7-rails

See http://www.idangero.us/framework7/

### Installation

    $ gem install framework7rails
    $ gem install git@github.com:kevincobain2000/framework7-rails.git

### Integrating framework7rails with rails

GemFile

```ruby
gem 'framework7rails', :git => 'https://github.com/kevincobain2000/framework7-rails', :branch => 'master' #latest version
```

And then execute:

    $ bundle

**application.js**

```
//= require framework7
```

**application.css**

```
*= require framework7
* require framework7.themes #if you want themes
```

## Updating From Vendor

```
## https://github.com/nolimits4web/Framework7/releases
./update_from_vendor.rb 0.9.X (without the v)
./install_local.sh
```

----

**Following might be outdated**

app/assets/javascripts/myapp.js //or whatever myapp_name.js

```
$(document).ready(function() {
  var $$ = Dom7;
  window.F7H = {
    app: new Framework7(),
    dom: Framework7.$
  };

  window.Phone = {
    Views: {}
  };

  Phone.Views.Main = F7H.app.addView('.view-main', {
    dynamicNavbar: true
  });
});
```

application.html.erb

```
<!DOCTYPE html>
<html>
<head>

  <title>Framework7railsDemo</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no, minimal-ui">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track' => true %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track' => true %>
  <%= csrf_meta_tags %>
</head>
```

Submitting Forms with ajax

```
## routes.rb
  resources :phone do
    collection do
      post :list_suggestion
    end
  end

## In your whatever erb, you can use form_tag() too
<form action="/phone/list_suggestion" method="POST" class="ajax-submit">
  <input type="text" name="request_list" placeholder="Type your list suggestion here...">
</form>

## phone_controller.rb
def list_suggestion
  logger.info "Debug #{params.inspect}"
end
```
