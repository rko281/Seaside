"Filed out from Dolphin Smalltalk 7"!

JQFunctionalTest subclass: #JQJsonFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQJsonFunctionalTest guid: (GUID fromString: '{259978c7-9316-449a-bec4-47acf079f0bd}')!
JQJsonFunctionalTest comment: ''!
!JQJsonFunctionalTest categoriesForClass!JQuery-Tests-Core-Functional! !
!JQJsonFunctionalTest methodsFor!

renderContentOn: html	self renderExternalJsonOn: html.	self renderJsonCallbackOn: html!

renderExternalJsonOn: html	html paragraph: 'Load some recent Seaside pictures from the Flickr JSONP API:'.	html div id: 'images'.	html document 		addLoadScript: (html jQuery getJson			url: 'http://api.flickr.com/services/feeds/photos_public.gne?tags=seaside&format=json&jsoncallback=?';			onSuccess: '$.each(arguments[0].items, function(index, each) {				$("<img/>").attr("src", each.media.m).attr("title", each.title).appendTo("#images");			});')!

renderJsonCallbackOn: html	html paragraph: 'Load Json served by Seaside:'.	html textArea id: 'textarea'.	html document addLoadScript: 		(html jQuery getJson 				json: [ :json | self seasidePackagesOn: json ];				onSuccess: ((html jQuery id: 'textarea') value: (JSStream on: 'JSON.stringify(arguments[0])')) asFunction)							!

seasidePackagesOn: json	json array: [		GRPackage grPackages do:[ :grPackage |			json object: [ 				json key: 'name' value: grPackage name.				json key: 'dependencies' value: [  					json array: [ grPackage dependencies do: [ :dep |						json value: [ json string: dep name ] ] ] ] ] ] ]!

selectors	^ #(renderExternalJsonOn: renderJsonCallbackOn:)!

style	^ '#images { white-space: nowrap; overflow: scroll; overflow-y: hidden; }#images img { padding: 0 10px 10px 0; vertical-align: middle; }#textarea { width: 50em; height: 10em; }'!

title	^ 'Load JSON'! !
!JQJsonFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQJsonFunctionalTest categoriesFor: #renderExternalJsonOn:!public!rendering! !
!JQJsonFunctionalTest categoriesFor: #renderJsonCallbackOn:!public!rendering! !
!JQJsonFunctionalTest categoriesFor: #seasidePackagesOn:!private! !
!JQJsonFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQJsonFunctionalTest categoriesFor: #style!hooks!public! !
!JQJsonFunctionalTest categoriesFor: #title!accessing!public! !

