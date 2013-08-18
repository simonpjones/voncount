# Von Count

Tackle characters with Von Count

![Count characters with The Count](http://1.bp.blogspot.com/_zCGbA5Pv0PI/TGj5YnGEDDI/AAAAAAAADD8/ipYKIgc7Jg0/s400/CountVonCount.jpg)

A simple twitter-style character counter gem that includes form helpers for easy use.


## Installation

Add the following to your Gemfile
  
  gem 'voncount'

Add the following directive to your Javascript manifest file (application.js):

  //= require voncount

Add the following to your Stylesheet manifest file (application.cs):

  *= require voncount

## Usage

To include a character counter on a text field use whichever of the following you need:

  = f.voncount_text_field :field_name, class: "class-names", maxlength: 120

or
  
  = voncount_text_field_tag "field_name", "Value", class: "class-names", maxlength: 120

or
  
  = f.voncount_text_field :field_name, class: "class-names", maxlength: 120


To include a character counter on a text area use whichever of the following you need:

  = f.voncount_text_area :field_name, class: "class-names", maxlength: 120

or
  
  = voncount_text_area_tag "field_name", "Value", class: "class-names", maxlength: 120

or
  
  = f.voncount_text_area :field_name, class: "class-names", maxlength: 120


Default max character length is 255, this value is overridden by the maxlength option applied to the field

