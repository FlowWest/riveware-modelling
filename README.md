"# riveware-modelling" 
****as of 2025-04-29 github is not allowing uploads to the main branch. Will attempt more uploads next week. If model files are needed, please contact me directly via teams or email****

---2025-04-29 Current Run Period: Oct 1, 1980 to Mar 15, 1981

What's New:
Configured LRDC bi-directional flow (maybe, not fully tested yet). Changed some diversion objects to reduce errors when running model. starting programming DPS account (accumulation and spill). So far the daily flow savings is calculated, need to incorporate project supply and distribution sometime soon.

Fixes: none
Removed problematic water user object (disabled from dispatching)

Known Issues:
Flood releases need to be established


---2025-04-22 Current Run Period: Oct 1, 1980 to Mar 15, 1981
What's new:
Added Ady and North Canal Diversions, tweaked the Lost to LRDC model pathway, currently working on creating water user object for each refuge and setting a constant diversion during the summer months.
Set diversions to a known timeseries value (may change in future).

Fixes: 
None

Known Issues:
Water User object not properly dispatching. Issue with return flow method.

---2025-08-08 Current Run Period: Oct 1, 1980 to Mar 15, 1981
What's new:
Added wilson Dam, portion of LRDC (flowing from east to west) and a portion of the MH Pump/Stat 48 Pump that takes water _only_ from the Lost river. Object is labeled as such (Modeled as one unit in WRIMS, kept it the same here)
Worked on FFA savings formula in ruleset

Fixes: 
none

Known Issues: 
UKL control not working
Rule 17 breaks the entire model - It was an attempt to automatically calulculate diversions from UKL through MH/Station 48 by setting the diversion rate slot to another slot's value. Crashes the entire model to the point where nothing dispatches. 



---2025-04-01: Current run period: Oct 1, 1980 to Mar 15, 1981
Fixes:
-Fixed FFA distribution bug, FFA expenditure is an equal amount everyday from Mar 1 to June 31.
-A canal is programmed to use the historical data for diversions from UKL

Known issues:
-UKL flood control is not working, need to double check UKL flood flood control elevation data - may be in the wrong datum (BOR vs NAVD88)
