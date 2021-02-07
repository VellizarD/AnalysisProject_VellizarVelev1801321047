Feature: Стартиране на процес по Чифтосване
		Scenario Outline: Стартиране на процес по Чифтосване
			Given Портебителя отваря екрана за Стартиране на процес по Чифтосване
			When Въведе номер на женска крава "<Fid>"
			And Въведе номер на мъжка крава "<Mid>"
			And Натиска бутона за стартиране
			Then Вижда съобщението "<expectedMessage>"
				
			Examples:
			|Fid|Mid|expectedMessage|
			|fID1|mID1|Успешно стартирахте процеса|
			|fID1|fID2|Втората въведена от вас крава трябва да е мъжка|
			|mID1|mID2|Първата въведена от вас крава трябва да е женска|
			|mID1|fID1|Първата въведена от вас крава трябва да е женска, а втората- мъжка|
			|fID2|mID1|Женската крава трябва да е на поне 2 години|
			|fID1|mID2|Мъжката крава трябва да е на поне 2 години|
			|fID3|mID1|Трябва да са минали поне 10 месеца от датата на последното забраменяване на женската крава|