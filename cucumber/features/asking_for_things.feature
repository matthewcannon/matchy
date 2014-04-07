Feature: asking for things

	@javascript
	Scenario: Get nothing

		Given no things
		 When I ask for Pencil
		 Then I get nothing

	#Scenario: Get one thing

		#Given Pencil
		 #When I ask for Pencil
		 #Then I get Pencil

	#Scenario: Get only what is asked for

		#Given Pencil
		  #And Tea
		 #When I ask for Tea
		 #Then I get Tea
		  #And I do not get Pencil
