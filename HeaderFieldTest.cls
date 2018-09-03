"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HeaderFieldTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HeaderFieldTest guid: (GUID fromString: '{7364179f-645e-48ef-ad03-d014cc71a063}')!
HeaderFieldTest comment: ''!
!HeaderFieldTest categoriesForClass!Unclassified! !
!HeaderFieldTest methodsFor!

testCombine
	"Entity tags must be quoted strings - RFC 2616 3.11"

	| header1 header2 header3 |
	header1 := HeaderField fromLine: 'If-Match: "a"'.
	header2 := HeaderField fromLine: 'If-Match: "b","c"'.
	header3 := HeaderField fromLine: 'If-Match: "d"'.
	header1 combineWith: header2.
	self assert: header1 valuesAsString = '"a","b","c"'.
	header1 combineWith: header3.
	self assert: header1 valuesAsString = '"a","b","c","d"'!

testContentTypeMultiple
	"   HTTP/1.1 header field values can be folded onto multiple lines if the
   continuation line begins with a space or horizontal tab. All linear
   white space, including folding, has the same semantics as SP. A
   recipient MAY replace any linear white space with a single SP before
   interpreting the field value or forwarding the message downstream.

       LWS            = [CRLF] 1*( SP | HT )"

	| requestStream request field |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'GET / HTTP/1.1';
		nextPutLine: 'Host: 127.0.0.1';
		nextPutLine: 'Content-Type: text/html; ';
		nextPutLine: ' charset=iso-8859-1';
		crlf.
	request := HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents).
	field := request headers fieldNamed: 'content-type'.
	self assert: field name = 'Content-Type'.
	self assert: field mediaType = 'text/html'.
	self assert: (field transferCodings at: 'charset') = 'iso-8859-1'!

testValues
	"Entity tags are held internally as simple strings.  Any necessary leading and trailing double quotes are added by the header fields as needed.  Note that it is OK to have a comma in an entity tag - see the second of the group of 3 tags below."

	| header |
	header := HeaderField fromLine: 'If-Match: "xyzzy" '.
	self assert: header name = 'If-Match'.
	self assert: header entityTags first = 'xyzzy'.
	header := HeaderField 
				fromLine: 'If-Match: "xyzzy", "r2d2,xxxx", "c3piozzzz" '.
	self assert: header name = 'If-Match'.
	self assert: header entityTags first = 'xyzzy'.
	self assert: (header entityTags at: 2) = 'r2d2,xxxx'.
	self assert: header entityTags last = 'c3piozzzz'! !
!HeaderFieldTest categoriesFor: #testCombine!public!testing! !
!HeaderFieldTest categoriesFor: #testContentTypeMultiple!public!testing! !
!HeaderFieldTest categoriesFor: #testValues!public!testing! !

