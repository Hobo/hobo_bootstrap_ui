Additional UI tags for the [hobo_bootstrap theme](https://github.com/Hobo/hobo_bootstrap).  Some of these tags are wrappers for the [bootstrap javascript components](twitter.github.com/bootstrap/javascript.html).  Others are useful tags that are built on top of those javascript components.

This plugin also includes an implementation of `<search-results-container>`, replacing the one in `hobo_jquery_ui`.

## Installation

    rails generate hobo:install_plugin hobo_bootstrap_ui git://github.com/Hobo/hobo_bootstrap_ui.git

## Documentation

[Tag documentation](http://cookbook.hobocentral.net/api_plugins/hobo_bootstrap_ui)

## Versus hobo_jquery_ui

It is intended that this library will render [hobo_jquery_ui](https://github.com/Hobo/hobo_jquery_ui) and jquery-ui optional.

At the moment, you can use hobo_bootstrap_ui instead of hobo_jquery_ui if you don't mind the loss of tags such as `<name-one>`.

hobo_bootstrap_ui and hobo_jquery_ui may both be used in the same Hobo application.  In the case of a conflict, the plugin loaded last will be used.  `<search-results-container>` is the only current conflict, although hopefully we get bootstrap replacements for `<name-one>` and `<input for="Date">` soon.

At the momemt, Hobo requires jQuery-UI even if hobo_jquery_ui is not used.  We do plan on removing that dependency soon.

## TODO

* replace `show` and `hide` in hjq.js to make jQuery-UI optional

* implement `name-one` using bootstrap typeahead so that a Hobo application without hobo_jquery_ui is Hobo 1.3 compatible

* implement replacements for the remainder of hobo_jquery_ui's tags.



  [1]: https://github.com/Hobo/hobo_bootstrap_ui/raw/master/screenshots/select_one_or_new.png
