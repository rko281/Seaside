"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WACookieFunctionalTest
	instanceVariableNames: 'firstKey firstValue firstPath secondKey secondValue secondPath'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACookieFunctionalTest guid: (GUID fromString: '{76fc873b-9f97-497b-aa1b-ac1400570e3d}')!
WACookieFunctionalTest comment: ''!
!WACookieFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
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

renderInputFirstOn: html	html tableRow: [		self renderInputForCookie: #first on: html.		html tableData: [			html submitButton				on: #addFirst of: self ] ]!

renderInputForCookie: aSymbol on: html	html tableData: [		html textInput			on: (aSymbol, #Key) asSymbol of: self ].	html tableData: [		html textInput			on: (aSymbol, #Value) asSymbol of: self ].	html tableData: [		html textInput			on: (aSymbol, #Path) asSymbol of: self ].	html tableData.	html tableData!

renderInputOn: html	self renderInputFirstOn: html.	self renderInputSecondOn: html!

renderInputSecondOn: html	html tableRow: [		self renderInputForCookie: #second on: html.		html tableData: [			html submitButton				on: #addBoth of: self ] ]!

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
!WACookieFunctionalTest categoriesFor: #addBoth!actions!public! !
!WACookieFunctionalTest categoriesFor: #addFirst!actions!public! !
!WACookieFunctionalTest categoriesFor: #cookies!accessing!public! !
!WACookieFunctionalTest categoriesFor: #firstCookie!accessing!public! !
!WACookieFunctionalTest categoriesFor: #firstKey!accessing!public! !
!WACookieFunctionalTest categoriesFor: #firstKey:!accessing!public! !
!WACookieFunctionalTest categoriesFor: #firstPath!accessing!public! !
!WACookieFunctionalTest categoriesFor: #firstPath:!accessing!public! !
!WACookieFunctionalTest categoriesFor: #firstValue!accessing!public! !
!WACookieFunctionalTest categoriesFor: #firstValue:!accessing!public! !
!WACookieFunctionalTest categoriesFor: #initialize!initialization!public! !
!WACookieFunctionalTest categoriesFor: #remove:!actions!public! !
!WACookieFunctionalTest categoriesFor: #renderCombiningOn:!public!rendering/explanation! !
!WACookieFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WACookieFunctionalTest categoriesFor: #renderCookiesOn:!public!rendering! !
!WACookieFunctionalTest categoriesFor: #renderExplanationOn:!public!rendering! !
!WACookieFunctionalTest categoriesFor: #renderFirefoxOn:!public!rendering/explanation! !
!WACookieFunctionalTest categoriesFor: #renderHeadingsOn:!public!rendering! !
!WACookieFunctionalTest categoriesFor: #renderInputFirstOn:!public!rendering! !
!WACookieFunctionalTest categoriesFor: #renderInputForCookie:on:!public!rendering! !
!WACookieFunctionalTest categoriesFor: #renderInputOn:!public!rendering! !
!WACookieFunctionalTest categoriesFor: #renderInputSecondOn:!public!rendering! !
!WACookieFunctionalTest categoriesFor: #renderOperaOn:!public!rendering/explanation! !
!WACookieFunctionalTest categoriesFor: #renderRemoveOn:!public!rendering/explanation! !
!WACookieFunctionalTest categoriesFor: #renderSafariOn:!public!rendering/explanation! !
!WACookieFunctionalTest categoriesFor: #resetFirst!private! !
!WACookieFunctionalTest categoriesFor: #resetSecond!private! !
!WACookieFunctionalTest categoriesFor: #secondCookie!accessing!public! !
!WACookieFunctionalTest categoriesFor: #secondKey!accessing!public! !
!WACookieFunctionalTest categoriesFor: #secondKey:!accessing!public! !
!WACookieFunctionalTest categoriesFor: #secondPath!accessing!public! !
!WACookieFunctionalTest categoriesFor: #secondPath:!accessing!public! !
!WACookieFunctionalTest categoriesFor: #secondValue!accessing!public! !
!WACookieFunctionalTest categoriesFor: #secondValue:!accessing!public! !

