
cs_plot(full_rdbox,top_box2,control_box2)
  cs_legend("Full Foam Insulation (R&D Box)", "Roof Insulation (Box 2)", "Standard Reflectix (Box 2)", title="Insulation Comparisons")
  
cs_plot(full_rdbox,top_box1,control_box1)
  cs_legend("Full Foam Insulation (R&D Box)", "Roof Insulation (Box 1)", "Standard Reflectix (Box 1)", title="Insulation Comparisons")

cs_plot(control_box4,control_box1,control_box2)
  cs_legend("Box 4 Control", "Box 1 Control", "Box 2 Control", title="Control Comparisons")
  
cs_plot(top_box1, control_box1)

cs_plot(top_box2, control_box2)

cs_plot(top_box2,top_box1,top_rdbox)

cs_plot(full_rdbox,full_rdbox2)

plot(control_box1$mins,control_box1$tempF, col ="red", ylim = c(65,170))
  points(control_box2$mins,control_box2$tempF, col = "red")
  points(control_box4$mins,control_box4$tempF, col = "red")
  points(top_box1$mins,top_box1$tempF, col = "blue")
  points(top_box2$mins,top_box2$tempF, col = "blue")
  points(top_rdbox$mins,top_rdbox$tempF, col = "blue")
  