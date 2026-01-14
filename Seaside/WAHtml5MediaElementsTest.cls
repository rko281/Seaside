"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAHtml5MediaElementsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHtml5MediaElementsTest guid: (GUID fromString: '{fffa07fa-bf75-4904-bcb5-d57ac9996a38}')!

WAHtml5MediaElementsTest comment: ''!

!WAHtml5MediaElementsTest categoriesForClass!Seaside-Tests-Functional! !

!WAHtml5MediaElementsTest methodsFor!

renderAudioOn: html	html heading level2; with: '<audio>'.	html audio		url: 'http://upload.wikimedia.org/wikipedia/commons/9/94/Mix.ogg';		autoplay: true;		controls: true;		loop: true;		preload: true!

renderContentOn: html	self renderVideoOn: html.	self renderAudioOn: html!

renderVideoOn: html	html heading level2; with: '<video>'.	html video 		url: 'http://people.opera.com/howcome/2007/video/A_New_Computer--small.ogg';		autoplay: true;		controls: true;		loop: true;		preload: true;		poster: 'http://seaside.st/styles/logo-plain.png';		width: 360; height: 240;		with: 'Theora decoder not found'! !

!WAHtml5MediaElementsTest categoriesForMethods!
renderAudioOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderVideoOn:!public!rendering! !
!

