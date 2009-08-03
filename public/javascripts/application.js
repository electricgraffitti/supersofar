// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// $(document).ready(function() {
//   $(".twitter_feed").tweet({
//               username: "Supersofar",
//               join_text: "auto",
//               avatar_size: 32,
//               count: 4,
//               auto_join_text_default: "Supersofar said,",
//               auto_join_text_ed: "Supersofar",
//               auto_join_text_ing: "Supersofar was",
//               auto_join_text_reply: "Supersofar replied to",
//               auto_join_text_url: "Supersofar was checking out",
//               loading_text: "loading Super tweets..."
//           });
// });

$(document).ready(function() {
	$("#twitter_feed").getTwitter({
		userName: "supersofar",
		numTweets: 5,
		loaderText: "Loading tweets...",
		slideIn: true,
		showHeading: true,
		headingText: "Latest Supersofar Tweets",
		showProfileLink: true
	});
});



$(document).ready(function() {
  $("#photo_album img").reflect();
});
