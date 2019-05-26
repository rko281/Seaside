"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JSScriptTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSScriptTest guid: (GUID fromString: '{fdfc4c82-a1ff-48d1-a7ed-61c01c2205de}')!
JSScriptTest comment: ''!
!JSScriptTest categoriesForClass!Javascript-Tests-Core! !
!JSScriptTest methodsFor!

function	^ JSFunction context: self renderContext!

script	^ JSScript context: self renderContext!

testAdd	| script element |	script := self script.	element := self stream nextPutAll: 'foo'.	self assert: (script add: element) == element.	self assert: script equals: 'foo'.	element := self stream nextPutAll: 'bar'.	self assert: (script add: element) == element.	self assert: script equals: 'foo;bar'!

testAddAll	| script elements |	script := self script.	elements := Array 		with: (self stream nextPutAll: 'foo')		with: (self stream nextPutAll: 'bar').	self assert: (script addAll: elements) == elements.	self assert: script equals: 'foo;bar'!

testAlert	self assert: (self script alert: 'Be Alert') equals: 'alert("Be Alert")'!

testArgument	| function |	function := self function arguments: #(a b c).	self assert: (function argument = #(a b c)).	self assert: (function arguments = #(a b c))!

testArguments	self		assert: (self function arguments: #(a))		equals: 'function(a){}'.	self		assert: (self function arguments: #(a b))		equals: 'function(a,b){}'!

testAsFunction	self		assert: (self script asFunction: #(a))		equals: 'function(a){}'.	self		assert: (self function asFunction: #(a b))		equals: 'function(a,b){}'!

testCallback	self assert: (self script callback: [ ]) equals: 'window.location="http://www.seaside.st/?_s=1&_k=a&1"'!

testComma	| script element |	script := self script.	element := self stream nextPutAll: 'foo'.	self assert: (script , element) == script.	self assert: script equals: 'foo'.	element := self stream nextPutAll: 'bar'.	self assert: (script , element) == script.	self assert: script equals: 'foo;bar'!

testConvert	self		assert: self function		equals: 'function(){}'.	self		assert: self function asFunction		equals: 'function(){}'.	self 		assert: 'alert("1")' asFunction		equals: 'function(){alert("1")}'!

testEmpty	self assert: self script equals: ''!

testGoto	self assert: (self script goto: 'http://www.seaside.st') equals: 'window.location="http://www.seaside.st"'!

testLogger	self assert: (self script logger log: 'Hello Wold') equals: 'console.log("Hello Wold")'!

testRefresh	self assert: self script refresh equals: 'window.location="http://www.seaside.st/?_s=1&_k=a"'!

testReturn	| function |	function := self function.	function add: (self stream nextPutAll: 'foo').	function add: (self stream nextPutAll: 'bar').	function add: (self stream nextPutAll: 'baz').	self assert: function equals: 'function(){foo;bar;baz}'.	function := self function return: true.	function add: (self stream nextPutAll: 'foo').	function add: (self stream nextPutAll: 'bar').	function add: (self stream nextPutAll: 'baz').	self assert: function equals: 'function(){foo;bar;return baz}'!

testShift	| script element |	script := self script.	element := self stream nextPutAll: 'foo'.	self assert: (script << element) == element.	self assert: script equals: 'foo'.	element := self stream nextPutAll: 'bar'.	self assert: (script << element) == element.	self assert: script equals: 'foo;bar'! !
!JSScriptTest categoriesFor: #function!accessing!public! !
!JSScriptTest categoriesFor: #script!accessing!public! !
!JSScriptTest categoriesFor: #testAdd!public!tests/compose! !
!JSScriptTest categoriesFor: #testAddAll!public!tests/compose! !
!JSScriptTest categoriesFor: #testAlert!public!tests/utilities! !
!JSScriptTest categoriesFor: #testArgument!public!tests/function! !
!JSScriptTest categoriesFor: #testArguments!public!tests/function! !
!JSScriptTest categoriesFor: #testAsFunction!public!tests/function! !
!JSScriptTest categoriesFor: #testCallback!public!tests/utilities! !
!JSScriptTest categoriesFor: #testComma!public!tests/compose! !
!JSScriptTest categoriesFor: #testConvert!public!tests! !
!JSScriptTest categoriesFor: #testEmpty!public!tests! !
!JSScriptTest categoriesFor: #testGoto!public!tests/utilities! !
!JSScriptTest categoriesFor: #testLogger!public!tests/utilities! !
!JSScriptTest categoriesFor: #testRefresh!public!tests/utilities! !
!JSScriptTest categoriesFor: #testReturn!public!tests/function! !
!JSScriptTest categoriesFor: #testShift!public!tests/compose! !

