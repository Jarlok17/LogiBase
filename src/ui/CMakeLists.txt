set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Qml Quick)

set(UI_SOURCES
    qml/ui.qrc
)

add_library(ui STATIC ${UI_SOURCES})

target_link_libraries(ui PRIVATE Qt6::Core Qt6::Qml Qt6::Quick)

