"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WACookieFunctionalTest
	instanceVariableNames: 'firstKey firstValue firstPath secondKey secondValue secondPath'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACookieFunctionalTest guid: (GUID fromString: '{0058a636-9a35-48c2-b010-cd32041decfa}')!

WACookieFunctionalTest comment: ''!

!WACookieFunctionalTest categoriesForClass!Unclassified! !

!WACookieFunctionalTest methodsFor!

addBoth	self requestContext response addCookie: self firstCookie.	self requestContext response addCookie: self secondCookie.		self resetFirst.	self resetSecond!

addFirst	self requestContext response addCookie: self firstCookie.		self resetFirst!

cookies	^ self requestContext request cookies!

firstCookie	^ self requestContext newCookie		key: self firstKey;		value: self firstValue;		path: self firstPath;		yourself!

firstKey	^ firstKey!

firstKey: aString	firstKey := aString!

firstPath	^ firstPath!

firstPath: aString	firstPath := aString!

firstValue	^ firstValue!

firstValue: aString	firstValue := aString!

initialize	super initialize.	self firstPath: self application url pathStringUnencoded.	self secondPath: self application url pathStringUnencoded!

remove: aCookie	self requestContext response deleteCookie: aCookie!

renderCombiningOn: html	html listItem: 'Setting both cookies should work in Kom and is broken in Swazoo.'!

renderContentOn: html	self renderExplanationOn: html.	html form: [		html table: [			self renderHeadingsOn: html.			self renderCookiesOn: html.			self renderInputOn: html ] ]!

renderCookiesOn: html	self cookies do: [ :each |		html tableRow: [			html tableData: each key.			html tableData: each value.			html tableData: each path.			html tableData: each domain.			html tableData: each ports.			html tableData: [				html submitButton					callback: [ self remove: each ];					text: 'remove' ] ] ]!

renderExplanationOn: html	html unorderedList: [		self renderFirefoxOn: html.		self renderSafariOn: html.		self renderOperaOn: html.		self renderRemoveOn: html ]!

renderFirefoxOn: html	html listItem: 'On Firefox the path is not supposed to work. But if you look under Settings -> Cookies the cookie should be saved with the correct path.'!

renderHeadingsOn: html	html tableRow: [		html tableHeading: 'Key'.		html tableHeading: 'Value'.		html tableHeading: 'Path'.		html tableHeading: 'Domain'.		html tableHeading: 'Ports'.		html tableHeading ]!

renderInputFirstOn: html	html tableRow: [		self renderInputForCookie: #first on: html.		html tableData: [			html submitButton				id: #addFirstCookie;				on: #addFirst of: self ] ]!

renderInputForCookie: aSymbol on: html	html tableData: [		html textInput			on: (aSymbol, #Key) asSymbol of: self ].	html tableData: [		html textInput			on: (aSymbol, #Value) asSymbol of: self ].	html tableData: [		html textInput			on: (aSymbol, #Path) asSymbol of: self ].	html tableData.	html tableData!

renderInputOn: html	self renderInputFirstOn: html.	self renderInputSecondOn: html!

renderInputSecondOn: html	html tableRow: [		self renderInputForCookie: #second on: html.		html tableData: [			html submitButton				id: #addSecondCookie;				on: #addBoth of: self ] ]!

renderOperaOn: html	html listItem: 'Opera is supposed to work perfectly.'!

renderRemoveOn: html	html listItem: 'Removing should work on Firefox and Safari but only if the path is unchanged. On Opera it should delete the value and the path.'!

renderSafariOn: html	html listItem: 'On Safari the path is not supposed to work. But if you look under Preferences -> Security -> Show Cookies the cookie should be saved with the correct path.'!

resetFirst	self firstKey: nil.	self firstValue: nil.	self firstPath: self application url pathStringUnencoded!

resetSecond	self secondKey: nil.	self secondValue: nil.	self secondPath: self application url pathStringUnencoded!

secondCookie	^ self requestContext newCookie		key: self secondKey;		value: self secondValue;		path: self secondPath;		yourself!

secondKey	^ secondKey!

secondKey: aString	secondKey := aString!

secondPath	^ secondPath!

secondPath: aString	secondPath := aString!

secondValue	^ secondValue!

secondValue: aString	secondValue := aString! !

!WACookieFunctionalTest categoriesForMethods!
addBoth!actions!public! !
addFirst!actions!public! !
cookies!accessing!public! !
firstCookie!accessing!public! !
firstKey!accessing!public! !
firstKey:!accessing!public! !
firstPath!accessing!public! !
firstPath:!accessing!public! !
firstValue!accessing!public! !
firstValue:!accessing!public! !
initialize!initialization!public! !
remove:!actions!public! !
renderCombiningOn:!public!rendering/explanation! !
renderContentOn:!public!rendering! !
renderCookiesOn:!public!rendering! !
renderExplanationOn:!public!rendering! !
renderFirefoxOn:!public!rendering/explanation! !
renderHeadingsOn:!public!rendering! !
renderInputFirstOn:!public!rendering! !
renderInputForCookie:on:!public!rendering! !
renderInputOn:!public!rendering! !
renderInputSecondOn:!public!rendering! !
renderOperaOn:!public!rendering/explanation! !
renderRemoveOn:!public!rendering/explanation! !
renderSafariOn:!public!rendering/explanation! !
resetFirst!private! !
resetSecond!private! !
secondCookie!accessing!public! !
secondKey!accessing!public! !
secondKey:!accessing!public! !
secondPath!accessing!public! !
secondPath:!accessing!public! !
secondValue!accessing!public! !
secondValue:!accessing!public! !
!

