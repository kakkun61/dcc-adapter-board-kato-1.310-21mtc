import pcbnew
import sys

projectName = sys.argv[1]
board = pcbnew.LoadBoard(projectName + ".kicad_pcb")
plotController = pcbnew.PLOT_CONTROLLER(board)

layerInfos = [
  { "name": "B_Adhesive", "object": pcbnew.B_Adhes },
  { "name": "B_Courtyard", "object": pcbnew.B_CrtYd },
  { "name": "B_Cu", "object": pcbnew.B_Cu },
  { "name": "B_Fab", "object": pcbnew.B_Fab },
  { "name": "B_Mask", "object": pcbnew.B_Mask },
  { "name": "B_Paste", "object": pcbnew.B_Paste },
  { "name": "B_Silkscreen", "object": pcbnew.B_SilkS },
  { "name": "Edge_Cuts", "object": pcbnew.Edge_Cuts },
  { "name": "F_Adhesive", "object": pcbnew.F_Adhes },
  { "name": "F_Courtyard", "object": pcbnew.F_CrtYd },
  { "name": "F_Cu", "object": pcbnew.F_Cu },
  { "name": "F_Fab", "object": pcbnew.F_Fab },
  { "name": "F_Mask", "object": pcbnew.F_Mask },
  { "name": "F_Paste", "object": pcbnew.F_Paste },
  { "name": "F_Silkscreen", "object": pcbnew.F_SilkS },
  { "name": "Margin", "object": pcbnew.Margin },
]

for layerInfo in layerInfos:
  plotController.SetLayer(layerInfo["object"])
  plotController.OpenPlotfile(layerInfo["name"], pcbnew.PLOT_FORMAT_GERBER)
  plotController.PlotLayer()
  plotController.ClosePlot()

drillWriter = pcbnew.EXCELLON_WRITER(board)
drillWriter.CreateDrillandMapFilesSet(".", aGenDrill = True, aGenMap = False)
