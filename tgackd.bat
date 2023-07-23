@echo off
if not exist %cd%\TGAckd\temp mkdir %cd%\TGAckd\temp
for %%f in (Input/*.dds) do xtx_extract -o TGAckd/temp/%%~nf.xtx Input/%%f
for %%f in (TGAckd/temp/*.xtx) do quickbms -o "scriptDDStoCKD.bms" TGAckd\temp\%%f TGAckd\
del %cd%\TGAckd\temp\*.* /Q