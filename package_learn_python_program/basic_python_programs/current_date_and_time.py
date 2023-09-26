from datetime import date, datetime, time, timedelta, timezone, tzinfo

class rajeev_date_time():
    def date_func(self):
        self.today = date.today()
        print("Current date is: ", self.today)

        self.current_month = self.today.strftime("%c")
        print("Current month is: ", self.current_month)


object_rajeev_date_time = rajeev_date_time()
object_rajeev_date_time.date_func()