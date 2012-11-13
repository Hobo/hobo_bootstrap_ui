hobo_bootstrap_ui
=================

Additional UI tags for the `hobo_bootstrap` theme (https://github.com/Hobo/hobo_bootstrap)

The idea for a different repository comes from this discussion: https://groups.google.com/forum/?fromgroups=#!topic/hobousers/MPvNX8WzQIU . Conclusions:
* `hobo_bootstrap`: tags that complement jQuery-UI.
* `hobo_bootstrap_ui`: tags that replace jQuery-UI. We do not need to reimplement all
of jQuery-UI, but Hobo requires a name-one, dialog and datepicker tag. If these three are implemented, jquery-ui then becomes optional (datepicker is theoretically optional, but the standard Rails one is not very nice).



How to use
==========

Add the gem to your Gemfile:

    gem "hobo_bootstrap_ui", :git => "git://github.com/Hobo/hobo_bootstrap_ui.git"

Run bundle

    bundle

Include the taglibs in front_site.dryml:

    <include gem='hobo_bootstrap_ui'/>





Select one or new
=================

The `<select-one-or-new/>` tag adds a small button to a select in order to create a new record within a modal

Example: I want to create a new project in stories/new.dryml:

    <new-page>
      <form:>
        <field-list:>
          <project-view:><select-one-or-new/></project-view:>
        </field-list:>
      </form:>
    </new-page>
{.dryml}

You also need to modify the create action of the new record. projects_controller.rb:

    def create
      hobo_create {@this = Story.new(:project => @project) if request.xhr?}
    end
{.ruby}

Now you can easily use a Bootstrap modal

[![select_one_or_new][1]][1]





  [1]: https://github.com/Hobo/hobo_bootstrap_ui/raw/master/screenshots/select_one_or_new.png
