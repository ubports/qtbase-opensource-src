TEMPLATE=subdirs
SUBDIRS=\
   qabstracttextdocumentlayout \
   qcssparser \
   qfont \
   qfontcache \
   qfontdatabase \
   qfontmetrics \
   qglyphrun \
   qrawfont \
   qsyntaxhighlighter \
   qtextblock \
   qtextcursor \
   qtextdocument \
   qtextdocumentfragment \
   qtextdocumentlayout \
   qtextformat \
   qtextlayout \
   qtextlist \
   qtextobject \
   qtextpiecetable \
   qtextscriptengine \
   qtexttable \

contains(QT_CONFIG, OdfWriter):SUBDIRS += qzip qtextodfwriter

win32:SUBDIRS -= qtextpiecetable

!contains(QT_CONFIG, private_tests): SUBDIRS -= \
           qfontcache \
           qcssparser \
           qtextlayout \
           qtextpiecetable \
