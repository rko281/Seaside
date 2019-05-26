"Filed out from Dolphin Smalltalk 7"!

WAFileLibrary subclass: #JQBaseTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JQBaseTheme guid: (GUID fromString: '{28a57e9b-8294-4114-89a0-bd3e723c363f}')!
JQBaseTheme comment: ''!
!JQBaseTheme categoriesForClass!JQuery-UI-Libraries! !
!JQBaseTheme methodsFor!

themeName	^ 'base'!

updateRoot: anHtmlRoot	anHtmlRoot stylesheet		url: 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/' , self themeName , '/jquery-ui.css'! !
!JQBaseTheme categoriesFor: #themeName!accessing!public! !
!JQBaseTheme categoriesFor: #updateRoot:!public!updating! !

!JQBaseTheme class methodsFor!

generate	"This code is used to generate the theme classes. It is not necessary to port or call this method from any Smalltalk platform other than Pharo. The actual code of this method is commented to avoid problems on other platforms."	"| model themes className |	model := (Smalltalk at: #RBNamespace) new.	themes := #('black-tie' 'blitzer' 'cupertino' 'dark-hive' 'dot-luv' 'eggplant' 'excite-bike' 'flick' 'hot-sneaks' 'humanity' 'le-frog' 'mint-choc' 'overcast' 'pepper-grinder' 'redmond' 'smoothness' 'south-street' 'start' 'sunny' 'swanky-purse' 'trontastic' 'ui-darkness' 'ui-lightness' 'vader').	(model classNamed: self name) subclasses		do: [ :each | model removeClass: each ].	themes do: [ :theme |		className := ((((theme findTokens: $-)			collect: [ :each | each asCapitalizedPhrase ])			inject: 'JQ' into: [ :a :b | a , b ]) , 'Theme')			asSymbol.		model defineClass: ('<1s> subclass: #<2s>			instanceVariableNames: ''''			classVariableNames: ''''			poolDictionaries: ''''			category: <3p>'				expandMacrosWith: self name				with: className				with: self category).		(model classNamed: className)			compile: 'themeName	^ ' , theme printString			classified: #accessing ].	model changes open"		self error: 'comment only'! !
!JQBaseTheme class categoriesFor: #generate!private! !

