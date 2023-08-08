Describe 'dateToTimestamp'
	It 'returns error when called without arguments'
		When call dateToTimestamp
		The status should eq 1
	End

	It 'returns error when called with invalid arguments'
		When call dateToTimestamp gibberish
		The status should eq 1
	End

	It 'returns correct result for valid argument'
	  export TZ=UTC
		When call dateToTimestamp 1970-01-01T00:00:00
		The output should eq 0
	End
End
