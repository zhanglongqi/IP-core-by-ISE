@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc7z020clg484-1 -nt timestamp -bm test.bmm "D:/test/implementation/test.ngc" -uc test.ucf test.ngd 

@REM #
@REM # Command line for map
@REM #
map -o test_map.ncd -w -pr b -ol high -timing -detail test.ngd test.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high test_map.ncd test.ncd test.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml test.twx test.ncd test.pcf 

