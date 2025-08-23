
Technology	{
		name				= ""
		date				= "Oct  5 2021"
		dielectric			= 3.45e-05
		unitTimeName			= "ns"
		timePrecision			= 1000
		unitLengthName			= "micron"
		lengthPrecision			= 2000
		gridResolution			= 10
		unitVoltageName			= "V"
		voltagePrecision		= 1000000
		unitCurrentName			= "mA"
		currentPrecision		= 1000000
		unitPowerName			= "mw"
		powerPrecision			= 1000000
		unitResistanceName		= "kohm"
		resistancePrecision		= 1000000
		unitCapacitanceName		= "pf"
		capacitancePrecision		= 1000000
		unitInductanceName		= "nh"
		inductancePrecision		= 100
		minBaselineTemperature		= 25
		nomBaselineTemperature		= 25
		maxBaselineTemperature		= 25
		fatWireViaKeepoutMode		= 1
}

Color		27 {
		name				= "27"
		rgbDefined			= 1
		redIntensity			= 90
		greenIntensity			= 175
		blueIntensity			= 255
}

Color		43 {
		name				= "43"
		rgbDefined			= 1
		redIntensity			= 180
		greenIntensity			= 175
		blueIntensity			= 255
}

Tile		"unit" {
		width				= 0.56
		height				= 3.92
}

Layer		"Pwell" {
		layerNumber			= 1
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"Nwell" {
		layerNumber			= 2
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"Poly2" {
		layerNumber			= 3
		maskName			= "poly"
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"CON" {
		layerNumber			= 4
		maskName			= "polyCont"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "27"
		lineStyle			= "solid"
		pattern				= "solid"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

Layer		"Metal1" {
		layerNumber			= 5
		maskName			= "metal1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "cyan"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.56
		defaultWidth			= 0.23
		minWidth			= 0.23
		minSpacing			= 0.23
		unitMinResistance		= 9e-05
		unitNomResistance		= 9e-05
		unitMaxResistance		= 9e-05
		unitMinCapacitance		= 0.0004
		unitNomCapacitance		= 0.0004
		unitMaxCapacitance		= 0.0004
		unitMinThickness		= 0.54
		unitNomThickness		= 0.54
		unitMaxThickness		= 0.54
		fatTblDimension			= 2
		fatTblThreshold			= (0,10.005)
		fatTblSpacing			= (0.23,0.3,
						   0.3,0.3)
		minArea				= 0.1444
}

Layer		"Via1" {
		layerNumber			= 6
		maskName			= "via1"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "43"
		lineStyle			= "solid"
		pattern				= "rectangleX"
		pitch				= 0
		defaultWidth			= 0.26
		minWidth			= 0.26
		minSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

Layer		"Metal2" {
		layerNumber			= 7
		maskName			= "metal2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "yellow"
		lineStyle			= "solid"
		pattern				= "dot"
		pitch				= 0.56
		defaultWidth			= 0.28
		minWidth			= 0.28
		minSpacing			= 0.28
		unitMinResistance		= 9e-05
		unitNomResistance		= 9e-05
		unitMaxResistance		= 9e-05
		unitMinCapacitance		= 0.0003
		unitNomCapacitance		= 0.0003
		unitMaxCapacitance		= 0.0003
		unitMinThickness		= 0.54
		unitNomThickness		= 0.54
		unitMaxThickness		= 0.54
		fatTblDimension			= 2
		fatTblThreshold			= (0,10.005)
		fatTblSpacing			= (0.28,0.3,
						   0.3,0.3)
		minArea				= 0.1444
}

Layer		"Via2" {
		layerNumber			= 8
		maskName			= "via2"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "blue"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0.26
		minWidth			= 0.26
		minSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
		minCutsTblSize			= 1
		minCutsTbl			= (4,*,-1.000,1.791,-1.000000,-1.000)
}

Layer		"Metal3" {
		layerNumber			= 9
		maskName			= "metal3"
		isDefaultLayer			= 1
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "red"
		lineStyle			= "solid"
		pattern				= "wave"
		pitch				= 4
		defaultWidth			= 2.2
		minWidth			= 2.2
		minSpacing			= 1.8
		unitMinResistance		= 4e-05
		unitNomResistance		= 4e-05
		unitMaxResistance		= 4e-05
		unitMinCapacitance		= 0.00028
		unitNomCapacitance		= 0.00028
		unitMaxCapacitance		= 0.00028
		unitMinThickness		= 3.035
		unitNomThickness		= 3.035
		unitMaxThickness		= 3.035
}

Layer		"PR_bndry" {
		layerNumber			= 11
		maskName			= ""
		visible				= 1
		selectable			= 1
		blink				= 0
		color				= "white"
		lineStyle			= "solid"
		pattern				= "blank"
		pitch				= 0
		defaultWidth			= 0
		minWidth			= 0
		minSpacing			= 0
}

ContactCode	"Via1_HH" {
		contactCodeNumber		= 1
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		isDefaultContact		= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_HV" {
		contactCodeNumber		= 2
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		isDefaultContact		= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_GEN_HH" {
		contactCodeNumber		= 3
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_GEN_HH_Enc" {
		contactCodeNumber		= 4
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_GEN_HV" {
		contactCodeNumber		= 5
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_GEN_HV_Enc" {
		contactCodeNumber		= 6
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_GEN_VH" {
		contactCodeNumber		= 7
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_GEN_VH_Enc" {
		contactCodeNumber		= 8
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_GEN_VV" {
		contactCodeNumber		= 9
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.01
		upperLayerEncHeight		= 0.06
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via1_GEN_VV_Enc" {
		contactCodeNumber		= 10
		cutLayer			= "Via1"
		lowerLayer			= "Metal1"
		upperLayer			= "Metal2"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.06
		upperLayerEncHeight		= 0.01
		lowerLayerEncWidth		= 0
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_GEN_HH" {
		contactCodeNumber		= 11
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.25
		upperLayerEncHeight		= 0.12
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_GEN_HH_Enc" {
		contactCodeNumber		= 12
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.12
		upperLayerEncHeight		= 0.25
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_GEN_HV" {
		contactCodeNumber		= 13
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.12
		upperLayerEncHeight		= 0.25
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_GEN_HV_Enc" {
		contactCodeNumber		= 14
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.25
		upperLayerEncHeight		= 0.12
		lowerLayerEncWidth		= 0.06
		lowerLayerEncHeight		= 0.01
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_GEN_VH" {
		contactCodeNumber		= 15
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.25
		upperLayerEncHeight		= 0.12
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_GEN_VH_Enc" {
		contactCodeNumber		= 16
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.12
		upperLayerEncHeight		= 0.25
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_GEN_VV" {
		contactCodeNumber		= 17
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.12
		upperLayerEncHeight		= 0.25
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_GEN_VV_Enc" {
		contactCodeNumber		= 18
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.25
		upperLayerEncHeight		= 0.12
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

ContactCode	"Via2_0" {
		contactCodeNumber		= 19
		cutLayer			= "Via2"
		lowerLayer			= "Metal2"
		upperLayer			= "Metal3"
		contactSourceType		= 5
		isFatContact			= 1
		cutWidth			= 0.26
		cutHeight			= 0.26
		upperLayerEncWidth		= 0.12
		upperLayerEncHeight		= 0.12
		lowerLayerEncWidth		= 0.01
		lowerLayerEncHeight		= 0.06
		minCutSpacing			= 0.26
		unitMinResistance		= 0.0045
		unitNomResistance		= 0.0045
		unitMaxResistance		= 0.0045
}

DesignRule	{
		layer1				= "Via2"
		layer2				= "Metal2"
		minSpacing			= 0
		minEnclosure			= 0
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "Via2"
		layer2				= "Metal3"
		minSpacing			= 0
		minEnclosure			= 0
		stackViaCenterSpacingThreshold	= 0
		fatWireViaKeepoutTblSize	= 2
		fatWireViaKeepoutWidthThreshold	= (0,2.5)
		fatWireViaSpacingThreshold	= (0,0)
		fatWireViaKeepoutEnclosure	= (0.25,0.12)
}

DesignRule	{
		layer1				= "Via1"
		layer2				= "Metal1"
		minSpacing			= 0
		minEnclosure			= 0
		stackViaCenterSpacingThreshold	= 0
}

DesignRule	{
		layer1				= "Via1"
		layer2				= "Metal2"
		minSpacing			= 0
		minEnclosure			= 0
		stackViaCenterSpacingThreshold	= 0
}

DensityRule	{
		layer				= "Metal1"
		windowSize			= 200
		minDensity			= 30
}

DensityRule	{
		layer				= "Metal2"
		windowSize			= 200
		minDensity			= 30
}

DensityRule	{
		layer				= "Metal3"
		windowSize			= 200
		minDensity			= 30
}
