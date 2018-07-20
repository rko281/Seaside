"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #URIParsingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
URIParsingTest guid: (GUID fromString: '{b4341c79-76b7-4f4b-be1f-385d7ea2da32}')!
URIParsingTest comment: ''!
!URIParsingTest categoriesForClass!Unclassified! !
!URIParsingTest methodsFor!

test05SimpleFullURI

|uri|
uri := SwazooURI fromString: 'http://abc.com:8080/smith/home.html'.
self assert: (uri protocol = 'http').
self assert: (uri hostname = 'abc.com'). 
self assert: (uri port = 8080).
self assert: (uri identifier = '/smith/home.html').
self assert: (uri asString = 'http://abc.com:8080/smith/home.html').!

test10SimpleFullURIWithQuery

|uri|
uri := SwazooURI fromString: 'http://abc.com:8080/smith/home.html?a=1&b=2'.
self assert: (uri protocol = 'http').
self assert: (uri hostname = 'abc.com'). 
self assert: (uri port = 8080).
self assert: (uri identifier = '/smith/home.html').
self assert: (uri asString = 'http://abc.com:8080/smith/home.html?a=1&b=2').!

test15SimpleFullURIWithPort80

|uri|
uri := SwazooURI fromString: 'http://abc.com:80/smith/home.html?a=1&b=2'.
self assert: (uri protocol = 'http').
self assert: (uri hostname = 'abc.com'). 
self assert: (uri port = 80).
self assert: (uri identifier = '/smith/home.html').
self assert: (uri asString = 'http://abc.com/smith/home.html?a=1&b=2').!

test20SimpleFullURIWithNoPort

|uri|
uri := SwazooURI fromString: 'http://abc.com/smith/home.html?a=1&b=2'.
self assert: (uri protocol = 'http').
self assert: (uri hostname = 'abc.com'). 
self assert: (uri port = 80).
self assert: (uri identifier = '/smith/home.html').
self assert: (uri asString = 'http://abc.com/smith/home.html?a=1&b=2').! !
!URIParsingTest categoriesFor: #test05SimpleFullURI!public!testing! !
!URIParsingTest categoriesFor: #test10SimpleFullURIWithQuery!public!testing! !
!URIParsingTest categoriesFor: #test15SimpleFullURIWithPort80!public!testing! !
!URIParsingTest categoriesFor: #test20SimpleFullURIWithNoPort!public!testing! !

