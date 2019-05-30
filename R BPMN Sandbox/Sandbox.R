

library(bpmn)

bpmn_file <- system.file("examples/qr-code.bpmn", package = "bpmn")
# bpmn_file <- system.file("xml/Excerpt from BPMN Example.xml", package = "bpmn")

library(xml2)
elements <- bpmn_get_elements(read_xml(bpmn_file))

library(htmlTable)

result <- append(bpmn(bpmn_file),elements)
# print(htmlTable(result, align = "lll", rnames = FALSE, css.class = "table"))
print(bpmn(bpmn_file))
# print(bpmn(bpmn_file), 
#     htmlTable(elements, align = "lll", rnames = FALSE, css.class = "table")
# )
