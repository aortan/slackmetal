#! /bin/bash

# Thanks to @laCour on github for the method and initial css file used in this hack.
cat << 'EOF' >> /Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js
// Custom CSS hack
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://raw.githubusercontent.com/aortan/slackmetal/master/dark_slack.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
EOF
echo If Slack.app is already running, refresh with CMD-R