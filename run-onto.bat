@echo off

set VOCABULARY=%1
set RELEASE=%2

if "%RELEASE%"=="" (
    echo Provide the vocabulary name and the version number x.y.z
    exit /b 1
)

if "%VOCABULARY%"=="" (
    echo Provide the vocabulary name and the version number x.y.z
    exit /b 1
)

if exist "%VOCABULARY%\%RELEASE%" (
    echo The provided version already exists.
    exit /b 1
) else (
    mkdir "%VOCABULARY%"
    rem Clean /latest and create folders
    rmdir /s /q "%VOCABULARY%\latest"
    mkdir "%VOCABULARY%\latest"
    mkdir "%VOCABULARY%\%RELEASE%"

    rem Create serialisations and documentation
    java -jar tools\widoco.jar -excludeIntroduction -ontFile "%VOCABULARY%\%VOCABULARY%.owl" -outFolder "%VOCABULARY%\latest" -lang en

    rem Move files
    move "%VOCABULARY%\latest\index-en.html" "%VOCABULARY%\latest\index.html"

    for %%G in (jsonld nt owl ttl) do (
        move "%VOCABULARY%\latest\ontology.%%G" "%VOCABULARY%\latest\%VOCABULARY%.%%G"
        powershell -Command "(Get-Content '%VOCABULARY%\latest\index.html') -replace 'ontology.%%G', '%VOCABULARY%.%%G' | Set-Content '%VOCABULARY%\latest\index.html'"
    )

    rem Keep both extensions for rdf/xml
    copy "%VOCABULARY%\latest\%VOCABULARY%.owl" "%VOCABULARY%\latest\%VOCABULARY%.rdf"

    rem Keep sections
    xcopy "%VOCABULARY%\sections\*" "%VOCABULARY%\latest\sections" /s /e /i /y

    rem Copy from latest
    del "%VOCABULARY%\latest\*.md"
    xcopy "%VOCABULARY%\latest\*" "%VOCABULARY%\%RELEASE%" /s /e /i /y
)