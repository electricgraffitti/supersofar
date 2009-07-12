// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  $("#twitter_feed").tweet({
              username: "supersofar",
              join_text: "auto",
              avatar_size: 32,
              count: 4,
              auto_join_text_default: "we said,",
              auto_join_text_ed: "we",
              auto_join_text_ing: "we were",
              auto_join_text_reply: "we replied to",
              auto_join_text_url: "we were checking out",
              loading_text: "loading super tweets..."
          });
});


$(document).ready(function() {
  $("#photo_album img").reflect();
  
});
