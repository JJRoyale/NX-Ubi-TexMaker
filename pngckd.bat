@echo off
mkdir %cd%\PNGckd\temp
for %%f in (Input/*.dds) do xtx_extract -o PNGckd/temp/%%~nf.xtx Input/%%f
for %%f in (PNGckd/temp/*.xtx) do quickbms -o "scriptDDStoCKD2.bms" PNGckd\temp\%%f PNGckd\
del %cd%\PNGckd\temp\*.* /Q
