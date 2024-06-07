// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
// For Webpacker (app/javascript/packs/application.js)
import Rails from "@rails/ujs";
Rails.start();

//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
