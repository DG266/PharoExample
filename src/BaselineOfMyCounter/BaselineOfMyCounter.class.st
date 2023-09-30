Class {
	#name : #BaselineOfMyCounter,
	#superclass : #BaselineOf,
	#category : #BaselineOfMyCounter
}

{ #category : #baselines }
BaselineOfMyCounter >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Packages"
			spec
				package: 'MyCounter';
				package: 'MyCounter-Tests' with: [ spec requires: #('MyCounter') ];
				package: 'MyCounter-Failing-Tests' with: [ spec requires: #('MyCounter') ]
		]
]
