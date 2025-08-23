

; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; cmos 180nm MCU Milkyway technology file
; based on Design Manual Spec: DM-000013 Rev13
;
; Stack 2LM_1TM_30K
; 9 track
;
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This Techfile contains no Parasitic Information.
; The unit resistance and unit thickness values are not correct.
; USE Appropriate TLUplus files for Parasitic Extraction. 
;
; Preferred routing directions:
; vertical:   Metal2
; horizontal: Metal1
; optimized for 9 track library with above prefered routing directions
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Technology      {                       
                name                            = "180nm_mcu_9TRACK_LIBRARY"
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
                name                            = "M1_color"
                rgbDefined                      = 1
                redIntensity                    = 255
                greenIntensity                  = 175
                blueIntensity                   = 100
}

Color           2 {
                name                            = "M2_color"
                rgbDefined                      = 1
                redIntensity                    = 180
                greenIntensity                  = 0
                blueIntensity                   = 0
}

Color           3 {
                name                            = "M3_color"
                rgbDefined                      = 1
                redIntensity                    = 0
                greenIntensity                  = 180
                blueIntensity                   = 180
}


Color           4 {
                name                            = "M4_color"
                rgbDefined                      = 1
                redIntensity                    = 160
                greenIntensity                  = 32
                blueIntensity                   = 240
}

Color           5 {
                name                            = "M5_color"
                rgbDefined                      = 1
                redIntensity                    = 255
                greenIntensity                  = 80
                blueIntensity                   = 190
}

Color           6 {
                name                            = "M6_color"
                rgbDefined                      = 1
                redIntensity                    = 90
                greenIntensity                  = 175
                blueIntensity                   = 100
}


Color           7 {
                name                            = "M7_color"
                rgbDefined                      = 1
                redIntensity                    = 150
                greenIntensity                  = 150
                blueIntensity                   = 0
}


Color           8 {
                name                            = "M8_color"
                rgbDefined                      = 1
                redIntensity                    = 0
                greenIntensity                  = 0
                blueIntensity                   = 200
}

Color           9 {
                name                            = "M9_color"
                rgbDefined                      = 1
                redIntensity                    = 0
                greenIntensity                  = 255
                blueIntensity                   = 190
}



Color           10 {
                name                            = "M10_color"
                rgbDefined                      = 1
                redIntensity                    = 90
                greenIntensity                  = 0
                blueIntensity                   = 100
}

Color           11 {
                name                            = "M11_color"
                rgbDefined                      = 1
                redIntensity                    = 255
                greenIntensity                  = 255
                blueIntensity                   = 190
}

Color           12 {
                name                            = "M12_color"
                rgbDefined                      = 1
                redIntensity                    = 255
                greenIntensity                  = 175
                blueIntensity                   = 190
}



Tile            "unit" {
                width                           = 0.56
                height                          = 5.04
}




Layer           "POLY2" {
                layerNumber = 30
                visible = 1
                selectable = 1
                blink = 0
                lineStyle = "solid"
                pattern = "blank"
                color = "magenta"
}

Layer           "CONTACT" {
                layerNumber = 33
                visible = 1
                selectable = 1
                blink = 0
                lineStyle = "solid"
                pattern = "blank"
                color = "white"
}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Metal1 - 1x
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Layer           "Metal1" {
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

LayerDataType "Metal1_LABEL" {

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
; Via1 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Layer		"Via1" {
     layerNumber             = 35

     maskName                = "via1"

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0

     color                   = "M2_color"

     lineStyle               = "solid"
     pattern                 = "blank"

     pitch                   = 0



	defaultWidth            = 0.26 /* Vn.1  */
     	minWidth                = 0.26 /* Vn.1  */
    	minSpacing              = 0.26 /* Vn.2a */
	fatTblDimension 	= 2
	fatTblThreshold		= (0.0, 2.5)
	fatTblFatContactNumber  =  ("21,  22",  "23,  24")
	fatTblFatContactMinCuts	= ("4, 4", "4, 4")
	enclosedCutNumNeighbor          = 2
	enclosedCutNeighborRange        = 0.625 /*Vn.2a + Vn.2b*/
	enclosedCutMinSpacing           = 0.26
	enclosedCutToNeighborMinSpacing = 0.26


}



; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Metal2 
; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Layer           "Metal2" {
     layerNumber             = 36

     maskName                = "metal2"
     color		     = M2_color

     isDefaultLayer          = 1
     visible                 = 1
     selectable              = 1
     blink                   = 0
     lineStyle               = "solid"
     pattern                 = "blank"




     pitch                   = 4.00
     defaultWidth            = 2.2  /* MT30.1(a)  */
     minWidth                = 2.2  /* MT30.1(b)  */
     minSpacing              = 1.8  /* MT30.2*/

     minArea                 = 0.5625 /* MT.4 */
     maxSegLenForRC          = 2000
	


      unitMinResistance      = 0.43e-05
     unitNomResistance       = 0.83e-05 
     unitMaxResistance       = 1.23e-05
     unitMinThickness        = 3.035
     unitNomThickness        = 3.035
     unitMaxThickness        = 3.035

}
LayerDataType "Metal2_LABEL" {

  dataTypeNumber = 10
  layerNumber = 36 
  visible = 1
  selectable = 1
  blink = 0
  lineStyle = "solid"
  pattern = "blank"

   color  = M2_color

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
#  Via1 VIA SECTION 
#------------------------------------------------------------
ContactCode	"Via1_A22_HH" {
                contactCodeNumber		= 21
                cutLayer			= "Via1"
                lowerLayer			= "Metal1"
                upperLayer			= "Metal2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.250		
                upperLayerEncHeight		= 0.120
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

                maxNumRows                      = 3	       
                viaFarmSpacing                  = 0.365 


                minNumRows                      = 2
                minNumCols                      = 2
                minCutSpacing			= 0.26 	 

}

ContactCode	"Via1_A22_HV" {
                contactCodeNumber		= 22
                cutLayer			= "Via1"
                lowerLayer			= "Metal1"
                upperLayer			= "Metal2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.120		
                upperLayerEncHeight		= 0.250
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

                maxNumRows                      = 3	       
                viaFarmSpacing                  = 0.365 


                minNumRows                      = 2
                minNumCols                      = 2
                minCutSpacing			= 0.26 	 

}

ContactCode	"Via1_A22_VH" {
                contactCodeNumber		= 23
                cutLayer			= "Via1"
                lowerLayer			= "Metal1"
                upperLayer			= "Metal2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.250		
                upperLayerEncHeight		= 0.120
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

                maxNumRows                      = 3	       
                viaFarmSpacing                  = 0.365 


                minNumRows                      = 2
                minNumCols                      = 2
                minCutSpacing			= 0.26 	 

}

ContactCode	"Via1_A22_VV" {
                contactCodeNumber		= 24
                cutLayer			= "Via1"
                lowerLayer			= "Metal1"
                upperLayer			= "Metal2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.120		
                upperLayerEncHeight		= 0.250
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

                maxNumRows                      = 3	       
                viaFarmSpacing                  = 0.365 


                minNumRows                      = 2
                minNumCols                      = 2
                minCutSpacing			= 0.26 	 

}

ContactCode	"Via1_x_HH" {
                contactCodeNumber		= 9
                cutLayer			= "Via1"
                lowerLayer			= "Metal1"
                upperLayer			= "Metal2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.250		
                upperLayerEncHeight		= 0.120
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"Via1_x_HV" {
                contactCodeNumber		= 10
                cutLayer			= "Via1"
                lowerLayer			= "Metal1"
                upperLayer			= "Metal2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.120		
                upperLayerEncHeight		= 0.250
                lowerLayerEncWidth		= 0.060
                lowerLayerEncHeight		= 0.010

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"Via1_x_VH" {
                contactCodeNumber		= 11
                cutLayer			= "Via1"
                lowerLayer			= "Metal1"
                upperLayer			= "Metal2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.250		
                upperLayerEncHeight		= 0.120
                lowerLayerEncWidth		= 0.010
                lowerLayerEncHeight		= 0.060

                unitMinResistance               = 0.0045
                unitNomResistance               = 0.0045
                unitMaxResistance               = 0.0150

               


                minNumRows                      = 4 
                minNumCols                      = 4
                minCutSpacing			= 0.36

}

ContactCode	"Via1_x_VV" {
                contactCodeNumber		= 12
                cutLayer			= "Via1"
                lowerLayer			= "Metal1"
                upperLayer			= "Metal2"
                isDefaultContact		= 1
                cutWidth			= 0.260
                cutHeight			= 0.260
                upperLayerEncWidth		= 0.120		
                upperLayerEncHeight		= 0.250
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
#   DESIGN RULE / VIA RULE SECTION 
#------------------------------------------------------------

/* Vn.3ii + Vn.4ii */
DesignRule      {
   layer1                          ="Metal1" 
   layer2                          = "Via1"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}
DesignRule      {
   layer1                          ="Via1" 
   layer2                          = "Metal2"
   endOfLineEncTblSize             = 1 
   endOfLineEncViaArrayExcluded    = 0


   endOfLineEncWidthThreshold      = 0.340
   endOfLineEncSideThreshold       = (0.040)
   endOfLineEncTbl                 =(0.060)

}





