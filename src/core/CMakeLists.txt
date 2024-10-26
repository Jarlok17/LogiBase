set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Widgets Qml Quick)

set(PROJECT_SOURCES
    main.cpp
    qml/core.qrc
    qml/Menu/menu.qrc
)

qt_add_executable(core
    MANUAL_FINALIZATION
    ${PROJECT_SOURCES}
)

target_link_libraries(core PRIVATE Qt6::Core Qt6::Widgets Qt6::Quick)

set_target_properties(core PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin
    OUTPUT_NAME "LogiBase"
)

qt_finalize_executable(core)
