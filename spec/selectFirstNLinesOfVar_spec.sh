Describe 'selectFirstNLinesOfVar'
	It 'returns error when called with no arguments'
		When call selectFirstNLinesOfVar
		The status should eq 1
	End

	It 'returns error for undefined variables'
		When call selectFirstNLinesOfVar someVar
		The status should eq 2
	End

	It 'does nothing for empty variables'
		someVar=
		When call selectFirstNLinesOfVar someVar
		The output should be blank
	End

	It 'does nothing if n is not given'
		someVar="some value"
		When call selectFirstNLinesOfVar someVar
		The output should be blank
	End

	It 'removes all but n lines from variables'
		someVar="Hello"$'\n'"World"$'\n'"Sunshine"
		When call selectFirstNLinesOfVar someVar 2
		The variable someVar should eq "Hello"$'\n'"World"
	End
End
