"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WALocaleTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WALocaleTest guid: (GUID fromString: '{10e2ed87-232b-46ec-9676-fa1cc82d16db}')!

WALocaleTest comment: ''!

!WALocaleTest categoriesForClass!Seaside-Tests-Core-HTTP! !

!WALocaleTest methodsFor!

testCountryName	| locale |	locale := WALocale fromString: 'de-CH'.		self assert: locale countryName = 'SWITZERLAND'.		locale := WALocale fromString: 'en-ZA'.		self assert: locale countryName = 'SOUTH AFRICA'.		locale := WALocale fromString: 'eng-ZAF'.		self assert: locale countryName = 'SOUTH AFRICA'!

testIso3	| locale |	locale := WALocale fromString: 'gsw-CHE'.	self assert: locale language = 'gsw'.	self assert: locale country = 'CHE'.	self assert: locale greaseString = 'gsw-CHE'.	locale := WALocale fromString: 'gsw_CHE'.	self assert: locale language = 'gsw'.	self assert: locale country = 'CHE'.	self assert: locale greaseString = 'gsw-CHE'!

testLanguage	| locale |	locale := WALocale language: 'de'.	self assert: locale language = 'de'.	self assert: locale country isNil!

testLanguageName	| locale |	locale := WALocale fromString: 'de'.		self assert: locale languageName = 'German'.		locale := WALocale fromString: 'gsw'.		self assert: locale languageName = 'Swiss German; Alemannic; Alsatian'!

testLangugeAndCountry	| locale |	locale := WALocale fromString: 'de-CH'.	self assert: locale language = 'de'.	self assert: locale country = 'CH'.	self assert: locale greaseString = 'de-CH'.	locale := WALocale fromString: 'de_CH'.	self assert: locale language = 'de'.	self assert: locale country = 'CH'.	self assert: locale greaseString = 'de-CH'!

testLangugeOnly	| locale |	locale := WALocale fromString: 'de'.	self assert: locale language = 'de'.	self assert: locale country isNil.	self assert: locale greaseString = 'de'!

testWithoutCountry	| locale |	locale := WALocale fromString: 'de_CH'.	self assert: locale language = 'de'.	self assert: locale country = 'CH'.	locale := locale withoutCountry.	self assert: locale language = 'de'.	self assert: locale country isNil.		locale := WALocale fromString: 'de'.	self assert: locale language = 'de'.	self assert: locale country isNil.	locale := locale withoutCountry.	self assert: locale language = 'de'.	self assert: locale country isNil! !

!WALocaleTest categoriesForMethods!
testCountryName!public!tests! !
testIso3!public!tests! !
testLanguage!public!tests! !
testLanguageName!public!tests! !
testLangugeAndCountry!public!tests! !
testLangugeOnly!public!tests! !
testWithoutCountry!public!tests! !
!

