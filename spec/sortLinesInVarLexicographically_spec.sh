Describe 'sortLinesInVarLexicographically'
	It 'does nothing for empty vars'
		someVar=""
		When call sortLinesInVarLexicographically someVar
		The variable someVar should be blank
	End

	It 'does nothing for single lines'
		someVar="Hallo"
		When call sortLinesInVarLexicographically someVar
		The variable someVar should eq "Hallo"
	End

	It 'sorts line lexicographically'
		someVar="World"$'\n'"Hello"$'\n'"Sunshine"
		When call sortLinesInVarLexicographically someVar
		The variable someVar should eq "Hello"$'\n'"Sunshine"$'\n'"World"
	End
End
