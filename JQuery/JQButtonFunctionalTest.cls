"Filed out from Dolphin Smalltalk"!

JQUiFunctionalTest subclass: #JQButtonFunctionalTest
	instanceVariableNames: 'locked number'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQButtonFunctionalTest guid: (GUID fromString: '{a334bfd9-b623-4032-a63e-8fa0f53c92e0}')!

JQButtonFunctionalTest comment: ''!

!JQButtonFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !

!JQButtonFunctionalTest methodsFor!

initialize	super initialize.	locked := false.	number := 1!

renderAnchorOn: html	html anchor		onClick: (html javascript			alert: 'Nothing to configure right now.');		script: (html jQuery this button			text: false;			primaryIcon: 'ui-icon-gear');		with: 'Configure'!

renderCheckboxOn: html	html checkbox		value: locked;		callback: [ :value | locked := value ];		onChange: (html jQuery ajax serializeForm);		script: (html jQuery this button			text: false;			primaryIcon: 'ui-icon-locked').	html label		for: html lastId;		with: 'Lock'!

renderContentOn: html	html form 		id: 'toolbar';		class: 'ui-widget-header';		class: 'ui-corner-all'; 		with: [ 			self renderAnchorOn: html.			self renderCheckboxOn: html.			self renderOptionOn: html ]!

renderOptionOn: html	html span		script: (html jQuery this buttonset);		with: [ 			html radioGroup				selected: number; 				callback: [ :value | number := value ];				with: [ :group |					#(1 2 3) do: [ :each |						group radioButton							onChange: (html jQuery ajax serializeForm);							value: each;							ensureId.						html label							for: html lastId;							with: each ] ] ]!

selectors	^ #(renderContentOn: renderAnchorOn: renderCheckboxOn: renderOptionOn:)!

style	^ '#toolbar { padding: 4px 4px; }.ui-button { margin-right: 4px; }'!

title	^ 'Button'!

url	^ 'http://docs.jquery.com/UI/Button'! !

!JQButtonFunctionalTest categoriesForMethods!
initialize!initialization!public! !
renderAnchorOn:!public!rendering! !
renderCheckboxOn:!public!rendering! !
renderContentOn:!public!rendering! !
renderOptionOn:!public!rendering! !
selectors!accessing!public! !
style!hooks!public! !
title!accessing!public! !
url!accessing!public! !
!

