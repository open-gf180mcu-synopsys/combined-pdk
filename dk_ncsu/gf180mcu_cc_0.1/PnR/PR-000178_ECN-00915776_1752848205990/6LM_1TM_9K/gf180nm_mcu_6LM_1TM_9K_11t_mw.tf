

; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; cmos 180nm MCU Milkyway technology file
; based on Design Manual Spec: DM-000013 Rev13
;
; Stack 6LM_1TM_9K
; 11 track
;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This Techfile contains no Parasitic Information.
; The unit resistance and unit thickness values are not correct.
; USE Appropriate TLUplus files for Parasitic Extraction. 
;
; Preferred routing directions:
; vertical:   POLY2 MET2 MET4 MET6
; horizontal: MET1 MET3 MET5
; optimized for 11 track library with above prefered routing directions
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Technology      {                       
                name                            = "180nm_mcu_11TRACK_LIBRARY"
                date                            = "February 2018"
                unitTimeName                    = "ns"
                timePrecision                   = 1000
                unitLengthName                  = "micron"
                lengthPrecision                 = 1000
                gridResolution                  = 5
                unitVoltageName                 = "v"
                voltagePrecision                = 1000000
                unitCurrentName                 = "ma"
                currentPrecision                = 1000
                unitPowerName                   = "uw"
                powerPrecision                  = 100000
                unitResistanceName              = "kohm"
                resistancePrecision             = 10000000
                unitCapacitanceName             = "pf"
                capacitancePrecision            = 10000000
                unitInductanceName              = "nh"
                inductancePrecision             = 100
                minBaselineTemperature          = 25
                nomBaselineTemperature          = 25
                maxBaselineTemperature          = 25
                fatTblSpacingMode               = 1
                minEdgeMode                     = 1
                fatTblMinEnclosedAreaMode       = 1
                minAreaMode                     = 1
}

; ------------------------------------------------------------------------------------------

Color           1 {
                name                            = "POLY2_color"
                rgbDefined                      = 1
                redIntensity                    = 255
                greenIntensity                  = 175
                blueIntensity                   = 100
}

Color           2 {
                name                            = "M1_color"
                rgbDefined                      = 1
                redIntensity                    = 180
                greenIntensity                  = 0
                blueIntensity                   = 0
}

Color           3 {
                name                            = "M2_color"
                rgbDefined                      = 1
                redIntensity                    = 0
                greenIntensity                  = 180
                blueIntensity                   = 180
}


Color           4 {
                name                            = "M3_color"
                rgbDefined                      = 1
                redIntensity                    = 160
                greenIntensity                  = 32
                blueIntensity                   = 240
}

Color           5 {
                name                            = "M4_color"
                rgbDefined                      = 1
                redIntensity                    = 255
                greenIntensity                  = 80
                blueIntensity                   = 190
}

Color           6 {
                name                            = "M5_color"
                rgbDefined                      = 1
                redIntensity                    = 90
                greenIntensity                  = 175
                blueIntensity                   = 100
}


Color           7 {
                name                            = "M6_color"
                rgbDefined                      = 1
                redIntensity                    = 150
                greenIntensity                  = 150
                blueIntensity                   = 0
}


Color           8 {
                name                            = "M7_color"
                rgbDefined                      = 1
                redIntensity                    = 0
                greenIntensity                  = 0
                blueIntensity                   = 200
}

Color           9 {
                name                            = "M8_color"
                rgbDefined                      = 1
                redIntensity                    = 0
                greenIntensity                  = 255
                blueIntensity                   = 190
}



Color           10 {
                name                            = "M9_color"
                rgbDefined                      = 1
                redIntensity                    = 90
                greenIntensity                  = 0
                blueIntensity                   = 100
}

Color           11 {
                name                            = "M10_color"
                rgbDefined                      = 1
                redIntensity                    = 255
                greenIntensity                  = 255
                blueIntensity                   = 190
}

Color           12 {
                name                            = "M11_color"
                rgbDefined                      = 1
                redIntensity                    = 255
                greenIntensity                  = 175
                blueIntensity                   = 190
}



Tile            "unit" {
                width                           = 0.56
                height                          = 6.16
}





; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; POLY2
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Layer           "POLY2" {
     layerNumber             = 30
     maskName                = "poly2"
     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0
     color                   = "POLY2_color"
     lineStyle               = "solid"
     pattern                 = "dot"
     pitch                   = 0.56
     defaultWidth            = 0.28     
     minWidth                = 0.24    
     minSpacing              = 0.24     
     maxSegLenForRC          = 2000  
     minArea                 = 0.1444  

     unitMinThickness        = 0.18
     unitNomThickness        = 0.20
     unitMaxThickness        = 0.22

}

LayerDataType "POLY2_LABEL" {

  dataTypeNumber = 10
  layerNumber = 30 
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = "solid"
  pattern = "blank"
  color = "POLY2_color"
}


; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; CONT 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Layer		"CONT" {
     layerNumber             = 33

      maskName                = "polyCont"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0

     color                   = "POLY2_color"

     lineStyle               = "solid"
     pattern                 = "blank"

     pitch		     = 0.56



 	defaultWidth            = 0.22 /* Vn.1  */
     	minWidth                = 0.22 /* Vn.1  */
    	minSpacing              = 0.25 /* Vn.2a */ 
	enclosedCutNumNeighbor          = 2
	enclosedCutNeighborRange        = 0.472
	enclosedCutMinSpacing           = 0.25
	enclosedCutToNeighborMinSpacing = 0.25

}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MET1 - 1x
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Layer           "MET1" {
     layerNumber             = 34

     maskName                = "metal1"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0
     color		     = M1_color
     lineStyle               = "solid"
     pattern                 = "dot"
     pitch                   = 0.56
     defaultWidth            = 0.23     /* Mn.1  */
     minWidth                = 0.23     /* Mn.1  */
     minSpacing              = 0.23     /* Mn.2a */
     maxSegLenForRC          = 2000  

     /* Mn.2b */
     fatTblDimension         = 2
     fatTblThreshold         = (0, 10.005)
     fatTblSpacing           = (0.230, 0.300,
                                0.300, 0.300)

     minArea                 = 0.1444   /* Mn.3 */
   


     unitMinResistance       = 7.6e-05
     unitNomResistance       = 9.0e-05
     unitMaxResistance       = 10.4e-05
     unitMinThickness        = 0.54
     unitNomThickness        = 0.54
     unitMaxThickness        = 0.54

}

LayerDataType "MET1_LABEL" {

  dataTypeNumber = 10
  layerNumber = 34 
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = "solid"
  pattern = "blank"
  color   = M1_color

}


; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; VIA12 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Layer		"VIA12" {
     layerNumber             = 35

     maskName                = "via1"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0

     color                   = "M1_color"

     lineStyle               = "solid"
     pattern                 = "blank"

     pitch		     = 0.56



 	defaultWidth            = 0.26 /* Vn.1  */
     	minWidth                = 0.26 /* Vn.1  */
    	minSpacing              = 0.26 /* Vn.2a */ 
	enclosedCutNumNeighbor          = 2
	enclosedCutNeighborRange        = 0.625
	enclosedCutMinSpacing           = 0.26
	enclosedCutToNeighborMinSpacing = 0.26




}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MET2 - 1x
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
Layer           "MET2" {
     layerNumber             = 36

     maskName                = "metal2"
     color                   = "M2_color"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0
     lineStyle               = "solid"
     pattern                 = "blank"

     pitch                   = 0.56
     defaultWidth            = 0.280  /* Mn.1  */
     minWidth                = 0.280  /* Mn.1  */
     minSpacing              = 0.280  /* Mn.2a */

     /* Mn.2b */
     fatTblDimension         = 2
     fatTblThreshold         = (0, 10.005)
     fatTblSpacing           = (0.280, 0.300,
                                0.300, 0.300)

     minArea                 = 0.1444 /* Mn.3 */
     maxSegLenForRC          = 2000

     fatWireThreshold	     = 10
     fatThinMinSpacing	     = 0.3
     fatFatMinSpacing	     = 0.3
     fatContactThreshold     = 3
     unitMinResistance       = 9e-5
     unitNomResistance       = 9e-5
     unitMaxResistance       = 9e-5
     unitMinCapacitance	     = 2.07e-05
     unitNomCapacitance	     = 2.07e-05
     unitMaxCapacitance	     = 2.07e-05
     unitMinSideWallCap	     = 7.4e-06
     unitNomSideWallCap	     = 7.4e-06
     unitMaxSideWallCap	     = 7.4e-06
     unitMinChannelCap	     = 2.07e-05
     unitNomChannelCap	     = 2.07e-05
     unitMaxChannelCap	     = 2.07e-05
     unitMinChannelSideCap   = 7.4e-06
     unitNomChannelSideCap   = 7.4e-06
     unitMaxChannelSideCap   = 7.4e-06
     unitMinThickness	     = 0.540
     unitNomThickness	     = 0.540
     unitMaxThickness	     = 0.540
}

LayerDataType "MET2_LABEL" {

  dataTypeNumber = 10
  layerNumber = 36 
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = "solid"
  pattern = "blank"

  color = "M2_color"

}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; VIA23 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Layer		"VIA23" {
     layerNumber             = 38

     maskName                = "via2"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0

     color                   = "M2_color"

     lineStyle               = "solid"
     pattern                 = "blank"

     pitch		     = 0.56



 	defaultWidth            = 0.26 /* Vn.1  */
     	minWidth                = 0.26 /* Vn.1  */
    	minSpacing              = 0.26 /* Vn.2a */ 
	enclosedCutNumNeighbor          = 2
	enclosedCutNeighborRange        = 0.625
	enclosedCutMinSpacing           = 0.26
	enclosedCutToNeighborMinSpacing = 0.26




}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MET3 - 1x
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
Layer           "MET3" {
     layerNumber             = 42

     maskName                = "metal3"
     color                   = "M3_color"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0
     lineStyle               = "solid"
     pattern                 = "blank"

     pitch                   = 0.56
     defaultWidth            = 0.280  /* Mn.1  */
     minWidth                = 0.280  /* Mn.1  */
     minSpacing              = 0.280  /* Mn.2a */

     /* Mn.2b */
     fatTblDimension         = 2
     fatTblThreshold         = (0, 10.005)
     fatTblSpacing           = (0.280, 0.300,
                                0.300, 0.300)

     minArea                 = 0.1444 /* Mn.3 */
     maxSegLenForRC          = 2000

     fatWireThreshold	     = 10
     fatThinMinSpacing	     = 0.3
     fatFatMinSpacing	     = 0.3
     fatContactThreshold     = 3
     unitMinResistance       = 9e-5
     unitNomResistance       = 9e-5
     unitMaxResistance       = 9e-5
     unitMinCapacitance	     = 2.07e-05
     unitNomCapacitance	     = 2.07e-05
     unitMaxCapacitance	     = 2.07e-05
     unitMinSideWallCap	     = 7.4e-06
     unitNomSideWallCap	     = 7.4e-06
     unitMaxSideWallCap	     = 7.4e-06
     unitMinChannelCap	     = 2.07e-05
     unitNomChannelCap	     = 2.07e-05
     unitMaxChannelCap	     = 2.07e-05
     unitMinChannelSideCap   = 7.4e-06
     unitNomChannelSideCap   = 7.4e-06
     unitMaxChannelSideCap   = 7.4e-06
     unitMinThickness	     = 0.540
     unitNomThickness	     = 0.540
     unitMaxThickness	     = 0.540
}

LayerDataType "MET3_LABEL" {

  dataTypeNumber = 10
  layerNumber = 42 
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = "solid"
  pattern = "blank"

  color = "M3_color"

}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; VIA34 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Layer		"VIA34" {
     layerNumber             = 40

     maskName                = "via3"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0

     color                   = "M3_color"

     lineStyle               = "solid"
     pattern                 = "blank"

     pitch		     = 0.56



 	defaultWidth            = 0.26 /* Vn.1  */
     	minWidth                = 0.26 /* Vn.1  */
    	minSpacing              = 0.26 /* Vn.2a */ 
	enclosedCutNumNeighbor          = 2
	enclosedCutNeighborRange        = 0.625
	enclosedCutMinSpacing           = 0.26
	enclosedCutToNeighborMinSpacing = 0.26




}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MET4 - 1x
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
Layer           "MET4" {
     layerNumber             = 46

     maskName                = "metal4"
     color                   = "M4_color"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0
     lineStyle               = "solid"
     pattern                 = "blank"

     pitch                   = 0.56
     defaultWidth            = 0.280  /* Mn.1  */
     minWidth                = 0.280  /* Mn.1  */
     minSpacing              = 0.280  /* Mn.2a */

     /* Mn.2b */
     fatTblDimension         = 2
     fatTblThreshold         = (0, 10.005)
     fatTblSpacing           = (0.280, 0.300,
                                0.300, 0.300)

     minArea                 = 0.1444 /* Mn.3 */
     maxSegLenForRC          = 2000

     fatWireThreshold	     = 10
     fatThinMinSpacing	     = 0.3
     fatFatMinSpacing	     = 0.3
     fatContactThreshold     = 3
     unitMinResistance       = 9e-5
     unitNomResistance       = 9e-5
     unitMaxResistance       = 9e-5
     unitMinCapacitance	     = 2.07e-05
     unitNomCapacitance	     = 2.07e-05
     unitMaxCapacitance	     = 2.07e-05
     unitMinSideWallCap	     = 7.4e-06
     unitNomSideWallCap	     = 7.4e-06
     unitMaxSideWallCap	     = 7.4e-06
     unitMinChannelCap	     = 2.07e-05
     unitNomChannelCap	     = 2.07e-05
     unitMaxChannelCap	     = 2.07e-05
     unitMinChannelSideCap   = 7.4e-06
     unitNomChannelSideCap   = 7.4e-06
     unitMaxChannelSideCap   = 7.4e-06
     unitMinThickness	     = 0.540
     unitNomThickness	     = 0.540
     unitMaxThickness	     = 0.540
}

LayerDataType "MET4_LABEL" {

  dataTypeNumber = 10
  layerNumber = 46 
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = "solid"
  pattern = "blank"

  color = "M4_color"

}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; VIA45 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Layer		"VIA45" {
     layerNumber             = 41

     maskName                = "via4"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0

     color                   = "M4_color"

     lineStyle               = "solid"
     pattern                 = "blank"

     pitch		     = 0.56



 	defaultWidth            = 0.26 /* Vn.1  */
     	minWidth                = 0.26 /* Vn.1  */
    	minSpacing              = 0.26 /* Vn.2a */ 
	enclosedCutNumNeighbor          = 2
	enclosedCutNeighborRange        = 0.625
	enclosedCutMinSpacing           = 0.26
	enclosedCutToNeighborMinSpacing = 0.26




}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MET5 - 1x
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
Layer           "MET5" {
     layerNumber             = 81

     maskName                = "metal5"
     color                   = "M5_color"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0
     lineStyle               = "solid"
     pattern                 = "blank"

     pitch                   = 0.56
     defaultWidth            = 0.280  /* Mn.1  */
     minWidth                = 0.280  /* Mn.1  */
     minSpacing              = 0.280  /* Mn.2a */

     /* Mn.2b */
     fatTblDimension         = 2
     fatTblThreshold         = (0, 10.005)
     fatTblSpacing           = (0.280, 0.300,
                                0.300, 0.300)

     minArea                 = 0.1444 /* Mn.3 */
     maxSegLenForRC          = 2000

     fatWireThreshold	     = 10
     fatThinMinSpacing	     = 0.3
     fatFatMinSpacing	     = 0.3
     fatContactThreshold     = 3
     unitMinResistance       = 9e-5
     unitNomResistance       = 9e-5
     unitMaxResistance       = 9e-5
     unitMinCapacitance	     = 2.07e-05
     unitNomCapacitance	     = 2.07e-05
     unitMaxCapacitance	     = 2.07e-05
     unitMinSideWallCap	     = 7.4e-06
     unitNomSideWallCap	     = 7.4e-06
     unitMaxSideWallCap	     = 7.4e-06
     unitMinChannelCap	     = 2.07e-05
     unitNomChannelCap	     = 2.07e-05
     unitMaxChannelCap	     = 2.07e-05
     unitMinChannelSideCap   = 7.4e-06
     unitNomChannelSideCap   = 7.4e-06
     unitMaxChannelSideCap   = 7.4e-06
     unitMinThickness	     = 0.540
     unitNomThickness	     = 0.540
     unitMaxThickness	     = 0.540
}

LayerDataType "MET5_LABEL" {

  dataTypeNumber = 10
  layerNumber = 81 
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = "solid"
  pattern = "blank"

  color = "M5_color"

}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; VIA56 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Layer		"VIA56" {
     layerNumber             = 82

     maskName                = "via5"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0

     color                   = "M5_color"

     lineStyle               = "solid"
     pattern                 = "blank"

     pitch		     = 0.56



 	defaultWidth            = 0.26 /* Vn.1  */
     	minWidth                = 0.26 /* Vn.1  */
    	minSpacing              = 0.26 /* Vn.2a */ 
	enclosedCutNumNeighbor          = 2
	enclosedCutNeighborRange        = 0.625
	enclosedCutMinSpacing           = 0.26
	enclosedCutToNeighborMinSpacing = 0.26




}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MET6 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Layer           "MET6" {
     layerNumber             = 53

     maskName                = "metal6"
     color                   = "M6_color"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0
     lineStyle               = "solid"
     pattern                 = "blank"




     pitch                   = 0.900
     defaultWidth            = 0.440  /* MT.1  */
     minWidth                = 0.440  /* MT.1  */
     minSpacing              = 0.460  /* MT.2a */

     minArea                 = 0.5625 /* MT.4 */
  


     /* MT.2b */
     fatTblDimension         = 2
     fatTblThreshold         = (0, 10.005)
     fatTblSpacing           = (0.460, 0.600,
                                0.600, 0.600)

     maxSegLenForRC          = 2000
	


     unitMinResistance       = 3.1e-05
     unitNomResistance       = 4.0e-05
     unitMaxResistance       = 4.9e-05
     unitMinThickness        = 0.99
     unitNomThickness        = 0.99
     unitMaxThickness        = 0.99

}
LayerDataType "MET6_LABEL" {

  dataTypeNumber = 10
  layerNumber = 53 
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = "solid"
  pattern = "blank"

   color                   = "M6_color"

}





Layer           "PR_bndry" {
                layerNumber                     = 1
                maskName                        = ""
                visible                         = 1
                selectable                      = 1
                blink                           = 0
                color                           = "cyan"
                lineStyle                       = "solid"
                pattern                         = "blank"
                pitch                           = 0
                defaultWidth                    = 0
                minWidth                        = 0
                minSpacing                      = 0
}



#------------------------------------------------------------
#  CONT VIA SECTION 
#------------------------------------------------------------
;ContactCode	"CONT1" {
;                contactCodeNumber		= 1
;                cutLayer			= "CONT"
;                lowerLayer			= "POLY2"
;                upperLayer			= "MET1"
;                isDefaultContact		= 1
;                cutWidth			= 0.220
;                cutHeight			= 0.220
;                upperLayerEncWidth		= 0.050		
;                upperLayerEncHeight		= 0.050
;                lowerLayerEncWidth		= 0.070
;                lowerLayerEncHeight		= 0.070
;
;                unitMinResistance               = 0.0045
;               unitNomResistance               = 0.0045
;                unitMaxResistance               = 0.0150
;
;               
;
;
;                minCutSpacing			= 0.250	 
;		maxNumRowsNonTurning		= 3
;
;}
;
;ContactCode	"CONT1_x_HH" {
;                contactCodeNumber		= 17
;                cutLayer			= "CONT"
;                lowerLayer			= "POLY2"
;                upperLayer			= "MET1"
;                isDefaultContact		= 1
;                cutWidth			= 0.220
;                cutHeight			= 0.220
;                upperLayerEncWidth		= 0.060		
;                upperLayerEncHeight		= 0.060
;                lowerLayerEncWidth		= 0.070
;                lowerLayerEncHeight		= 0.070
;
;                unitMinResistance               = 0.0045
;                unitNomResistance               = 0.0045
;                unitMaxResistance               = 0.0150
;
;               
;
;
;                minNumRows                      = 4 
;               minNumCols                      = 4
;                minCutSpacing			= 0.36
;
;}

#------------------------------------------------------------
#  VIA12 VIA SECTION 
#------------------------------------------------------------
ContactCode	"V12A" {
                contactCodeNumber		= 2
                cutLayer			= "VIA12"
                lowerLayer			= "MET1"
                upperLayer			= "MET2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.000

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.260	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V12B" {
                contactCodeNumber		= 3
                cutLayer			= "VIA12"
                lowerLayer			= "MET1"
                upperLayer			= "MET2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.000

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.260	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V12_fat" {
                contactCodeNumber		= 4
                cutLayer			= "VIA12"
                lowerLayer			= "MET1"
                upperLayer			= "MET2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.360	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"VIA12_x_HH" {
                contactCodeNumber		= 18
                cutLayer			= "VIA12"
                lowerLayer			= "MET1"
                upperLayer			= "MET2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.000

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA12_x_HV" {
                contactCodeNumber		= 19
                cutLayer			= "VIA12"
                lowerLayer			= "MET1"
                upperLayer			= "MET2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.000

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA12_x_VH" {
                contactCodeNumber		= 20
                cutLayer			= "VIA12"
                lowerLayer			= "MET1"
                upperLayer			= "MET2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.000
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA12_x_VV" {
                contactCodeNumber		= 21
                cutLayer			= "VIA12"
                lowerLayer			= "MET1"
                upperLayer			= "MET2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.000
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

#------------------------------------------------------------
#  VIA23 VIA SECTION 
#------------------------------------------------------------
ContactCode	"V23A" {
                contactCodeNumber		= 5
                cutLayer			= "VIA23"
                lowerLayer			= "MET2"
                upperLayer			= "MET3"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.260	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V23B" {
                contactCodeNumber		= 6
                cutLayer			= "VIA23"
                lowerLayer			= "MET2"
                upperLayer			= "MET3"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.260	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V23_fat" {
                contactCodeNumber		= 7
                cutLayer			= "VIA23"
                lowerLayer			= "MET2"
                upperLayer			= "MET3"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.360	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"VIA23_x_HH" {
                contactCodeNumber		= 22
                cutLayer			= "VIA23"
                lowerLayer			= "MET2"
                upperLayer			= "MET3"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA23_x_HV" {
                contactCodeNumber		= 23
                cutLayer			= "VIA23"
                lowerLayer			= "MET2"
                upperLayer			= "MET3"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA23_x_VH" {
                contactCodeNumber		= 24
                cutLayer			= "VIA23"
                lowerLayer			= "MET2"
                upperLayer			= "MET3"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA23_x_VV" {
                contactCodeNumber		= 25
                cutLayer			= "VIA23"
                lowerLayer			= "MET2"
                upperLayer			= "MET3"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

#------------------------------------------------------------
#  VIA34 VIA SECTION 
#------------------------------------------------------------
ContactCode	"V34A" {
                contactCodeNumber		= 8
                cutLayer			= "VIA34"
                lowerLayer			= "MET3"
                upperLayer			= "MET4"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.260	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V34B" {
                contactCodeNumber		= 9
                cutLayer			= "VIA34"
                lowerLayer			= "MET3"
                upperLayer			= "MET4"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.260	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V34_fat" {
                contactCodeNumber		= 10
                cutLayer			= "VIA34"
                lowerLayer			= "MET3"
                upperLayer			= "MET4"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.360	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"VIA34_x_HH" {
                contactCodeNumber		= 26
                cutLayer			= "VIA34"
                lowerLayer			= "MET3"
                upperLayer			= "MET4"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA34_x_HV" {
                contactCodeNumber		= 27
                cutLayer			= "VIA34"
                lowerLayer			= "MET3"
                upperLayer			= "MET4"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA34_x_VH" {
                contactCodeNumber		= 28
                cutLayer			= "VIA34"
                lowerLayer			= "MET3"
                upperLayer			= "MET4"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA34_x_VV" {
                contactCodeNumber		= 29
                cutLayer			= "VIA34"
                lowerLayer			= "MET3"
                upperLayer			= "MET4"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

#------------------------------------------------------------
#  VIA45 VIA SECTION 
#------------------------------------------------------------
ContactCode	"V45A" {
                contactCodeNumber		= 11
                cutLayer			= "VIA45"
                lowerLayer			= "MET4"
                upperLayer			= "MET5"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.260	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V45B" {
                contactCodeNumber		= 12
                cutLayer			= "VIA45"
                lowerLayer			= "MET4"
                upperLayer			= "MET5"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.260	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V45_fat" {
                contactCodeNumber		= 13
                cutLayer			= "VIA45"
                lowerLayer			= "MET4"
                upperLayer			= "MET5"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.360	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"VIA45_x_HH" {
                contactCodeNumber		= 30
                cutLayer			= "VIA45"
                lowerLayer			= "MET4"
                upperLayer			= "MET5"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA45_x_HV" {
                contactCodeNumber		= 31
                cutLayer			= "VIA45"
                lowerLayer			= "MET4"
                upperLayer			= "MET5"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA45_x_VH" {
                contactCodeNumber		= 32
                cutLayer			= "VIA45"
                lowerLayer			= "MET4"
                upperLayer			= "MET5"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA45_x_VV" {
                contactCodeNumber		= 33
                cutLayer			= "VIA45"
                lowerLayer			= "MET4"
                upperLayer			= "MET5"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

#------------------------------------------------------------
#  VIA56 VIA SECTION 
#------------------------------------------------------------
ContactCode	"V56A" {
                contactCodeNumber		= 14
                cutLayer			= "VIA56"
                lowerLayer			= "MET5"
                upperLayer			= "MET6"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.050		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.050

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.360	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V56B" {
                contactCodeNumber		= 15
                cutLayer			= "VIA56"
                lowerLayer			= "MET5"
                upperLayer			= "MET6"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.050		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.050
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.360	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"V56_fat" {
                contactCodeNumber		= 16
                cutLayer			= "VIA56"
                lowerLayer			= "MET5"
                upperLayer			= "MET6"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.060		
                upperLayerEncHeight		= 0.060
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minCutSpacing			= 0.360	 
		maxNumRowsNonTurning		= 3

}

ContactCode	"VIA56_x_HH" {
                contactCodeNumber		= 34
                cutLayer			= "VIA56"
                lowerLayer			= "MET5"
                upperLayer			= "MET6"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.090		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

                maxNumRows                      = 3	       
                viaFarmSpacing                  = 0.365 


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA56_x_HV" {
                contactCodeNumber		= 35
                cutLayer			= "VIA56"
                lowerLayer			= "MET5"
                upperLayer			= "MET6"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.090
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

                maxNumRows                      = 3	       
                viaFarmSpacing                  = 0.365 


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA56_x_VH" {
                contactCodeNumber		= 36
                cutLayer			= "VIA56"
                lowerLayer			= "MET5"
                upperLayer			= "MET6"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.090		
                upperLayerEncHeight		= 0.010
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

                maxNumRows                      = 3	       
                viaFarmSpacing                  = 0.365 


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"VIA56_x_VV" {
                contactCodeNumber		= 37
                cutLayer			= "VIA56"
                lowerLayer			= "MET5"
                upperLayer			= "MET6"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.010		
                upperLayerEncHeight		= 0.090
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

                maxNumRows                      = 3	       
                viaFarmSpacing                  = 0.365 


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}


#------------------------------------------------------------
#   DESIGN RULE / VIA RULE SECTION 
#------------------------------------------------------------

/* Vn.3ii + Vn.4ii */
DesignRule      {
   layer1                          ="POLY2" 
   layer2                          = "CONT"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}
DesignRule      {
   layer1                          ="CONT" 
   layer2                          = "MET1"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}





/* Vn.3ii + Vn.4ii */
DesignRule      {
   layer1                          ="MET1" 
   layer2                          = "VIA12"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}
DesignRule      {
   layer1                          ="VIA12" 
   layer2                          = "MET2"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


 	endOfLineEncWidthThreshold      = 0.340
   	endOfLineEncSideThreshold       = (0.040)
  	 endOfLineEncTbl                 =(0.060)

}





/* Vn.3ii + Vn.4ii */
DesignRule      {
   layer1                          ="MET2" 
   layer2                          = "VIA23"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}
DesignRule      {
   layer1                          ="VIA23" 
   layer2                          = "MET3"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


 	endOfLineEncWidthThreshold      = 0.340
   	endOfLineEncSideThreshold       = (0.040)
  	 endOfLineEncTbl                 =(0.060)

}





/* Vn.3ii + Vn.4ii */
DesignRule      {
   layer1                          ="MET3" 
   layer2                          = "VIA34"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}
DesignRule      {
   layer1                          ="VIA34" 
   layer2                          = "MET4"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


 	endOfLineEncWidthThreshold      = 0.340
   	endOfLineEncSideThreshold       = (0.040)
  	 endOfLineEncTbl                 =(0.060)

}





/* Vn.3ii + Vn.4ii */
DesignRule      {
   layer1                          ="MET4" 
   layer2                          = "VIA45"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}
DesignRule      {
   layer1                          ="VIA45" 
   layer2                          = "MET5"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


 	endOfLineEncWidthThreshold      = 0.340
   	endOfLineEncSideThreshold       = (0.040)
  	 endOfLineEncTbl                 =(0.060)

}





/* Vn.3ii + Vn.4ii */
DesignRule      {
   layer1                          ="MET5" 
   layer2                          = "VIA56"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}
DesignRule      {
   layer1                          ="VIA56" 
   layer2                          = "MET6"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


 	endOfLineEncWidthThreshold      = 0.340
   	endOfLineEncSideThreshold       = (0.040)
  	 endOfLineEncTbl                 =(0.060)

}





