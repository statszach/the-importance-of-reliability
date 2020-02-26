# Create a node data frame
ndf <-
  create_node_df(
    n = 6,
    label = c("latent", "i1", "i2", "i3", "i4", "i5"),
    type  = "lower",
    style = "filled",
    color = "aqua",
    shape = c("circle", 
              "rectangle", "rectangle","rectangle","rectangle","rectangle"),
    data = c(5, 1, 1, 1, 1, 1)
  )

edf <-
  create_edge_df(
    from = c(2, 3, 4, 5, 6),
    to   = c(1, 1, 1, 1, 1),
    rel  = "leading_to"
  )

graph <-
  create_graph(
    nodes_df = ndf,
    edges_df = edf
  ) %>%
  set_node_attrs(
    node_attr = "fontname",
    values = "Helvetica"
  ) %>%
  set_edge_attrs(
    edge_attr = "color",
    values = "blue"
  ) %>%
  set_edge_attrs(
    edge_attr = "arrowsize",
    values = 2
  )

graph %>% render_graph()

#########################

grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]

  # several 'node' statements
  node [shape = box,
        fontname = Helvetica]
  1; 2; 3; 4; 5
  6; 7; 8; 9; 10;

  node [shape = circle,
        fixedsize = true,
        width = 0.9] 
  Eta1 [pos = '1, 0!']
  Eta2 [pos = '-1, 0!'] 
  Theta

  # several 'edge' statements
Eta1->1 Eta1->2 Eta1->3 Eta1->4 Eta1->5
Eta2->6 Eta2->7 Eta2->8 Eta2->9 Eta2->10

Eta1 -> Eta2

Theta -> Eta1
Theta -> Eta2

Eta1 -> Eta1 [label = '&Psi;&#x2081;']
Eta2 -> Eta2 [label = '&Psi;&#x2082;']
Theta -> Theta [label = '&Psi;&#x208&theta;']

}
")