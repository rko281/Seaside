"Filed out from Dolphin Smalltalk"!

WASubmitButtonTag subclass: #WAImageButtonTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAImageButtonTag guid: (GUID fromString: '{48bb18ee-1e9b-4d9b-ad1e-7b1e5deb94ea}')!

WAImageButtonTag comment: 'Creates a graphical submit button. The value of the src attribute specifies the URI of the image that will decorate the button. For accessibility reasons, authors should provide alternate text for the image via the alt attribute. When a pointing device is used to click on the image, the form is submitted and the click coordinates passed to the server. The x value is measured in pixels from the left of the image, and the y value in pixels from the top of the image. The submitted data includes name.x=x-value and name.y=y-value where "name" is the value of the name attribute, and x-value and y-value are the x and y coordinate values, respectively.'!

!WAImageButtonTag categoriesForClass!Tags! !

!WAImageButtonTag methodsFor!

callback: aBlock	self name: (self storeCallback: (WAImageCallback on: aBlock))!

extent: aPoint	self width: aPoint x; height: aPoint y!

height: aNumber	self attributes at: 'height' put: aNumber!

resourceUrl: aString	self url: (canvas absoluteUrlForResource: aString)!

type	^ 'image'!

url: aString	self attributes at: 'src' put: aString!

width: aNumber	self attributes at: 'width' put: aNumber! !

!WAImageButtonTag categoriesForMethods!
callback:!callbacks!public! !
extent:!attributes!public! !
height:!attributes!public! !
resourceUrl:!accessing!public! !
type!accessing!public! !
url:!attributes!public! !
width:!attributes!public! !
!

