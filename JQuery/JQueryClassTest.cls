﻿"Filed out from Dolphin Smalltalk"!

JQueryTest subclass: #JQueryClassTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQueryClassTest guid: (GUID fromString: '{3970a50d-4fb8-4bf2-8082-ec2cd1cd5e11}')!

JQueryClassTest comment: ''!

!JQueryClassTest categoriesForClass!Unit! !

!JQueryClassTest methodsFor!

testAlias	| originalName |	originalName := JQuery functionName.	JQuery functionName: 'WhatElse'.	[ self assert: self jQuery equals: 'WhatElse' ]		ensure: [ JQuery functionName: originalName ]!

testAll	self		assert: (self jQuery all)		equals: self function , '("*")'!

testBasic	self		assert: self jQuery		equals: self function!

testClass	self		assert: (self jQuery class: 'foo')		equals: self function , '(".foo")'!

testContains	self		assert: (self jQuery contains: 1 in: #(1 2 3))		equals: self function , '.contains([1,2,3],1)'!

testDocument	self		assert: (self jQuery document)		equals: self function , '(document)'!

testError	self		assert: (self jQuery error: 'Doomsday Device')		equals: self function , '.error("Doomsday Device")'!

testEscapeSelector	self		assert: (self jQuery escapeSelector: '#foobar')		equals: self function , '.escapeSelector("#foobar")'!

testExpression	self		assert: (self jQuery expression: '#foo')		equals: self function , '("#foo")'.	self		assert: (self jQuery expression: 'div > p')		equals: self function , '("div > p")'.	self		assert: (self jQuery expression: 'ul li.active')		equals: self function , '("ul li.active")'!

testExpressionContext	self		assert: (self jQuery expression: '#foo' context: 123)		equals: self function , '("#foo",123)'!

testHoldReady	self		assert: (self jQuery holdReady: false)		equals: self function , '.holdReady(false)'!

testHtml	self		assert: (self jQuery html: [ :html | html div: 'foo' ])		equals: self function , '("<div>foo</div>")'.	self		assert: (self jQuery html: [ :html | html div title: 'foo'; with: 'bar' ])		equals: self function , '("<div title=\"foo\">bar</div>")'!

testId	self		assert: (self jQuery id: 'foo')		equals: self function , '("#foo")'!

testIsEmptyObject	self		assert: (self jQuery isEmptyObject: Dictionary new)		equals: self function , '.isEmptyObject({})'!

testIsPlainObject	self		assert: (self jQuery isPlainObject: Dictionary new)		equals: self function , '.isPlainObject({})'!

testIsWindow	self		assert: (self jQuery isWindow: Dictionary new)		equals: self function , '.isWindow({})'!

testNew	self		assert: (self jQuery new)		equals: self function , '(this)'.	self		assert: (self jQuery new id: 'foo')		equals: self function , '("#foo")'!

testNoop	self		assert: self jQuery noop		equals: self function , '.noop'!

testParseJSON	self		assert: (self jQuery parseJSON: '{ foo: 12 }')		equals: self function , '.parseJSON("{ foo: 12 }")'!

testReady	self		assert: (self jQuery ready: (self javascript alert: 'Hello'))		equals: self function , '(function(){alert("Hello")})'!

testScript	self assert: (self jQuery script: [ :s | ]) = ''.	self assert: (self jQuery script: [ :s | s add: s jQuery ]) = self function.	self assert: (self jQuery script: [ :s | s add: (s jQuery: 'a') ]) = (self function , '("a")')!

testSupport	self		assert: self jQuery support		equals: self function , '.support'!

testThis	self		assert: (self jQuery this)		equals: self function , '(this)'!

testType	self		assert: (self jQuery type: true)		equals: self function , '.type(true)'!

testUniqueSort	self		assert: (self jQuery uniqueSort: #(1 2 2 3))		equals: self function , '.uniqueSort([1,2,2,3])'!

testWithBlock	self		assert: (self jQuery: [ :html | html heading: 'jQuery' ])		equals: self function , '("<h1>jQuery</h1>")'!

testWithNil	self		assert: (self jQuery: nil)		equals: self function , '(this)'!

testWithReady	self		assert: (self jQuery: (self javascript alert: 'Hello'))		equals: self function , '(function(){alert("Hello")})'!

testWithString	self		assert: (self jQuery: 'div > p')		equals: self function , '("div > p")'!

testWithSymbol	self		assert: (self jQuery: #foo)		equals: self function , '("#foo")'! !

!JQueryClassTest categoriesForMethods!
testAlias!public!tests! !
testAll!public!tests/creation! !
testBasic!public!tests! !
testClass!public!tests/creation! !
testContains!public!tests/utilities! !
testDocument!public!tests/creation! !
testError!public!tests/utilities! !
testEscapeSelector!public!tests/utilities! !
testExpression!public!tests/creation! !
testExpressionContext!public!tests/creation! !
testHoldReady!public!tests/utilities! !
testHtml!public!tests/creation! !
testId!public!tests/creation! !
testIsEmptyObject!public!tests/utilities! !
testIsPlainObject!public!tests/utilities! !
testIsWindow!public!tests/utilities! !
testNew!public!tests/creation! !
testNoop!public!tests/accessing! !
testParseJSON!public!tests/utilities! !
testReady!public!tests/creation! !
testScript!public!tests/creation! !
testSupport!public!tests/agent! !
testThis!public!tests/creation! !
testType!public!tests/utilities! !
testUniqueSort!public!tests/utilities! !
testWithBlock!public!tests/with! !
testWithNil!public!tests/with! !
testWithReady!public!tests/with! !
testWithString!public!tests/with! !
testWithSymbol!public!tests/with! !
!

