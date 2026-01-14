"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAImageFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAImageFunctionalTest guid: (GUID fromString: '{5657c742-0bbb-4c1e-b6cb-9a667b70380f}')!

WAImageFunctionalTest comment: ''!

!WAImageFunctionalTest categoriesForClass!Unclassified! !

!WAImageFunctionalTest methodsFor!

formClass
	^Smalltalk at: #Form ifAbsent: []!

haloDebugForm
	^self formClass
		extent: 16@16
		depth: 1
		fromArray: #( 0 0 0 50331648 25165824 12582912 281018368 415236096 264241152 132120576 7340032 3670016 1572864 0 0 0)
		offset: 0@0!

haloPaintForm
	^self formClass
		extent: 16@16
		depth: 1
		fromArray: #( 0 0 0 402653184 503316480 192937984 213909504 73400320 103809024 51904512 25690112 14155776 7340032 0 0 0)
		offset: 0@0!

haloViewForm
	^self formClass
		extent: 16@16
		depth: 1
		fromArray: #( 0 0 0 0 132120576 486014976 770965504 1341259776 669253632 467140608 132120576 0 0 0 0 0)
		offset: 0@0!

isSupported
	^self formClass notNil!

label
	^'Image'!

renderContentOn: html
	self isSupported
		ifTrue: [ self renderImagesOn: html ]
		ifFalse: [ self renderNotSupportedOn: html ]!

renderImagesOn: html
	html form: [
		html div: [
			html text: 'This one is clickable: '.
			html imageButton
				callback: [ self inform: 'ok' onAnswer: [ ] ];
				form: self haloDebugForm ] ].
		
	html paragraph: [
		html image
			form: self haloViewForm;
			altText: 'Halo-View'.
		html space.
		html image
			document: self haloPaintForm
			mimeType: 'image/png'
			fileName: 'Paint.png';
			altText: 'Halo-Paint' ]!

renderNotSupportedOn: html
	html heading: 'Your image doesn''t have the Form class'! !

!WAImageFunctionalTest categoriesForMethods!
formClass!accessing!public! !
haloDebugForm!accessing!public! !
haloPaintForm!accessing!public! !
haloViewForm!accessing!public! !
isSupported!public!testing! !
label!accessing!public! !
renderContentOn:!public!rendering! !
renderImagesOn:!public!rendering! !
renderNotSupportedOn:!public!rendering! !
!

