create procedure d.p5() as begin 
call "SYSADMIN.sleep"("millis" => 500);
call "views.p1"();
end;