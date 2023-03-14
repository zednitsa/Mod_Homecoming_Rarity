@echo off
rmdir "%localappdata%\PhantomBrigade\Mods\Mod_Homecoming_Rarity\" /s /q
xcopy ".\*" "%localappdata%\PhantomBrigade\Mods\Mod_Homecoming_Rarity\" /s /e /y /i /exclude:Exclude.txt
if not exist "%localappdata%\PhantomBrigade\Settings\mods.yaml" (xcopy ".\mods.yaml" "%localappdata%\PhantomBrigade\Settings\") ELSE (echo "Mods.yaml already exists.")
pause