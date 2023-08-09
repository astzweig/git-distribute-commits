Describe 'getDateDiffInDays'
	It 'returns error when called without any arguments'
		When call getDateDiffInDays
		The status should eq 1
	End

	It 'returns error when called with single invalid argument'
		When call getDateDiffInDays "non-date-value"
		The status should eq 1
	End

	It 'returns error when called with two invalid arguments'
		When call getDateDiffInDays "gibberish" "and-again"
		The status should eq 2
	End

	It 'returns error when called with first invalid and second valid argument'
		When call getDateDiffInDays "gibberish" "86400"
		The status should eq 2
	End

	It 'returns error when called with first valid and second invalid argument'
		When call getDateDiffInDays "86400" "gibberish"
		The status should eq 3
	End

	It 'returns correct result when called with two valid arguments'
		When call getDateDiffInDays "86400" "0"
		The status should eq 0
		The output should eq "1"
	End
End
