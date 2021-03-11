// Set default user language if none chosen yet.
var default_lang=$("#language-menu").attr("data-default");
if(!localStorage.getItem("language")){
	localStorage.setItem("language", default_lang);
}

// When visiting the homepage redirect to user chosen language.
var current_lang=localStorage.getItem("language");
if(location.pathname == "/"){
	if(current_lang != default_lang){
		location.href="/" + current_lang + "/";
	}
}

// Register user language of choice on language menu click.
$(document).ready(function(){
	$("#language-menu a").click(function(){
		localStorage.setItem("language", $(this).attr("data-lang"));
	});

	var language_image_parts=$("#language-image").attr("src").split("/");
	language_image_parts[language_image_parts.length-1] = current_lang + ".png";
	$("#language-image").attr("src", language_image_parts.join("/"));
});
