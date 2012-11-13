Additional UI tags for the `hobo_bootstrap` theme (https://github.com/Hobo/hobo_bootstrap)

## Rationale

[![select_one_or_new][1]][1]

The idea for a different repository comes from this discussion: https://groups.google.com/forum/?fromgroups=#!topic/hobousers/MPvNX8WzQIU . Conclusions:
* `hobo_bootstrap`: tags that complement jQuery-UI.
* `hobo_bootstrap_ui`: tags that replace jQuery-UI. We do not need to reimplement all
of jQuery-UI, but Hobo requires a name-one, dialog and datepicker tag. If these three are implemented, jquery-ui then becomes optional (datepicker is theoretically optional, but the standard Rails one is not very nice).


## How to use

Add the gem to your Gemfile:

    gem "hobo_bootstrap_ui", :git => "git://github.com/Hobo/hobo_bootstrap_ui.git"

Run bundle

    bundle

Include the taglibs in front_site.dryml:

    <include gem='hobo_bootstrap_ui'/>

## Documentation

[Cookbook taglibs](http://cookbook.hobocentral.net/api_plugins/hobo_bootstrap_ui)

  [1]: https://github.com/Hobo/hobo_bootstrap_ui/raw/master/screenshots/select_one_or_new.png
