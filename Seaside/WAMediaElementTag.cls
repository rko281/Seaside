"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #WAMediaElementTag
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMediaElementTag guid: (GUID fromString: '{65036303-c710-42b3-80b6-754cdac35ea2}')!
WAMediaElementTag comment: 'WAMediaElementTag is an abstract class for all the media elements providing common media attributes.See: http://www.w3.org/TR/html5/video.html#media-element'!
!WAMediaElementTag categoriesForClass!Seaside-Canvas-Tags! !
!WAMediaElementTag methodsFor!

autoplay: aBoolean	"The autoplay attribute is a boolean attribute. When present, the user agent (as described in the algorithm described herein) will automatically begin playback of the media resource as soon as it can do so without stopping."	self attributeAt: 'autoplay' put: aBoolean!

controls: aBoolean	"The controls attribute is a boolean attribute. If present, it indicates that the author has not provided a scripted controller and would like the user agent to provide its own set of controls."	self attributeAt: 'controls' put: aBoolean!

loop: aBoolean	"The loop attribute is a boolean attribute that, if specified, indicates that the media element is to seek back to the start of the media resource upon reaching the end."	self attributeAt: 'loop' put: aBoolean!

onCanPlay: anObject	"The user agent can resume playback of the media data, but estimates that if playback were to be started now, the media resource could not be rendered at the current playback rate up to its end without having to stop for further buffering of content."	self document scriptGenerator		event: 'canplay'		do: anObject		on: self!

onCanPlayThrough: anObject	"The user agent estimates that if playback were to be started now, the media resource could be rendered at the current playback rate all the way to its end without having to stop for further buffering."	self document scriptGenerator		event: 'canplaythrough'		do: anObject		on: self!

onDurationChange: anObject	"The duration attribute has just been updated."	self document scriptGenerator		event: 'durationchange'		do: anObject		on: self!

onEmptied: anObject	"A media element whose networkState was previously not in the NETWORK_EMPTY state has just switched to that state (either because of a fatal error during load that's about to be reported, or because the load() method was invoked while the resource selection algorithm was already running)."	self document scriptGenerator		event: 'emptied'		do: anObject		on: self!

onEnded: anObject	"Playback has stopped because the end of the media resource was reached."	self document scriptGenerator		event: 'ended'		do: anObject		on: self!

onLoadedData: anObject	"The user agent can render the media data at the current playback position for the first time."	self document scriptGenerator		event: 'loadeddata'		do: anObject		on: self!

onLoadedMetadata: anObject	"The user agent has just determined the duration and dimensions of the media resource and the text tracks are ready."	self document scriptGenerator		event: 'loadedmetadata'		do: anObject		on: self!

onLoadStart: anObject	"The user agent begins looking for media data, as part of the resource selection algorithm."	self document scriptGenerator		event: 'loadstart'		do: anObject		on: self!

onPause: anObject	"The element has been paused. Fired after the pause() method has returned."	self document scriptGenerator		event: 'pause'		do: anObject		on: self!

onPlay: anObject	"The element is no longer paused. Fired after the play() method has returned, or when the autoplay attribute has caused playback to begin."	self document scriptGenerator		event: 'play'		do: anObject		on: self!

onPlaying: anObject	"Playback is ready to start after having been paused or delayed due to lack of media data."	self document scriptGenerator		event: 'playing'		do: anObject		on: self!

onProgress: anObject	"The user agent is fetching media data."	self document scriptGenerator		event: 'progress'		do: anObject		on: self!

onRateChange: anObject	"Either the defaultPlaybackRate or the playbackRate attribute has just been updated."	self document scriptGenerator		event: 'ratechange'		do: anObject		on: self!

onSeeked: anObject	"The seeking IDL attribute changed to false after the current playback position was changed."	self document scriptGenerator		event: 'seeked'		do: anObject		on: self!

onSeeking: anObject	"The seeking IDL attribute changed to true, and the user agent has started seeking to a new position."	self document scriptGenerator		event: 'seeking'		do: anObject		on: self!

onStalled: anObject	"The user agent is trying to fetch media data, but data is unexpectedly not forthcoming."	self document scriptGenerator		event: 'stalled'		do: anObject		on: self!

onSuspend: anObject	"The user agent is intentionally not currently fetching media data."	self document scriptGenerator		event: 'suspend'		do: anObject		on: self!

onTimeUpdate: anObject	"The current playback position changed as part of normal playback or in an especially interesting way, for example discontinuously."	self document scriptGenerator		event: 'timeupdate'		do: anObject		on: self!

onVolumeChange: anObject	"Either the volume attribute or the muted attribute has changed. Fired after the relevant attribute's setter has returned."	self document scriptGenerator		event: 'volumechange'		do: anObject		on: self!

onWaiting: anObject	"Playback has stopped because the next frame is not available, but the user agent expects that frame to become available in due course."	self document scriptGenerator		event: 'waiting'		do: anObject		on: self!

preload: aString	"The preload attribute is intended to provide a hint to the user agent about what the author thinks will lead to the best user experience.	See: http://www.w3.org/TR/html5/video.html#attr-media-preload		The preload attribute can have one of three values: 'none', 'metadata', 'auto'.	Providing an empty string defaults the value of the attribute to be 'auto'."	self attributeAt: 'preload' put: aString!

url: aString	self attributeAt: 'src' put: aString! !
!WAMediaElementTag categoriesFor: #autoplay:!attributes!public! !
!WAMediaElementTag categoriesFor: #controls:!attributes!public! !
!WAMediaElementTag categoriesFor: #loop:!attributes!public! !
!WAMediaElementTag categoriesFor: #onCanPlay:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onCanPlayThrough:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onDurationChange:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onEmptied:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onEnded:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onLoadedData:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onLoadedMetadata:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onLoadStart:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onPause:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onPlay:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onPlaying:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onProgress:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onRateChange:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onSeeked:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onSeeking:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onStalled:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onSuspend:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onTimeUpdate:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onVolumeChange:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #onWaiting:!attributes/events!public! !
!WAMediaElementTag categoriesFor: #preload:!attributes!public! !
!WAMediaElementTag categoriesFor: #url:!attributes!public! !

