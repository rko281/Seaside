"Filed out from Dolphin Smalltalk 7"!

WAPainter subclass: #WATwo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATwo guid: (GUID fromString: '{0be0f300-3358-4b84-a13f-6d6e299d853b}')!
WATwo comment: 'I am a painter (not a component) that needs no session because I don''t send #callback:'!
!WATwo categoriesForClass!Seaside-REST-Examples! !
!WATwo methodsFor!

renderContentOn: html	html heading: 'Two'.	html anchor		url: self requestContext request url;		extraPath: '..';		extraPath: 'three';		with: 'three'! !
!WATwo categoriesFor: #renderContentOn:!public!rendering! !

