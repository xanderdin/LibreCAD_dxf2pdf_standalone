list(APPEND ${PROJECT_NAME}_SRCS

    ${LC_SRC}/main/main.h
    ${LC_SRC}/main/main.cpp
    ${LC_SRC}/main/emu_c99.h
    ${LC_SRC}/main/emu_c99.cpp

    ${LC_SRC}/main/console_dxf2pdf/pdf_print_loop.h
    ${LC_SRC}/main/console_dxf2pdf/pdf_print_loop.cpp
    ${LC_SRC}/main/console_dxf2pdf/console_dxf2pdf.h
    ${LC_SRC}/main/console_dxf2pdf/console_dxf2pdf.cpp

    ${LC_SRC}/lib/printing/lc_printing.h
    ${LC_SRC}/lib/printing/lc_printing.cpp

    ${LC_SRC}/lib/math/rs_math.h
    ${LC_SRC}/lib/math/rs_math.cpp
    ${LC_SRC}/lib/math/lc_quadratic.h
    ${LC_SRC}/lib/math/lc_quadratic.cpp

    ${LC_SRC}/lib/information/rs_locale.h
    ${LC_SRC}/lib/information/rs_locale.cpp
    ${LC_SRC}/lib/information/rs_information.h
    ${LC_SRC}/lib/information/rs_information.cpp
    ${LC_SRC}/lib/information/rs_infoarea.h
    ${LC_SRC}/lib/information/rs_infoarea.cpp

    ${LC_SRC}/lib/gui/rs_staticgraphicview.h
    ${LC_SRC}/lib/gui/rs_staticgraphicview.cpp
    ${LC_SRC}/lib/gui/rs_painterqt.h
    ${LC_SRC}/lib/gui/rs_painterqt.cpp
    ${LC_SRC}/lib/gui/rs_painter.h
    ${LC_SRC}/lib/gui/rs_painter.cpp
    ${LC_SRC}/lib/gui/rs_linetypepattern.h
    ${LC_SRC}/lib/gui/rs_linetypepattern.cpp
    ${LC_SRC}/lib/gui/rs_grid.h
    ${LC_SRC}/lib/gui/rs_grid.cpp
    ${LC_SRC}/lib/gui/rs_graphicview.h
    ${LC_SRC}/lib/gui/rs_graphicview.cpp

    ${LC_SRC}/lib/filters/rs_filterinterface.h
    ${LC_SRC}/lib/filters/rs_filterdxfrw.h
    ${LC_SRC}/lib/filters/rs_filterdxfrw.cpp

    ${LC_SRC}/lib/fileio/rs_fileio.h
    ${LC_SRC}/lib/fileio/rs_fileio.cpp

    ${LC_SRC}/lib/engine/rs_vector.h
    ${LC_SRC}/lib/engine/rs_vector.cpp
    ${LC_SRC}/lib/engine/rs_variable.h
    ${LC_SRC}/lib/engine/rs_variabledict.h
    ${LC_SRC}/lib/engine/rs_variabledict.cpp
    ${LC_SRC}/lib/engine/rs_utility.h
    ${LC_SRC}/lib/engine/rs_utility.cpp
    ${LC_SRC}/lib/engine/rs_units.h
    ${LC_SRC}/lib/engine/rs_units.cpp
    ${LC_SRC}/lib/engine/rs_undo.h
    ${LC_SRC}/lib/engine/rs_undocycle.h
    ${LC_SRC}/lib/engine/rs_undocycle.cpp
    ${LC_SRC}/lib/engine/rs_undo.cpp
    ${LC_SRC}/lib/engine/rs_undoable.h
    ${LC_SRC}/lib/engine/rs_undoable.cpp
    ${LC_SRC}/lib/engine/rs_text.h
    ${LC_SRC}/lib/engine/rs_text.cpp
    ${LC_SRC}/lib/engine/rs_system.h
    ${LC_SRC}/lib/engine/rs_system.cpp
    ${LC_SRC}/lib/engine/rs_spline.h
    ${LC_SRC}/lib/engine/rs_spline.cpp
    ${LC_SRC}/lib/engine/rs_solid.h
    ${LC_SRC}/lib/engine/rs_solid.cpp
    ${LC_SRC}/lib/engine/rs_settings.h
    ${LC_SRC}/lib/engine/rs_settings.cpp
    ${LC_SRC}/lib/engine/rs_polyline.h
    ${LC_SRC}/lib/engine/rs_polyline.cpp
    ${LC_SRC}/lib/engine/rs_point.h
    ${LC_SRC}/lib/engine/rs_point.cpp
    ${LC_SRC}/lib/engine/rs_pen.h
    ${LC_SRC}/lib/engine/rs_pen.cpp
    ${LC_SRC}/lib/engine/rs_patternlist.h
    ${LC_SRC}/lib/engine/rs_patternlist.cpp
    ${LC_SRC}/lib/engine/rs_pattern.h
    ${LC_SRC}/lib/engine/rs_pattern.cpp
    ${LC_SRC}/lib/engine/rs_overlayline.h
    ${LC_SRC}/lib/engine/rs_overlayline.cpp
    ${LC_SRC}/lib/engine/rs_overlaybox.h
    ${LC_SRC}/lib/engine/rs_overlaybox.cpp
    ${LC_SRC}/lib/engine/rs_mtext.h
    ${LC_SRC}/lib/engine/rs_mtext.cpp
    ${LC_SRC}/lib/engine/rs_line.h
    ${LC_SRC}/lib/engine/rs_line.cpp
    ${LC_SRC}/lib/engine/rs_leader.h
    ${LC_SRC}/lib/engine/rs_leader.cpp
    ${LC_SRC}/lib/engine/rs_layerlistlistener.h
    ${LC_SRC}/lib/engine/rs_layerlist.h
    ${LC_SRC}/lib/engine/rs_layerlist.cpp
    ${LC_SRC}/lib/engine/rs_layer.h
    ${LC_SRC}/lib/engine/rs_layer.cpp
    ${LC_SRC}/lib/engine/rs_insert.h
    ${LC_SRC}/lib/engine/rs_insert.cpp
    ${LC_SRC}/lib/engine/rs_image.h
    ${LC_SRC}/lib/engine/rs_image.cpp
    ${LC_SRC}/lib/engine/rs_hatch.h
    ${LC_SRC}/lib/engine/rs_hatch.cpp
    ${LC_SRC}/lib/engine/rs.h
    ${LC_SRC}/lib/engine/rs_graphic.h
    ${LC_SRC}/lib/engine/rs_graphic.cpp
    ${LC_SRC}/lib/engine/rs_fontlist.h
    ${LC_SRC}/lib/engine/rs_fontlist.cpp
    ${LC_SRC}/lib/engine/rs_font.h
    ${LC_SRC}/lib/engine/rs_font.cpp
    ${LC_SRC}/lib/engine/rs_fontchar.h
    ${LC_SRC}/lib/engine/rs_flags.h
    ${LC_SRC}/lib/engine/rs_flags.cpp
    ${LC_SRC}/lib/engine/rs_entity.h
    ${LC_SRC}/lib/engine/rs_entity.cpp
    ${LC_SRC}/lib/engine/rs_entitycontainer.h
    ${LC_SRC}/lib/engine/rs_entitycontainer.cpp
    ${LC_SRC}/lib/engine/rs_ellipse.h
    ${LC_SRC}/lib/engine/rs_ellipse.cpp
    ${LC_SRC}/lib/engine/rs_document.h
    ${LC_SRC}/lib/engine/rs_document.cpp
    ${LC_SRC}/lib/engine/rs_dimradial.h
    ${LC_SRC}/lib/engine/rs_dimradial.cpp
    ${LC_SRC}/lib/engine/rs_dimlinear.h
    ${LC_SRC}/lib/engine/rs_dimlinear.cpp
    ${LC_SRC}/lib/engine/rs_dimension.h
    ${LC_SRC}/lib/engine/rs_dimension.cpp
    ${LC_SRC}/lib/engine/rs_dimdiametric.h
    ${LC_SRC}/lib/engine/rs_dimdiametric.cpp
    ${LC_SRC}/lib/engine/rs_dimangular.h
    ${LC_SRC}/lib/engine/rs_dimangular.cpp
    ${LC_SRC}/lib/engine/rs_dimaligned.h
    ${LC_SRC}/lib/engine/rs_dimaligned.cpp
    ${LC_SRC}/lib/engine/rs.cpp
    ${LC_SRC}/lib/engine/rs_constructionline.h
    ${LC_SRC}/lib/engine/rs_constructionline.cpp
    ${LC_SRC}/lib/engine/rs_color.h
    ${LC_SRC}/lib/engine/rs_color.cpp
    ${LC_SRC}/lib/engine/rs_clipboard.h
    ${LC_SRC}/lib/engine/rs_clipboard.cpp
    ${LC_SRC}/lib/engine/rs_circle.h
    ${LC_SRC}/lib/engine/rs_circle.cpp
    ${LC_SRC}/lib/engine/rs_blocklistlistener.h
    ${LC_SRC}/lib/engine/rs_blocklist.h
    ${LC_SRC}/lib/engine/rs_blocklist.cpp
    ${LC_SRC}/lib/engine/rs_block.h
    ${LC_SRC}/lib/engine/rs_block.cpp
    ${LC_SRC}/lib/engine/rs_atomicentity.h
    ${LC_SRC}/lib/engine/rs_atomicentity.cpp
    ${LC_SRC}/lib/engine/rs_arc.h
    ${LC_SRC}/lib/engine/rs_arc.cpp
    ${LC_SRC}/lib/engine/lc_splinepoints.h
    ${LC_SRC}/lib/engine/lc_splinepoints.cpp
    ${LC_SRC}/lib/engine/lc_rect.h
    ${LC_SRC}/lib/engine/lc_rect.cpp
    ${LC_SRC}/lib/engine/lc_hyperbola.h
    ${LC_SRC}/lib/engine/lc_hyperbola.cpp

    ${LC_SRC}/lib/debug/rs_debug.h
    ${LC_SRC}/lib/debug/rs_debug.cpp
)
