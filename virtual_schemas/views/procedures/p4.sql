CREATE PROCEDURE views.p4 (IN startdate date,IN enddate date) returns (xdate date)
as
BEGIN
DECLARE date idate;
idate=startdate;
CREATE LOCAL TEMPORARY TABLE #x(xdate date);
  WHILE (idate<=enddate)
  BEGIN
    INSERT INTO #x(xdate) VALUES (idate);
    idate=timestampadd(SQL_TSI_DAY,1,idate);
  END
SELECT * from #x;
END;