"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HTTPPostTest
	instanceVariableNames: 'request'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HTTPPostTest guid: (GUID fromString: '{40368149-7f8b-4cfa-adae-3583ac76af7e}')!
HTTPPostTest comment: ''!
!HTTPPostTest categoriesForClass!Unclassified! !
!HTTPPostTest methodsFor!

crlf
	^String with: Character cr with: Character lf.!

fileContents
	"HTTPRequestTest new fileContents"
	| stream |
	stream := SwazooStream on: String new.
	stream
		nextPutLine: 'BEGIN:VCALENDAR';
		nextPutLine: 'PRODID:-//Squeak-iCalendar//-';
		nextPutLine: 'VERSION:2.0';
		nextPutLine: 'X-WR-CALNAME:test';
		nextPutLine: 'METHOD:PUBLISH';
		nextPutLine: 'BEGIN:VEVENT';
		nextPutLine: 'UID:an event with a start date and not date and time';
		nextPutLine: 'CATEGORIES:category1,category2';
		nextPutLine: 'CREATED:20050501T110231Z';
		nextPutLine: 'SEQUENCE:0';
		nextPutLine: 'SUMMARY:aTitle';
		nextPutLine: 'PRIORITY:5';
		nextPutLine: 'DTSTART;VALUE=DATE:20050425';
		nextPutLine: 'END:VEVENT';
		nextPutLine: 'END:VCALENDAR'.

	^stream writeBuffer contents asString!

postDashes
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST  /document/aab.html HTTP/1.1';
		nextPutLine: 'Host: biart.eranova.si';
		nextPutLine: 'Content-Type: multipart/form-data; boundary= boundary';
		nextPutLine: 'Content-Length: 149';
            crlf;
		nextPutLine: '--boundary';
		nextPutLine: 'Content-Disposition: form-data; name="id5273"';
		crlf; 
		nextPutLine: '----';
		nextPutLine: '--boundary';
		nextPutLine: 'Content-Disposition: form-data; name="field2"';
		crlf; 
		nextPutLine: '- --';
		nextPutLine: '--boundary--'.

	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

postEmpty
	"post entity with empty value"
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST  /document/aab.html HTTP/1.1';
		nextPutLine: 'Host: biart.eranova.si';
		nextPutLine: 'Content-Type: multipart/form-data; boundary= boundary';
		nextPutLine: 'Content-Length: 75';
            crlf;
		nextPutLine: '--boundary';
		nextPutLine: 'Content-Disposition: form-data; name="id5273"';
		crlf; 
		nextPutLine: '';
		nextPutLine: '--boundary--'.

	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

postFile
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST  /document/aab.html HTTP/1.1';
		nextPutLine: 'Connection: Keep-Alive';
		nextPutLine: 'User-Agent: Mozilla/4.72 [en] (X11; I; Linux 2.3.51 i686)';
		nextPutLine: 'Host: biart.eranova.si';
		nextPutLine: 'Referer: http://www.bar.com/takeMeThere.html';
		nextPutLine: 'Content-Type: multipart/form-data; boundary= -----------------20752836116568320241700153999';
		nextPutLine: 'Content-Length: ', (527+self fileContents size) printString;
            crlf;
		nextPutLine: '-------------------20752836116568320241700153999';
		nextPutLine: 'Content-Disposition: form-data; name="id5273"';
		crlf; 
		nextPutLine: 'main';
		nextPutLine: '-------------------20752836116568320241700153999';
		nextPutLine: 'Content-Disposition: form-data; name="field2"';
		crlf; crlf;
		nextPutLine: '-------------------20752836116568320241700153999';
		nextPutLine: 'Content-Disposition: form-data; name="field7"; filename="event.ical"';
		nextPutLine: 'Content-Type: application/octet-stream';
		crlf;

		nextPutAll: self fileContents;

		crlf;
		nextPutLine: '-------------------20752836116568320241700153999';
		nextPutLine: 'Content-Disposition: form-data; name="attach"';
		crlf;
		nextPutLine: 'Attach';
		nextPutLine: '-------------------20752836116568320241700153999--'.

	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

postPreambleEpilogue
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST  /document/aab.html HTTP/1.1';
		nextPutLine: 'Host: biart.eranova.si';
		nextPutLine: 'Content-Type: multipart/form-data; boundary= boundary';
		nextPutLine: 'Content-Length: 146';
            crlf;
		nextPutLine: 'This is a multi-part message in MIME format';
		nextPutLine: '--boundary';
		nextPutLine: 'Content-Disposition: form-data; name="id5273"';
		crlf; 
		nextPutLine: 'main';
		nextPutLine: '--boundary--';
		nextPutLine: 'This is the epilogue'.

	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

postSimple
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST  /document/aab.html HTTP/1.1';
		nextPutLine: 'Host: biart.eranova.si';
		nextPutLine: 'Content-Type: multipart/form-data; boundary= boundary';
		nextPutLine: 'Content-Length: 79';
            crlf;
		nextPutLine: '--boundary';
		nextPutLine: 'Content-Disposition: form-data; name="id5273"';
		crlf; 
		nextPutLine: 'main';
		nextPutLine: '--boundary--'.

	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

postUrlEncoded
	| requestStream |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST  /document/aab.html HTTP/1.1';
		nextPutLine: 'Host: biart.eranova.si';
		nextPutLine: 'Content-Type: application/x-www-form-urlencoded';
		nextPutLine: 'Content-Length: 36';
            crlf;
		nextPutAll: 'home=Cosby+one&favorite+flavor=flies'.

	^HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents)!

testBlockCopy
	"streaming with 8k blocks for performance"
	"this is just a basic test with content shorter that one block"
	| boundary message in out |
	boundary := '--boundary--'.
	message := 'just something'. 
	in := SwazooStream on: message, self crlf, boundary.
	out := WriteStream on: String new.
	HTTPPost new blockStreamingFrom: in to: out until: boundary.
	self assert: out contents = message.!

testPost10Simple
	"just one entity"
	| post |
	post := self postSimple.
	self assert: post isPostDataEmpty not.
	self assert: (post postDataStringAt: 'id5273') = 'main'.!

testPost2Empty
	"post entity with empty value"
	| post |
	post := self postEmpty.
	self assert: post isPostDataEmpty not.
	self assert: (post postDataStringAt: 'id5273') = ''.!

testPost3Dashes
	"some ---- inside post data"
	| post |
	post := self postDashes.
	self assert: post isPostDataEmpty not.
	self assert: (post postDataStringAt: 'id5273') = '----'.
	self assert: (post postDataStringAt: 'field2') = '- --'.!

testPost40File
	| post |
	post := self postFile.
	self assert: post isPostDataEmpty not.
	self assert: (post postDataStringAt: 'id5273') = 'main'.
	self assert: (post postDataStringAt: 'field2') = ''.
	self assert: (post postDataAt: 'field7') filename = 'event.ical'.
	self assert: ((post postDataStringAt: 'field7') readStream upTo: Character cr) = 'BEGIN:VCALENDAR'.
	self assert: (post postDataStringAt: 'field7') = self fileContents.
	self assert: (post postDataStringAt: 'attach') = 'Attach'.!

testPost41FileStreamed
	| post stream |
	post := self postFile.
	stream := WriteStream on: ByteArray new.
	post postDataAt: 'field7' streamTo: stream.
	self assert: (post isPostDataStreamedAt: 'field7').
	self deny: post postData isParsed. "post data read from socket defered"
	self assert: (post postDataStringAt: 'id5273') = 'main'. 
	self assert: post postData isParsed.  "first access to post data trigger full read and parse"
	self assert: (post postDataAt: 'field7') filename = 'event.ical'.
	self assert: (stream contents asString readStream upTo: Character cr) = 'BEGIN:VCALENDAR'.
	self assert: stream contents asString = self fileContents.
	self assert: (post postDataStringAt: 'attach') = 'Attach'.!

testPost42FileContentType
	| post |
	post := self postFile. "set the data to the post"
	self assert: post isPostDataEmpty not. "read the content of the stream"
	self assert: (post postDataAt: 'field7') contentType = 'application/octet-stream'.!

testPost5UrlEncoded
	"just one entity"
	| post |
	post := self postUrlEncoded.
	self assert: post isPostDataEmpty not.
	self assert: (post postDataStringAt: 'home') = 'Cosby one'.
	self assert: (post postDataStringAt: 'favorite flavor') = 'flies'.!

testPostPreambleEpilogue
	"mime preamble before first part and epilogue at the end. See #postPreambleEpilogue"
	| post |
	post := self postPreambleEpilogue.
	self assert: post isPostDataEmpty not.
	self assert: (post postDataStringAt: 'id5273') = 'main'.!

testPostRawEntity
	| requestStream post |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST /foobar HTTP/1.0';
		nextPutLine: 'Host: foo.com';
		nextPutLine: 'Content-Type: text/plain';
		nextPutLine: 'Content-Length: 12';
		crlf;
		nextPutLine: 'Hello, World'.
	post := HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents).
	self assert: post isPostDataEmpty.
	self assert: post entityBody = 'Hello, World'!

testPostUrlEncodedData
	| requestStream post |
	requestStream := SwazooStream on: String new.
	requestStream
		nextPutLine: 'POST / HTTP/1.1';
		nextPutLine: 'Host: foo.com';
		nextPutLine: 'Content-Type: application/x-www-form-urlencoded';
		nextPutLine: 'Content-Length: 31';
		crlf;
		nextPutLine: 'address=+fs&product=&quantity=1'.
	post := HTTPRequest readFrom: (SwazooStream on: requestStream writeBuffer contents).
	self assert: (post postDataAt: 'address') value = ' fs'.
	self assert: (post postDataAt: 'product') value = ''.
	self assert: (post postDataAt: 'quantity') value = '1'! !
!HTTPPostTest categoriesFor: #crlf!public!requests! !
!HTTPPostTest categoriesFor: #fileContents!public!requests! !
!HTTPPostTest categoriesFor: #postDashes!public!requests! !
!HTTPPostTest categoriesFor: #postEmpty!public!requests! !
!HTTPPostTest categoriesFor: #postFile!public!requests! !
!HTTPPostTest categoriesFor: #postPreambleEpilogue!public!requests! !
!HTTPPostTest categoriesFor: #postSimple!public!requests! !
!HTTPPostTest categoriesFor: #postUrlEncoded!public!requests! !
!HTTPPostTest categoriesFor: #testBlockCopy!public!testing-mime parsing! !
!HTTPPostTest categoriesFor: #testPost10Simple!public!testing-posts! !
!HTTPPostTest categoriesFor: #testPost2Empty!public!testing-posts! !
!HTTPPostTest categoriesFor: #testPost3Dashes!public!testing-posts! !
!HTTPPostTest categoriesFor: #testPost40File!public!testing-file posts! !
!HTTPPostTest categoriesFor: #testPost41FileStreamed!public!testing-file posts! !
!HTTPPostTest categoriesFor: #testPost42FileContentType!public!testing-file posts! !
!HTTPPostTest categoriesFor: #testPost5UrlEncoded!public!testing-posts! !
!HTTPPostTest categoriesFor: #testPostPreambleEpilogue!public!testing-posts! !
!HTTPPostTest categoriesFor: #testPostRawEntity!public!testing-posts! !
!HTTPPostTest categoriesFor: #testPostUrlEncodedData!public!testing-posts! !

