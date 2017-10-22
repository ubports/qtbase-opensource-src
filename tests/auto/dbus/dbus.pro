TEMPLATE=subdirs

# Run this test first
SUBDIRS=\
           qdbusconnection_delayed

SUBDIRS+=\
           qdbusconnection_no_bus \
           qdbusmetaobject \
           qdbusmetatype \
           qdbustype \

!contains(QT_CONFIG,private_tests): SUBDIRS -= \
           qdbusmarshall \

