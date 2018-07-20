"Filed out from Dolphin Smalltalk 7"!

JQUiFunctionalTest subclass: #JQButtonFunctionalTest
	instanceVariableNames: 'locked number'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQButtonFunctionalTest guid: (GUID fromString: '{1be01d54-9f97-4a11-9a8f-69c10d389c94}')!
JQButtonFunctionalTest comment: ''!
!JQButtonFunctionalTest categoriesForClass!JQuery-Tests-UI-Functional! !
!JQButtonFunctionalTest methodsFor!

initialize	super initialize.	locked := false.	number := 1!

renderAnchorOn: html	html anchor		onClick: (html javascript			alert: 'Nothing to configure right now.');		script: (html jQuery this button			text: false;			primaryIcon: 'ui-icon-gear');		with: 'Configure'!

renderCheckboxOn: html	html checkbox		value: locked;		callback: [ :value | locked := value ];		onChange: (html jQuery ajax serializeForm);		script: (html jQuery this button			text: false;			primaryIcon: 'ui-icon-locked').	html label		for: html lastId;		with: 'Lock'!

renderContentOn: html	html form 		id: 'toolbar';		class: 'ui-widget-header';		class: 'ui-corner-all'; 		with: [ 			self renderAnchorOn: html.			self renderCheckboxOn: html.			self renderOptionOn: html ]!

renderOptionOn: html	html span		script: (html jQuery this buttonset);		with: [ 			html radioGroup				selected: number; 				callback: [ :value | number := value ];				with: [ :group |					#(1 2 3) do: [ :each |						group radioButton							onChange: (html jQuery ajax serializeForm);							value: each;							ensureId.						html label							for: html lastId;							with: each ] ] ]!

selectors	^ #(renderContentOn: renderAnchorOn: renderCheckboxOn: renderOptionOn:)!

style	^ '#toolbar { padding: 4px 4px; }.ui-button { margin-right: 4px; }'	!

title	^ 'Button'!

url	^ 'http://docs.jquery.com/UI/Button'! !
!JQButtonFunctionalTest categoriesFor: #initialize!initialization!public! !
!JQButtonFunctionalTest categoriesFor: #renderAnchorOn:!public!rendering! !
!JQButtonFunctionalTest categoriesFor: #renderCheckboxOn:!public!rendering! !
!JQButtonFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!JQButtonFunctionalTest categoriesFor: #renderOptionOn:!public!rendering! !
!JQButtonFunctionalTest categoriesFor: #selectors!accessing!public! !
!JQButtonFunctionalTest categoriesFor: #style!hooks!public! !
!JQButtonFunctionalTest categoriesFor: #title!accessing!public! !
!JQButtonFunctionalTest categoriesFor: #url!accessing!public! !

