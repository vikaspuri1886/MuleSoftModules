%dw 2.0
output application/json
var months = {
			  "0":'January',
			  "1":'February', 
			  "2":'March', 
			  "3":'April', 
			  "4":'May', 
			  "5":'June', 
			  "6":'July',
			  "7":'August', 
			  "8":'September', 
			  "9":'October', 
			  "10":'November', 
			  "11":'December'}
---
payload pluck (value,key,index) -> {
	user_id: value.user_id[0],
	subscription_id: value.subscription_id[0],
	name: value.name[0],
	from_time: value.from_time[0],
	to_time: value.to_time[0],
	((value) map(obj, key1) -> {
		((months[(key1)] ++ "_delay_1"): obj['delay_1']) if(obj['delay_1'] != null),
		((months[(key1)] ++ "_delay_2"): obj['delay_2']) if(obj['delay_2'] != null),
		((months[(key1)] ++ "_delay_3"): obj['delay_3']) if(obj['delay_3'] != null)				
	})
}
