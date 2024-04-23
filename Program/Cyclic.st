PROGRAM _CYCLIC
	 
	CASE stav OF
		
		0: IF power_on_off = TRUE THEN
				stav := 100;
			END_IF
			
		100:MC_Power_0.Axis := ADR(gAxis01);
			MC_Power_0.Enable := TRUE;
			MC_Power_0();
			
			IF MC_Power_0.Status = TRUE THEN
				stav := 110;
			END_IF
			
		110:MC_Power_1.Axis := ADR(gAxis02);
			MC_Power_1.Enable := TRUE;
			MC_Power_1();
			
			IF MC_Power_1.Status = TRUE THEN 
				stav:=120;
			END_IF
			
		120:MC_Power_2.Axis := ADR(gAxis03);
			MC_Power_2.Enable := TRUE;
			MC_Power_2();
			
			IF MC_Power_2.Status = TRUE THEN 
				stav:=200;
			END_IF
			
		200:MC_Home_0.Axis := ADR(gAxis01);
			MC_Home_0.HomingMode := mcHOME_DIRECT;
			MC_Home_0.Position := 0;
			MC_Home_0.Execute := TRUE;
			
			IF MC_Home_0.Done = TRUE THEN
				MC_Home_0.Execute := FALSE;
				stav := 210;
			END_IF
			
			MC_Home_0();
			
		210:MC_Home_1.Axis := ADR(gAxis02);
			MC_Home_1.HomingMode := mcHOME_DIRECT;
			MC_Home_1.Position := 0;
			MC_Home_1.Execute := TRUE;
			
			IF MC_Home_1.Done = TRUE THEN
				MC_Home_1.Execute := FALSE;
				stav := 220;
			END_IF
			
			MC_Home_1();
			
		220:MC_Home_2.Axis := ADR(gAxis03);
			MC_Home_2.HomingMode := mcHOME_DIRECT;
			MC_Home_2.Position := 0;
			MC_Home_2.Execute := TRUE;
			
			IF MC_Home_2.Done = TRUE THEN
				MC_Home_2.Execute := FALSE;
				stav := 300;
			END_IF
			
			MC_Home_2();
			
		300:IF start_continual = TRUE THEN
				start_continual := FALSE;
				stav := 400;
			END_IF
			
			IF start_absolute = TRUE THEN 
				start_absolute := FALSE;
				stav := 500;
			END_IF
			
			IF start_additive = TRUE THEN 
				start_additive := FALSE;
				stav := 600;
			END_IF

			IF stop = TRUE THEN
				stop := FALSE;
				stav := 1000;
			END_IF
			
			IF power_on_off = FALSE THEN
				stav := 1100;
			END_IF
			
		400:MC_MoveVelocity_0.Axis := ADR(gAxis01);
			MC_MoveVelocity_0.Acceleration := 5000;
			MC_MoveVelocity_0.Deceleration := 5000;
			MC_MoveVelocity_0.Direction := mcPOSITIVE_DIR;
			MC_MoveVelocity_0.Velocity := 4000;
			MC_MoveVelocity_0.Execute := TRUE;
			
			MC_MoveVelocity_1.Axis := ADR(gAxis02);
			MC_MoveVelocity_1.Acceleration := 5000;
			MC_MoveVelocity_1.Deceleration := 5000;
			MC_MoveVelocity_1.Direction := mcPOSITIVE_DIR;
			MC_MoveVelocity_1.Velocity := 4000;
			MC_MoveVelocity_1.Execute := TRUE;
		
			MC_MoveVelocity_2.Axis := ADR(gAxis03);
			MC_MoveVelocity_2.Acceleration := 5000;
			MC_MoveVelocity_2.Deceleration := 5000;
			MC_MoveVelocity_2.Direction := mcPOSITIVE_DIR;
			MC_MoveVelocity_2.Velocity := 4000;
			MC_MoveVelocity_2.Execute := TRUE;
			
			IF MC_MoveVelocity_0.InVelocity = TRUE AND MC_MoveVelocity_1.InVelocity = TRUE AND MC_MoveVelocity_2.InVelocity = TRUE	THEN
				MC_MoveVelocity_0.Execute := FALSE;
				MC_MoveVelocity_1.Execute := FALSE;
				MC_MoveVelocity_2.Execute := FALSE;
				stav := 300;
			END_IF
			
			MC_MoveVelocity_0();
			MC_MoveVelocity_1();
			MC_MoveVelocity_2();
			
		500:MC_MoveAbsolute_0.Axis := ADR(gAxis01);
			MC_MoveAbsolute_0.Execute := TRUE;
			MC_MoveAbsolute_0.Position := poloha[0];
			MC_MoveAbsolute_0.Velocity := 5000;
			MC_MoveAbsolute_0.Acceleration := 5000;
			MC_MoveAbsolute_0.Deceleration := 5000;
			
			MC_MoveAbsolute_1.Axis := ADR(gAxis02);
			MC_MoveAbsolute_1.Execute := TRUE;
			MC_MoveAbsolute_1.Position := poloha[1];
			MC_MoveAbsolute_1.Velocity := 5000;
			MC_MoveAbsolute_1.Acceleration := 5000;
			MC_MoveAbsolute_1.Deceleration := 5000;
			
			MC_MoveAbsolute_2.Axis := ADR(gAxis03);
			MC_MoveAbsolute_2.Execute := TRUE;
			MC_MoveAbsolute_2.Position := poloha[2];
			MC_MoveAbsolute_2.Velocity := 5000;
			MC_MoveAbsolute_2.Acceleration := 5000;
			MC_MoveAbsolute_2.Deceleration := 5000;
			
			IF MC_MoveAbsolute_0.Done = TRUE AND MC_MoveAbsolute_1.Done = TRUE AND MC_MoveAbsolute_2.Done = TRUE THEN
				MC_MoveAbsolute_0.Execute := FALSE;
				MC_MoveAbsolute_1.Execute := FALSE;
				MC_MoveAbsolute_2.Execute := FALSE;
				stav := 300;
			END_IF
			
			IF stop = TRUE THEN 
				stav := 1000;
			END_IF
			
			IF power_on_off = FALSE THEN
				stav := 1100;
			END_IF
			
			MC_MoveAbsolute_0();
			MC_MoveAbsolute_1();
			MC_MoveAbsolute_2();
			
		600:MC_MoveAdditive_0.Axis := ADR(gAxis01);
			MC_MoveAdditive_0.Execute := TRUE;
			MC_MoveAdditive_0.Distance := vzdialenost[0];
			MC_MoveAdditive_0.Velocity := 2000;
			MC_MoveAdditive_0.Acceleration := 5000;
			MC_MoveAdditive_0.Deceleration := 5000;
			
			MC_MoveAdditive_1.Axis := ADR(gAxis02);
			MC_MoveAdditive_1.Execute := TRUE;
			MC_MoveAdditive_1.Distance := vzdialenost[1];
			MC_MoveAdditive_1.Velocity := 2000;
			MC_MoveAdditive_1.Acceleration := 5000;
			MC_MoveAdditive_1.Deceleration := 5000;
			
			MC_MoveAdditive_2.Axis := ADR(gAxis03);
			MC_MoveAdditive_2.Execute := TRUE;
			MC_MoveAdditive_2.Distance := vzdialenost[2];
			MC_MoveAdditive_2.Velocity := 2000;
			MC_MoveAdditive_2.Acceleration := 5000;
			MC_MoveAdditive_2.Deceleration := 5000;
			
			IF MC_MoveAdditive_0.Done = TRUE AND MC_MoveAdditive_1.Done = TRUE AND MC_MoveAdditive_2.Done = TRUE THEN 
				MC_MoveAdditive_0.Execute := FALSE;
				MC_MoveAdditive_1.Execute := FALSE;
				MC_MoveAdditive_2.Execute := FALSE;
				stav := 300;
			END_IF
			
			IF stop = TRUE THEN 
				stav := 1000;
			END_IF
			
			IF power_on_off = FALSE THEN
				stav := 1100;
			END_IF
			
			MC_MoveAdditive_0();
			MC_MoveAdditive_1();
			MC_MoveAdditive_2();
			
		1000:MC_MoveVelocity_0.Execute := FALSE;
			MC_MoveVelocity_1.Execute := FALSE;
			MC_MoveVelocity_2.Execute := FALSE;
			MC_MoveVelocity_0();
			MC_MoveVelocity_1();
			MC_MoveVelocity_2();
			
			MC_MoveAdditive_0.Execute:= FALSE;
			MC_MoveAdditive_1.Execute:= FALSE;
			MC_MoveAdditive_2.Execute:= FALSE;
			MC_MoveAdditive_0();
			MC_MoveAdditive_1();
			MC_MoveAdditive_2();
			
			MC_MoveAbsolute_0.Execute := FALSE;
			MC_MoveAbsolute_1.Execute := FALSE;
			MC_MoveAbsolute_2.Execute := FALSE;
			MC_MoveAbsolute_0();
			MC_MoveAbsolute_1();
			MC_MoveAbsolute_2();
			
			MC_Stop_0.Axis := ADR(gAxis01);
			MC_Stop_0.Deceleration := 10000;
			MC_Stop_0.Execute := TRUE;
			
			MC_Stop_1.Axis := ADR(gAxis02);
			MC_Stop_1.Deceleration := 10000;
			MC_Stop_1.Execute := TRUE;
			
			MC_Stop_2.Axis := ADR(gAxis03);
			MC_Stop_2.Deceleration := 10000;
			MC_Stop_2.Execute := TRUE;
			
			IF MC_Stop_0.Done = TRUE AND MC_Stop_1.Done = TRUE AND MC_Stop_2.Done = TRUE THEN
				MC_Stop_0.Execute := FALSE;
				MC_Stop_1.Execute := FALSE;
				MC_Stop_2.Execute := FALSE;
				stav := 300;
			END_IF
			
			MC_Stop_0();
			MC_Stop_1();
			MC_Stop_2();
			
		1100:MC_Power_0.Axis := ADR(gAxis01);
			MC_Power_0.Enable := FALSE;
			
			IF MC_Power_0.Status = FALSE THEN
				stav := 1110;
			END_IF
			
			MC_Power_0();
			
		1110:MC_Power_1.Axis := ADR(gAxis02);
			MC_Power_1.Enable := FALSE;
			
			IF MC_Power_1.Status = FALSE THEN
				stav := 1120;
			END_IF
			
			MC_Power_1();
			
		1120:MC_Power_2.Axis := ADR(gAxis03);
			MC_Power_2.Enable := FALSE;
			
			IF MC_Power_2.Status = FALSE THEN
				stav := 1125;
			END_IF
			
			MC_Power_2();
			
		1125:MC_MoveVelocity_0.Execute := FALSE;
			MC_MoveVelocity_1.Execute := FALSE;
			MC_MoveVelocity_2.Execute := FALSE;
			MC_MoveVelocity_0();
			MC_MoveVelocity_1();
			MC_MoveVelocity_2();
			
			MC_MoveAdditive_0.Execute := FALSE;
			MC_MoveAdditive_1.Execute := FALSE;
			MC_MoveAdditive_2.Execute := FALSE;
			MC_MoveAdditive_0();
			MC_MoveAdditive_1();
			MC_MoveAdditive_2();
			
			MC_MoveAbsolute_0.Execute := FALSE;
			MC_MoveAbsolute_1.Execute := FALSE;
			MC_MoveAbsolute_2.Execute := FALSE;
			MC_MoveAbsolute_0();
			MC_MoveAbsolute_1();
			MC_MoveAbsolute_2();
			
			stav := 0;
		
	END_CASE
	
	MC_ReadActualPosition_0.Axis := ADR(gAxis01);
	MC_ReadActualPosition_0.Enable := TRUE;
	MC_ReadActualPosition_0();
	
	MC_ReadActualPosition_1.Axis := ADR(gAxis02);
	MC_ReadActualPosition_1.Enable := TRUE;
	MC_ReadActualPosition_1();
	
	MC_ReadActualPosition_2.Axis := ADR(gAxis03);
	MC_ReadActualPosition_2.Enable := TRUE;
	MC_ReadActualPosition_2();
	
	pozicia[0] := LREAL_TO_REAL(MC_ReadActualPosition_0.Position);
	pozicia[1] := LREAL_TO_REAL(MC_ReadActualPosition_1.Position);
	pozicia[2] := LREAL_TO_REAL(MC_ReadActualPosition_2.Position);
	
END_PROGRAM