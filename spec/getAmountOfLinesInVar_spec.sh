Describe 'getAmountOfLinesInVar'
	It 'returns zero for empty variables'
		someVar=""
		When call getAmountOfLinesInVar someVar
		The output should eq 0
	End

	It 'returns one for single line'
		someVar="Hallo"
		When call getAmountOfLinesInVar someVar
		The output should eq 1
	End

	It 'returns two for two lines'
		someVar="World"$'\n'"Hello"
		When call getAmountOfLinesInVar someVar
		The output should eq 2
	End
End
