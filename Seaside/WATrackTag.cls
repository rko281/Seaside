"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WATrackTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATrackTag guid: (GUID fromString: '{b9d8f710-f3c1-4df5-bc53-e07a69baf2a5}')!
WATrackTag comment: ''!
!WATrackTag categoriesForClass!Seaside-Canvas-Tags! !
!WATrackTag methodsFor!

beCaptions	"Transcription or translation of the dialogue, sound effects, relevant musical cues, and other relevant audio information, suitable for when the soundtrack is unavailable or not clearly audible (e.g. because it is muted, drowned-out by ambient noise, or because the user is deaf). Overlaid on the video; labeled as appropriate for the hard-of-hearing."	self kind: 'captions'!

beChapters	"Chapter titles, intended to be used for navigating the media resource. Displayed as an interactive (potentially nested) list in the user agent's interface."	self kind: 'chapters'!

beDefault	self default: true!

beDescriptions	"Textual descriptions of the video component of the media resource, intended for audio synthesis when the visual component is obscured, unavailable, or not usable (e.g. because the user is interacting with the application without a screen while driving, or because the user is blind). Synthesized as audio."	self kind: 'descriptions'!

beMetadata	"Tracks intended for use from script. Not displayed by the user agent."	self kind: 'metadata'!

beSubtitles	"Transcription or translation of the dialogue, suitable for when the sound is available but not understood (e.g. because the user does not understand the language of the media resource's soundtrack). Overlaid on the video."	self kind: 'subtitles'!

default: aBoolean	"The default attribute, if specified, indicates that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate. There must not be more than one track element with the same parent node with the default attribute specified."	self attributeAt: 'default' put: aBoolean!

kind: aString	"The kind attribute is an enumerated attribute."	self attributeAt: 'kind' put: aString!

label: aString	"The label attribute gives a user-readable title for the track. This title is used by user agents when listing subtitle, caption, and audio description tracks in their user interface."	self attributeAt: 'label' put: aString!

sourceLanguage: aString	"The srclang attribute gives the language of the text track data. The value must be a valid BCP 47 language tag. This attribute must be present if the element's kind attribute is in the subtitles state."	self attributeAt: 'srclang' put: aString!

tag	^ 'track'!

url: aUrlOrString	"The src attribute gives the address of the text track data. The value must be a valid non-empty URL potentially surrounded by spaces. This attribute must be present."	self attributeAt: 'src' put: aUrlOrString! !
!WATrackTag categoriesFor: #beCaptions!attributes/kind!public! !
!WATrackTag categoriesFor: #beChapters!attributes/kind!public! !
!WATrackTag categoriesFor: #beDefault!attributes!public! !
!WATrackTag categoriesFor: #beDescriptions!attributes/kind!public! !
!WATrackTag categoriesFor: #beMetadata!attributes/kind!public! !
!WATrackTag categoriesFor: #beSubtitles!attributes/kind!public! !
!WATrackTag categoriesFor: #default:!attributes!public! !
!WATrackTag categoriesFor: #kind:!attributes/kind!public! !
!WATrackTag categoriesFor: #label:!attributes!public! !
!WATrackTag categoriesFor: #sourceLanguage:!attributes!public! !
!WATrackTag categoriesFor: #tag!accessing!public! !
!WATrackTag categoriesFor: #url:!attributes!public! !

