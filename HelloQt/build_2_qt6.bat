cmake -S . -B ../../../HelloQt6_build -DCMAKE_BUILD_TYPE=Release  -DUSE_QT6=true  -DCMAKE_PREFIX_PATH="D:/app/Qt6/6.7.3/msvc2022_64/lib/cmake"
cmake --build ../../../HelloQt6_build --config Release
D:/app/Qt6/6.7.3/msvc2022_64/bin/windeployqt.exe --qmldir ../../../HelloQt6_build/Release/ ../../../HelloQt6_build/Release/HelloQt.exe