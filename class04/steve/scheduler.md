# Scheduler

## 1) Time-formatting method

Compose a `to_time` method that receives a numeric hour (0-23) and returns it formatted as AM/PM on a 12-hour clock.

Calling this method with the following inputs should produce the following results:

```
to_time(0)   # "12AM" 
to_time(8)   # "8AM" 
to_time(12)  # "12PM" 
to_time(15)  # "3PM"
```

## 2) Meeting scheduler method

Compose a `schedule_meeting` method that recieves a starting hour and a length in hours (and assume that meetings will NOT span multiple days). The method should print the following message:

```
"Your meeting starts at [time], and will end at [time]."
```

Calling this method with the following inputs should produce the following results:

```
schedule_meeting(8, 3)
 # "Your meeting starts at 8AM, and will end at 11AM."

schedule_meeting(11, 2)
 # "Your meeting starts at 11AM, and will end at 1PM."

schedule_meeting(18, 21)
 # "Your meeting starts at 6PM, and will end at 9PM."
```