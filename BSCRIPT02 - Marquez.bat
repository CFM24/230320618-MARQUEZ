@echo off
setlocal

:MENU
cls
echo Choose a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
choice /c 123 /m "Enter your choice:"
if errorlevel 3 goto QUADRILATERAL
if errorlevel 2 goto TRIANGLE
if errorlevel 1 goto CIRCLE

:CIRCLE
set /p radius=Enter the radius of the circle: 
set /a area=314*%radius%*%radius%/100
echo The area of the circle is %area% square units.
goto END

:TRIANGLE
set /p a=Enter the length of side a: 
set /p b=Enter the length of side b: 
set /p c=Enter the length of side c: 
rem Check if the sides form a valid triangle
set /a sum_ab=%a%+%b%
set /a sum_bc=%b%+%c%
set /a sum_ca=%c%+%a%

if %sum_ab% leq %c% (
    echo The lengths do not form a valid triangle.
    goto END
)
if %sum_bc% leq %a% (
    echo The lengths do not form a valid triangle.
    goto END
)
if %sum_ca% leq %b% (
    echo The lengths do not form a valid triangle.
    goto END
)

rem Simplified calculation for the area using an approximate method
set /a area=(%a% * %b%) / 2
echo The approximate area of the triangle is %area% square units.

rem Determine the type of triangle
if %a%==%b% if %b%==%c% (
    echo It is an equilateral triangle.
) else if %a%==%b% if not %b%==%c% (
    echo It is an isosceles triangle.
) else if %a%==%c% if not %c%==%b% (
    echo It is an isosceles triangle.
) else if %b%==%c% if not %c%==%a% (
    echo It is an isosceles triangle.
) else (
    echo It is a scalene triangle.
)
goto END

:QUADRILATERAL
set /p length=Enter the length: 
set /p width=Enter the width: 
set /a area=%length%*%width%
echo The area of the quadrilateral is %area% square units.
if %length%==%width% (
    echo It is a square.
) else (
    echo It is a rectangle.
)
goto END

:END
echo Task completed.
pause