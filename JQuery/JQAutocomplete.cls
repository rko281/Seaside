"Filed out from Dolphin Smalltalk 7"!

JQWidget subclass: #JQAutocomplete
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQAutocomplete guid: (GUID fromString: '{f76f6218-af9b-4a35-b46b-b72a136a4dba}')!
JQAutocomplete comment: 'Autocomplete, added to an input field, enables users to quickly find and select from a pre-populated list of values as they type, leveraging searching and filtering.'!
!JQAutocomplete categoriesForClass!JQuery-UI-Widgets! !
!JQAutocomplete methodsFor!

appendTo: aSelector	"Which element the menu should be appended to."	self optionAt: 'appendTo' put: aSelector!

autoFocus: aBoolean	"If set to true the first item will be automatically focused."	self optionAt: 'autoFocus' put: aBoolean!

close	"Close the autocomplete menu. Useful in combination with the search method, to close the open menu."		self action: 'close' arguments: #()!

delay: anInteger	"The delay in milliseconds the Autocomplete waits after a keystroke to activate itself. A zero-delay makes sense for local data (more responsive), but can produce a lot of load for remote data, while being less responsive."	self optionAt: 'delay' put: anInteger!

method	^ 'autocomplete'!

minLength: anInteger	"The minimum number of characters a user has to type before the Autocomplete activates. Zero is useful for local data with just a few items. Should be increased when there are a lot of items, where a single character would match a few thousand items."	self optionAt: 'minLength' put: anInteger!

onChange: anObject	"Triggered when the field is blurred, if the value has changed; ui.item refers to the selected item."	self optionAt: 'change' put: anObject asFunction!

onClose: anObject	"When the list is hidden - doesn't have to occur together with a change."	self optionAt: 'close' put: anObject asFunction!

onFocus: anObject	"Before focus is moved to an item (not selecting), ui.item refers to the focused item. The default action of focus is to replace the text field's value with the value of the focused item, though only if the focus event was triggered by a keyboard interaction. Canceling this event prevents the value from being updated, but does not prevent the menu item from being focused."	self optionAt: 'focus' put: anObject asFunction!

onOpen: anObject	"Triggered when the suggestion menu is opened."	self optionAt: 'open' put: anObject asFunction!

onResponse: anObject	"Triggered after a search completes, before the menu is shown. Useful for local manipulation of suggestion data, where a custom source option callback is not required. This event is always triggered when a search completes, even if the menu will not be shown because there are no results or the Autocomplete is disabled."	self optionAt: 'response' put: anObject asFunction!

onSearch: anObject	"Before a request (source-option) is started, after minLength and delay are met. Can be canceled (return false), then no request will be started and no items suggested."	self optionAt: 'search' put: anObject asFunction!

onSelect: anObject	"Triggered when an item is selected from the menu; ui.item refers to the selected item. The default action of select is to replace the text field's value with the value of the selected item. Canceling this event prevents the value from being updated, but does not prevent the menu from closing."	self optionAt: 'select' put: anObject asFunction!

position: anObject	"Identifies the position of the Autocomplete widget in relation to the associated input element. The 'of' option defaults to the input element, but you can specify another element to position against. See more details at http://api.jqueryui.com/autocomplete/#option-position"	self optionAt: 'position' put: anObject!

search: aString	"Triggers a search event, which, when data is available, then will display the suggestions; can be used by a selectbox-like button to open the suggestions when clicked. If no value argument is specified, the current input's value is used. Can be called with an empty string and minLength: 0 to display all items."		self action: 'search' arguments: (Array with: aString)!

search: aSearchBlock callback: aCallbackBlock	self search: aSearchBlock labels: [ :each | each greaseString ] callback: aCallbackBlock!

search: aSearchBlock labels: aLabelsBlock callback: aCallbackBlock	"A one argument block aSearchBlock that will be evaluated with the term the user currently typed. The block is expected to answer a collection of objects. aLabelsBlock should answer a string label to be displayed for each object. aCallbackBlock is evaluated with the selected object and an ajax script to be performed."		| term mapping |	mapping := IdentityDictionary new.	"assigments to temps don't work in GS 2.4'	http://code.google.com/p/glassdb/issues/detail?id=221"	term := WAValueHolder new.	self source: ((self jQuery getJson		callback: [ :value | term contents: value ]		value: (JSStream on: 'request.term');		text: [ :stream | 			stream json: ((aSearchBlock value: term contents) asArray collect: [ :object | 				GRSmallDictionary new					at: 'label' put: (aLabelsBlock value: object);					at: 'index' put: (mapping at: object ifAbsentPut: [ mapping size + 1 ]);					yourself ]) ];		onSuccess: 'response(arguments[0])'; 		dataType: 'jsonp') asFunction: #('request' 'response')).	self onSelect: ((self jQuery ajax		callback: [ :value | term contents: value greaseInteger ] 		value: (JSStream on: 'ui.item.index');		script: [ :script |			mapping keysAndValuesDo: [ :object :value |				value = term contents					ifTrue: [ aCallbackBlock value: object value: script ] ] ])		asFunction: #('event' 'ui'))!

source: aStringOrArrayOrCallback	"Defines the data to use, must be specified. See Overview section for more details, and look at the various demos."	self optionAt: 'source' put: aStringOrArrayOrCallback!

sourceCallback: aOneArgumentBlock	"A one argument block that will be evaluated with the term the user currently typed. The block is expected to answer a collection of objects."		| term |	"assignments to temps don't work in GS 2.4	http://code.google.com/p/glassdb/issues/detail?id=152"	term := WAValueHolder new.	self source: ((self jQuery getJson		text: [ :stream | stream json: (aOneArgumentBlock value: term contents) ];		callback: [ :value | term contents: value ] value: (JSStream on: 'request.term');		onSuccess: 'response(arguments[0])'; 		dataType: 'jsonp') asFunction: #('request' 'response'))! !
!JQAutocomplete categoriesFor: #appendTo:!options/generated!public! !
!JQAutocomplete categoriesFor: #autoFocus:!options/generated!public! !
!JQAutocomplete categoriesFor: #close!actions!public! !
!JQAutocomplete categoriesFor: #delay:!options/generated!public! !
!JQAutocomplete categoriesFor: #method!accessing!public! !
!JQAutocomplete categoriesFor: #minLength:!options/generated!public! !
!JQAutocomplete categoriesFor: #onChange:!events/generated!public! !
!JQAutocomplete categoriesFor: #onClose:!events/generated!public! !
!JQAutocomplete categoriesFor: #onFocus:!events/generated!public! !
!JQAutocomplete categoriesFor: #onOpen:!events/generated!public! !
!JQAutocomplete categoriesFor: #onResponse:!events/generated!public! !
!JQAutocomplete categoriesFor: #onSearch:!events/generated!public! !
!JQAutocomplete categoriesFor: #onSelect:!events/generated!public! !
!JQAutocomplete categoriesFor: #position:!options/generated!public! !
!JQAutocomplete categoriesFor: #search:!actions!public! !
!JQAutocomplete categoriesFor: #search:callback:!convenience!public! !
!JQAutocomplete categoriesFor: #search:labels:callback:!convenience!public! !
!JQAutocomplete categoriesFor: #source:!options/generated!public! !
!JQAutocomplete categoriesFor: #sourceCallback:!convenience!public! !

