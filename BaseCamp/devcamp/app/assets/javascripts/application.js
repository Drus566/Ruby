// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
document.addEventListener('turbolinks:load', function(){
    const openProjectButton = document.getElementById('new-project-button')
    const projectPopover = document.getElementById('new-project-popover')

    if (openProjectButton && projectPopover){
        
        openProjectButton.addEventListener('click', function(){
            return projectPopover.classList.contains('is-hidden') ? projectPopover.classList.remove('is-hidden') : null
        }, false)

        var cancelProjectPopover = document.getElementById('cancel-project-popover')
        cancelProjectPopover.addEventListener('click', function(){
            return projectPopover.classList.add('is-hidden')
        },false)
    }
})