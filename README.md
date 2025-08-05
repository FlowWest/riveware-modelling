"# riveware-modelling" 

---2025-08-05 Current Run Period: Oct 1, 1980 to June 4, 1981

unable to upload current model files to github. 


---2025-07-29 Current Run Period: Oct 1, 1980 to June 4, 1981

What's New: add LKNWR as a diversion object with set diversion rate from UKL. Revised UKL flood control and implemented rudimentary flood control protocols and releases from UKL and Keno. 

Fixes: fixed keno rampdown rates

Known Issues: DPS ruleset needs to be finished. Need to add tulelake LKWNR to the project.

---2025-07-22 Current Run Period: Oct 1, 1980 to June 4, 1981
What's New: No new Rules, revised project supply rules and began work on the 3rd part of the project supply formula. Started Work on the refuges. Still working out how to incorporate refuges and deliveries into the model ruleset. Set a consistent elevation and and then program diversions from that? Unsure

Fixes: revised the Upper/Lower boundary in UKL for the lake index function. Fixed the tableinterpolation bug from 2025-07-09. 

Known Issues: Flood spill from UKL needs to be programmed in. Finish DPS and refuge math because they calculate into spilling from UKL.

---2025-07-09 Current Run Period: Oct 1, 1980 to  Apr 20, 1981
What's new: Revised model to ensure longer run periods only require updating the historic inflows and diversion objects. Inflow and diversion data is automatically updated and synced with the model. Continued work on project supply calculations. Removed extra and unused slots.

Fixes: Keno accretions bug, Keno accretions is now set to historical data. 

Known issues: Rule #20 is crashing the model when the GetYear function is incorporated in the tableinterpolation function. This rule is used to lookup the inflow forecast for the year and establish the firm project supply from inflow.  Workaround needed. Step-up counter to count the rows in the table? DPS ruleset still needs reconfiguring.

---2025-07-08 Current Run Period: Oct 1, 1980 to Apr 5, 1981
What's new: Started working on project supply calculation, working on Project supply from inflow formulas (firm and variable values)  

Fixes: None

Known issues: DPS ruleset needs reconfiguring, 


---2025-06-24 Current Run Period: Oct 1, 1980 to Apr 5, 1981
What's new: Reconfigured Keno with updated ACAP capacity and fixed error causing UKL to crash and end the simulation. Added Keno Accretion data on a daily timestep

Fixes: UKL crashing when outflow exceeded capabilityies

Known issues: DPS ruleset needs reconfiguring, 

Upcoming Work: need to configure A canal diversions from UKL (known issue with CFS-AF conversion - maybe create extra slot for conversion?) and develop full ruleset for project supply.

#tagging for future work: Keno reservoir is treated as a pass through (elevation is firmly set), how can it operate between two elevations? is their a method?


---2025-06-10 Current Run Period: Oct 1, 1980 to Apr 5, 1981
What's new: a. Configured the LRDC object group to automatically detect and divert flow from the Keno impoundment. Rules 27 uses multi-outflow object to automatically calculate what the diversion shortage would be, and the pull water from the Keno impoundment. 
b. Revised Flood elevations in UKL to NAVD88 datum.
c. Devised temporary rule to set diversion requests for rapid testing of model. 
d. Created to data objects with historical data ( so i had to stop referencing an excel spreadsheet)
e. extended model run period - this requires diversion data for all objects (hence the need for new items a. and c.)

Fixes: none

Known Issues, flood control needs to be looked at with DPS spill. 

---2025-05-27 Current Run Period: Oct 1, 1980 to Mar 15, 1981

What's New: Configured DPS spill to only function when UKL is actually spilling (workaround for an error that will need to be resolved later), configured Shadow Storage/Shadow elevaiton into the Lake and Ops Index, began revising Project Supply functions.

Fixes: Fixed the interpolation issues with Minimum flows out of keno

Known Issues: DPS spill and DPS accounting crashes the model due to circular references. Attempts to recreate the formula from WRIMS into riverware does not work, and crashes the half the model.  This will be a problem later when UKL enters flood control and spills.

---2025-05-20 Current Run Period: Oct 1, 1980 to Mar 15, 1981

What's New:
Continued Work on Ruleset, with Deffered Project Supplyl now accumulating in a slot in the Upper Klamath Lake Object. DPS spill is in a separate data object for ease of troubleshooting.

Fixes: none

Known Issues:
Flood releases need to be established

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
