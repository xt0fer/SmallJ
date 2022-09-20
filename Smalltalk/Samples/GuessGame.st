CLASS Test subclass: 'GuessGame' variables: ' t g notdone ' classVariables: ''
METHOD foo
	g := 'foo'.
    System out println: g.
    System out println: 'bar'.
!
METHOD run
    "t := 10 atRandom."
    t := 5.
    notdone  := true.
    System out println: 'new game!' .
    [ notdone ] whileTrue: [
        "g := (FillInTheBlank request: 'enter guess') asInteger."
        g := System in readLine.
        System out println: 'input is'.
        System out println: g.
        ( t == g) ifTrue: [
            notdone := false.
            System out  println: 'You got it '.
            System out  println: t .
            ]
        ifFalse: [
        ( t > g ) ifTrue: [
            System out  println: 'too low'.
            ]
            ifFalse: [
            System out  println: 'too high'.
            ].
        ]
        ].
    System out println: 'Done'.
!
