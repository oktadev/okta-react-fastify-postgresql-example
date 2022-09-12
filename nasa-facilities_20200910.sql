--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: facilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facilities (
    "Center" character varying(100) NOT NULL,
    "Facility" character varying(250) NOT NULL,
    "Status" character varying(25),
    "URL Link" character varying(250),
    "City" character varying(25) NOT NULL,
    "State" character varying(2) NOT NULL
);


ALTER TABLE public.facilities OWNER TO postgres;

--
-- Data for Name: facilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facilities ("Center", "Facility", "Status", "URL Link", "City", "State") FROM stdin;
Stennis Space Center	Test Stand A-2 #4122	Inactive	http://rockettest.nasa.gov	Stennis Space Center	MS
Ames Research Center	N229 - EXPER. AEROTHERMODYNAMIC FAC.: ELECTRIC ARC SHOCK TUBE FACILITY (PAPAC)	Active	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Goddard Space Flight Center	500 WSC: Antenna, 10m S-band	Active	\N	Greenbelt	MD
Glenn Research Center	Vacuum Facility 11 (VF-11) Bldg. 16	Active	http://facilities.grc.nasa.gov/epl/index.html	Cleveland	OH
Marshall Space Flight Center	Materials Testing & Research Facility 4464	Active	\N	Huntsville	AL
Michoud Assembly Facility	Riveting Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Johnson Space Center	Sonic Fatique Lab (SFL), B-49	Active	http://www.nasa.gov/centers/johnson/pdf/639503main_VATF_User_Test_Planning_Guide.pdf	Houston	TX
Kennedy Space Center	Corrosion Test Site, K8-0237	Active	\N	Kennedy Space Center	FL
Kennedy Space Center	Operations Support Building/K6-1096	\N	\N	Kennedy Space Center	FL
Goddard Space Flight Center	500 MILA: Antenna, 9m S-band	Active	\N	Greenbelt	MD
Jet Propulsion Lab	Mirror Refurbishment Building	Active	\N	PASADENA	CA
Michoud Assembly Facility	High Bay Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Kennedy Space Center	Emergency Landing Sites (ELS) Low Inclination 	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	ET Cryogenic Structural Test Facility 4699	Active	\N	Huntsville	AL
Ames Research Center	N234 - THERMAL PROTECTION LAB: 2x9 INCH SUPERSONIC TURBULENT FLOW DUCT (PAPAC)	Active	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Marshall Space Flight Center	ED Solid Rocket Engine Air Flow Fac 4777	Active	\N	Huntsville	AL
Marshall Space Flight Center	EP Hydrocarbon (HC) Engine Test Fac 4696	Inactive	\N	Huntsville	AL
Glenn Research Center	Statics Test Laboratory, Bldg. 5 (ERB Complex)	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/erb/ind	Cleveland	OH
Ames Research Center	N234 - THERMAL PROTECTION LAB: AERODYNAMIC HEATING FACILITY (PAPAC)	Active	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Marshall Space Flight Center	Sun Spot Thermal Vacuum Chamber - 4619	Active	\N	Huntsville	AL
Marshall Space Flight Center	EP Cold Flow Position 4670	\N	\N	Huntsville	AL
Kennedy Space Center	LB Cells (4) Low Bay Area/West/K6-848/VAB	\N	\N	Kennedy Space Center	FL
Stennis Space Center	Push Boat	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Marshall Space Flight Center	EM SEE: Atomic Oxygen & Solar UV Lab 4711	Active	\N	Huntsville	AL
Kennedy Space Center	High Bay 2/1726/HGR-S	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EP Transient Pressure Test Facility 4515	Inactive	\N	Huntsville	AL
NASA Aircraft Management Division	GRC S-3B Viking Research Aircraft	Active	\N	Washington	DC
Langley Research Center	Structural Dynamics Research Lab	Active	\N	Hampton	VA
Marshall Space Flight Center	ES Plasma Wind Tunnel 4481	\N	\N	Huntsville	AL
Armstrong Flight Research Center	Bldg. 4982 - Aeronautical Tracking Facility	Active	\N	Edwards	CA
Langley Research Center	Structural Acoustic Loads & Transmission Facility	Active	http://stab.larc.nasa.gov/Fac-SALT.html	Hampton	VA
Ames Research Center	N238 - ARC JET LABORATORY: PANEL TEST FACILITY (PAPAC)	Active	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Kennedy Space Center	Intermediate Bay/M7-360/SSPF	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EM-20 Terahertz Imaging Facility 4711	Active	\N	Huntsville	AL
Langley Research Center	Radiation Physics Computer Laboratory	Active	\N	Hampton	VA
Langley Research Center	Fabrication Lab	Active	\N	Hampton	VA
Kennedy Space Center	High Bay 1/1726/HGR-S	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Mobile Launcher Platform 3	\N	\N	Kennedy Space Center	FL
Glenn Research Center	2.2 Second Drop Tower, Bldg. 45	Active	http://microgravity.grc.nasa.gov/drop2/	Cleveland	OH
Jet Propulsion Lab	Space Flight Operations Facility	Active	\N	PASADENA	CA
Kennedy Space Center	Payload Canister Transporter (P70-0559)	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EH Foam Formulation Laboratory 4739	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM-20 Microwave NDE Facility 4702	Active	\N	Huntsville	AL
Glenn Research Center	Creek Road Cryogenic Complex Cell 7	Active	\N	Cleveland	OH
Kennedy Space Center	Orbiter Processing Fac.(OPF) Low Bay Area/K6-894	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Turn Basin/K7-1005	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Orbiter Processing Facility(OPF)Low Bay 3/K6-696	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Launch Equipment Test Facility (LETF)/M7-505A	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	LCC Control Room 3/FR-3/Third Floor/K6-900	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EM Mechanical Materials Test Facility, Bldg 4612	Active	\N	Huntsville	AL
Kennedy Space Center	High Bay Towers (6)/K6-848/VAB	\N	\N	Kennedy Space Center	FL
Stennis Space Center	Test Operations Bldg. E Complex #4010	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Marshall Space Flight Center	X-Ray & Cryogenic Facility (XRCF), 4718	Active	https://optics.nasa.gov	Huntsville	AL
Langley Research Center	Thermal Acoustic Fatigue Apparatus	Active	http://stab.larc.nasa.gov/Fac-TAFA.html	Hampton	VA
Ames Research Center	DYNAVAC THERMAL VACUUM CHAMBER	Active	http://www.nasa.gov/centers/ames/research/technology-onepagers/eng_eval_lab.html	Moffett Field	CA
Stennis Space Center	Barge, Liquid Oxygen (6 each)	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Goddard Space Flight Center	500 BDA: Antenna, 9m S-band	Active	\N	Greenbelt	MD
Kennedy Space Center	High Bay 3 Cell/K6-848/VAB	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EM Hydrogen (H2) Test Facility 4628	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH High Pres. Ignit. Promoted Combust.Test System	Active	\N	Huntsville	AL
Stennis Space Center	Sensor Laboratory #1105	Active	\N	Stennis Space Center	MS
Goddard Space Flight Center	500 MILA: Antenna, 4.3m S-band	Active	\N	Greenbelt	MD
Marshall Space Flight Center	AB Communications Facility, Bldg. 4207	Active	\N	Huntsville	AL
Langley Research Center	20-Inch Mach CF4 Tunnel	Inactive	http://www.aeronautics.nasa.gov/atp/index.html	Hampton	VA
Jet Propulsion Lab	DSS 15 Antenna	Active	\N	PASADENA	CA
Jet Propulsion Lab	Atomic Oxygen Test Facility, 121-100	Active	\N	PASADENA	CA
Marshall Space Flight Center	EP Mechanisms Development Facility 4656	\N	\N	Huntsville	AL
NASA Aircraft Management Division	GRC DHC-6 Twin Otter Research Aircraft	Active	http://icebox-esn.grc.nasa.gov/facilities/otter.html	Washington	DC
NASA Aircraft Management Division	GRC Learjet 25 Research Aircraft	Active	\N	Washington	DC
Langley Research Center	Micometeroid/LDEF Analysis Laboratory	Active	\N	Hampton	VA
Glenn Research Center	Cryogenic Propellant Tank Fac. (K-Site), #2811	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/ksite/index.html	Cleveland	OH
Wallops Flight Facility/GSFC	Meteorological Facilities and ASRF	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Goddard Space Flight Center	500/WSC: Antenna, 4.5m S/Ku-band	Active	\N	Greenbelt	MD
Glenn Research Center	DeHavilland DHC-6 Aircraft (N607NA)	Active	http://www.lerc.nasa.gov/WWW/AFED/facilities/flig	Cleveland	OH
Goddard Space Flight Center	500 MILA : Merritt Island Tracking Station (MILA)	Active	\N	Greenbelt	MD
Goddard Space Flight Center	Acoustic Test Facility Building 10	Active	http://mscweb.gsfc.nasa.gov/549web	Greenbelt	MD
Marshall Space Flight Center	EB Radio Frequency Development Lab 4189	Active	\N	Huntsville	AL
Kennedy Space Center	Crawler-Transporter, CT2	\N	\N	Kennedy Space Center	FL
NASA Aircraft Management Division	DFRC Stratospheric Observatory for Infrared Astronomy (SOFIA) Aircraft	Active	http://www.nasa.gov/centers/dryden/news/FactSheets/FS-096-DFRC.html	Washington	DC
Marshall Space Flight Center	EH Robotic Welding Facility 4707	Active	\N	Huntsville	AL
Goddard Space Flight Center	Vibration Test Facility - Exciter 1	Active	http://mscweb.gsfc.nasa.gov/549web	Greenbelt	MD
Marshall Space Flight Center	EP Test Facility (TF500) 4522	Active	\N	Huntsville	AL
NASA Aircraft Management Division	DFRC RQ-4 Global Hawk Unmanned Aerial System	Active	http://www.nasa.gov/centers/dryden/aircraft/GlobalHawk/index.html	Washington	DC
Jet Propulsion Lab	DSS 66 Antenna	Inactive	\N	PASADENA	CA
Stennis Space Center	Test Facility H-1 #5001	Inactive	\N	Stennis Space Center	MS
Armstrong Flight Research Center	Bldg. 4840 - Research Aircraft Integration Facility	Active	http://www.nasa.gov/centers/dryden/pdf/152685main_RAIF_fa	Edwards	CA
Langley Research Center	Investment Casting Development Lab/B1237A	Active	\N	Hampton	VA
Armstrong Flight Research Center	Bldg. 4824 - Communications Building	Active	\N	Edwards	CA
Marshall Space Flight Center	EP Data Recording Facility 4583	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH Computerized Data Base System 4612	Active	\N	Huntsville	AL
Jet Propulsion Lab	48-inch Telescope	Active	\N	PASADENA	CA
Kennedy Space Center	RPSF Surge Building #2/K6-0345	\N	\N	Kennedy Space Center	FL
Wallops Flight Facility/GSFC	Mobile Range Systems	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
NASA Aircraft Management Division	DFRC Ikhana (Predator B) Unmanned Aerial System	Active	http://www.nasa.gov/centers/dryden/aircraft/Ikhana/index.html	Washington	DC
NASA Aircraft Management Division	JSC B-377G Super Guppy Support Aircraft	Active	http://jsc-aircraft-ops.jsc.nasa.gov/guppy/index.html	Washington	DC
NASA Aircraft Management Division	LaRC Lancair Columbia 300 Research Aircraft	Inactive	\N	Washington	DC
Goddard Space Flight Center	500 BDA: Bermuda Tracking Station (BDA)	Active	\N	Greenbelt	MD
Wallops Flight Facility/GSFC	McMurdo Ground Station (MGS)	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Glenn Research Center	Complex of Thirteen Space Test Chambers (Bldg.16)	Active	http://facilities.grc.nasa.gov/eprb/index.html	Cleveland	OH
Glenn Research Center	Icing Research Tunnel (IRT), Bldg #11	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/irt/ind	Cleveland	OH
Wallops Flight Facility/GSFC	National Scientific Balloon Facility	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Marshall Space Flight Center	EB LAB Control Moment Gyro Test & Eval Fac 4487	Active	\N	Huntsville	AL
Langley Research Center	Thermal Structures Lab	Active	\N	Hampton	VA
Marshall Space Flight Center	ET Component/System Quasi-Static Load Fac 4619	Active	\N	Huntsville	AL
Stennis Space Center	A Complex Test Control Center (TCC) #4110	Active	\N	Stennis Space Center	MS
Stennis Space Center	Measurement Standards & Calibration Lab #8100	Active	\N	Stennis Space Center	MS
Kennedy Space Center	High Bay/Low Bay/Processing Rooms/M7-355/O&C	\N	\N	Kennedy Space Center	FL
NASA Aircraft Management Division	LaRC Cirrus SR-22 Research Aircraft	Active	\N	Washington	DC
Kennedy Space Center	Central Instrumentation Facility (CIF)/M6-342	\N	\N	Kennedy Space Center	FL
Langley Research Center	Experimental Avionics Systems Integration Lab	Active	\N	Hampton	VA
Marshall Space Flight Center	EV 400-Ft. Antenna Test Range 4194	Active	\N	Huntsville	AL
Johnson Space Center	General Vibration Lab (GVL)	Active	http://www.nasa.gov/centers/johnson/pdf/639503main_VATF_User_Test_Planning_Guide.pdf	Houston	TX
Kennedy Space Center	Launch Pad 39A/J8-1708	\N	\N	Kennedy Space Center	FL
Michoud Assembly Facility	Friction Stir Welding Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Stennis Space Center	Hydrogen Transfer Facility #3415	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Jet Propulsion Lab	Thermal Vacuum Chamber 306-TV-11	Active	http://etl.jpl.nasa.gov	PASADENA	CA
Langley Research Center	Low Frequency Antenna Test Facility	Active	\N	Hampton	VA
Stennis Space Center	Emergency Power Generating System #4400	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Glenn Research Center	Turbomachinery Technology Facilities (ERB Complex)	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/erb/ind	Cleveland	OH
Langley Research Center	Landing and Impact Research Facility	Active	\N	Hampton	VA
Marshall Space Flight Center	EH Metals Processing Facility 4711	Active	\N	Huntsville	AL
Glenn Research Center	Space Experiments Laboratory, Bldg. 110	Active	\N	Cleveland	OH
Marshall Space Flight Center	EM-20 Shearography Facility 4711	Active	\N	Huntsville	AL
Marshall Space Flight Center	EB Straylight Facility 4487	Active	\N	Huntsville	AL
Langley Research Center	Compact Range Pilot Facility	Active	\N	Hampton	VA
Kennedy Space Center	Control Room 2/1726/HGR-S	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Low Bay Transfer Aisle/K6-848/VAB	\N	\N	Kennedy Space Center	FL
Armstrong Flight Research Center	Bldg. 0703 - Dryden Aircraft Operations Facility	Active	http://www.nasa.gov/centers/daof/index.html	Edwards	CA
Wallops Flight Facility/GSFC	Main Base Laboratories and Shops	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Kennedy Space Center	High Bay/M7-1354/PHSF	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EM-20 Contact Ultrasonics Laboratory 4702	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM-20 Thermography Facility 4711	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH Advanced Bonding Technology Laboratory 4707	Active	\N	Huntsville	AL
Jet Propulsion Lab	Energy Conservation Laboratory High Bay Chamber	Active	\N	PASADENA	CA
Jet Propulsion Lab	Remote Surface Lab	Active	\N	PASADENA	CA
Jet Propulsion Lab	Thermal Vacuum Chamber 144-TV-10	Active	http://etl.jpl.nasa.gov	PASADENA	CA
Marshall Space Flight Center	ED Air Flow Turbine Test Facility 4777	Active	\N	Huntsville	AL
Michoud Assembly Facility	Vertical Assembly Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Marshall Space Flight Center	ET WTC - 14-Inch Trisonic Wind Tunnel 4732	Active	\N	Huntsville	AL
Kennedy Space Center	LCC Control Room 1/FR-1/Third Floor/K6-900	\N	\N	Kennedy Space Center	FL
Glenn Research Center	Zero Gravity Research Facility, (Bldg. 110)	Active	http://microgravity.grc.nasa.gov/zero-g/	Cleveland	OH
Marshall Space Flight Center	EB Doppler Lidar Facility 4467	Active	\N	Huntsville	AL
Kennedy Space Center	High Bay Transfer Aisle/K6-848/VAB	\N	\N	Kennedy Space Center	FL
Stennis Space Center	High Pressure Gas Facility #0041,3305,6,9,10,11	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Glenn Research Center	Aeropropulsion Heat Transfer Technology Facilities	Active	http://facilities.grc.nasa.gov/erb/index.html	Cleveland	OH
Michoud Assembly Facility	Component Painting Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Stennis Space Center	B Complex Test Control Center (TCC) #4210	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Stennis Space Center	Test Stand B-1 #4220	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Kennedy Space Center	Thermal Protection System (TPS)/K6-0794	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	SRB Recovery Facility/66250/HGR-AF	\N	\N	Kennedy Space Center	FL
Jet Propulsion Lab	DSS 12 Antenna	Inactive	\N	PASADENA	CA
Glenn Research Center	10 x 10 Supersonic Wind Tunnel, Bldg. 85	Active	http://facilities.grc.nasa.gov/10x10/index.html	Cleveland	OH
Stennis Space Center	Data Acquisition Facility (DAF) #4995	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Marshall Space Flight Center	ET East Vibration Test Facility 4619	Active	\N	Huntsville	AL
Kennedy Space Center	Payload Canister (P70-0870) 2 EA	\N	\N	Kennedy Space Center	FL
Johnson Space Center	Chamber B, EC, B-32	Active	http://www.nasa.gov/centers/johnson/engineering/test_facilities/human_space_testing/detChamberB.html	Houston	TX
Marshall Space Flight Center	ET WTC - Wind Tunnel Complex 4732	Active	\N	Huntsville	AL
Jet Propulsion Lab	Mesa Antenna Test Facility	Active	\N	PASADENA	CA
Michoud Assembly Facility	Harness Fabrication Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Glenn Research Center	Thermal/Vacuum Chamber	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/spf/index.html	Cleveland	OH
Marshall Space Flight Center	EM Chemistry Laboratories, Building 4612	Active	\N	Huntsville	AL
Langley Research Center	Diode Characterization & Test Lab (B-1202)	Active	\N	Hampton	VA
Langley Research Center	Flight Simulation Facilities, B1268A and B1268D	Active	\N	Hampton	VA
Kennedy Space Center	High Bay 1 Cell/K6-848/VAB	Active	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EH Robotic Workcell 4707	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH Plasma Arc Metal Cutting Facility 4738	Active	\N	Huntsville	AL
Langley Research Center	Nozzle Test Chamber	Active	\N	Hampton	VA
Marshall Space Flight Center	ED Liquid Rocket Engine Air Flow Fac 4777	Active	\N	Huntsville	AL
Jet Propulsion Lab	Acoustics Noise Test Cell	Active	http://etl.jpl.nasa.gov	PASADENA	CA
Marshall Space Flight Center	ET Hazardous Structural Test Complex 4572	Active	\N	Huntsville	AL
Jet Propulsion Lab	DSS 16 Antenna	Inactive	\N	PASADENA	CA
Marshall Space Flight Center	ED Liquid/Solid Rocket Eng Water Flow Fac 4776	Active	\N	Huntsville	AL
Marshall Space Flight Center	EV Flight Simulation Lab 4476	Inactive	\N	Huntsville	AL
Glenn Research Center	1 Ft. x 1 Ft. Supersonic Wind Tunnel, Bldg. 37	Active	http://facilities.grc.nasa.gov/1x1/index.html	Cleveland	OH
NASA Aircraft Management Division	DFRC DC-8 Earth Science Research Aircraft	Active	http://www.nasa.gov/centers/dryden/aircraft/DC-8/index.html	Washington	DC
Stennis Space Center	Test Stand B-2 #4221	Under Rehabilitation	http://rockettest.nasa.gov	Stennis Space Center	MS
Jet Propulsion Lab	DSS 45 Antenna	Active	\N	PASADENA	CA
Marshall Space Flight Center	Neutral Buoyancy Facility 4705	Inactive	\N	Huntsville	AL
Marshall Space Flight Center	ES Solar Magnetograph Facility 4347	\N	\N	Huntsville	AL
Langley Research Center	Semi-Anecho Electromagnetic Comp Test Complex/B1220	Active	\N	Hampton	VA
Marshall Space Flight Center	EM Space Environmental Effects Facility 4605	Active	\N	Huntsville	AL
NASA Aircraft Management Division	LaRC B-200 Super King Air Research Aircraft	Active	\N	Washington	DC
Stennis Space Center	Cryogenics Docks #0008	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Glenn Research Center	Aero Acoustic Propulsion Lab., (AAPL) Bldg. 145	Active	http://facilities.grc.nasa.gov/aapl/index.html	Cleveland	OH
Michoud Assembly Facility	Heat Treating Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Johnson Space Center	Vibration Acoustic Test Facility - B-49	Active	http://www.nasa.gov/centers/johnson/pdf/639503main_VATF_User_Test_Planning_Guide.pdf	Houston	TX
Glenn Research Center	Heated Tube Facility	Inactive	\N	Cleveland	OH
Marshall Space Flight Center	EM-20 Penetrant, Optical and Magnetic Particle Lab	Active	\N	Huntsville	AL
Stennis Space Center	Barge, Liquid Hydrogen (3 each)	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Langley Research Center	Structures and Materials Lab	Active	\N	Hampton	VA
Marshall Space Flight Center	18-Ft Vacuum Coating Chamber - 4707	Inactive	\N	Huntsville	AL
Kennedy Space Center	Airlock/1726/HGR-S	Active	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EM Bearing Test Facility, Bldg 4711	Active	\N	Huntsville	AL
Stennis Space Center	Science Laboratory #8110	Active	\N	Stennis Space Center	MS
Wallops Flight Facility/GSFC	Poker Flat Research Range & SAR Facility	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Marshall Space Flight Center	ET Modal Test Facility 4619	Active	\N	Huntsville	AL
Jet Propulsion Lab	DSS 63 Antenna	Active	\N	PASADENA	CA
Michoud Assembly Facility	Chemical Cleaning Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Langley Research Center	Intravehicular Automation and Robotics Lab	Active	\N	Hampton	VA
Kennedy Space Center	Orbiter Processing Facility(OPF) Bay 1/K6-894	\N	\N	Kennedy Space Center	FL
NASA Aircraft Management Division	JSC WB-57 High Altitude Research Aircraft	Active	http://jsc-aircraft-ops.jsc.nasa.gov/wb57/index.html	Washington	DC
Marshall Space Flight Center	EV Flight Robotics Laboratory (Flat Floor) 4619	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH Hazardous Tribological Test Facility 4643	Active	\N	Huntsville	AL
Langley Research Center	Nondestructive Evaluation Lab	Active	\N	Hampton	VA
Kennedy Space Center	Mobile Launcher Platform 1	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	ED Pump Test Equipment Facility 4777	Active	\N	Huntsville	AL
Glenn Research Center	Aerodynamics Flow Physics Facilities (ERB Complex)	Active	http://facilities.grc.nasa.gov/erb/index.html	Cleveland	OH
Goddard Space Flight Center	700: High Capacity Centrifuge (HCC)	Active	\N	Greenbelt	MD
Marshall Space Flight Center	EB Electrical Power Systems Test Fac 4475	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM Long-Duration Lubricant Test Laboratory, Bldg 4	Active	\N	Huntsville	AL
Glenn Research Center	Engine Components Research Lab (ECRL), Bldg. 102	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/ecrl/in	Cleveland	OH
Marshall Space Flight Center	EM-20 Computed Tomography Facility 4707	Active	\N	Huntsville	AL
Marshall Space Flight Center	Cosmic Ray Emulsion Laboratory 4481	Inactive	\N	Huntsville	AL
Glenn Research Center	Electric Power Lab - Vacuum Facility 6 (VF-6)	Active	http://facilities.grc.nasa.gov/epl/index.html	Cleveland	OH
Michoud Assembly Facility	Component Ablator Facility SLA Spray Preparation Area	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Marshall Space Flight Center	EO UDC/ Express Rack/ Express Pallet 4612	Under	\N	Huntsville	AL
Marshall Space Flight Center	EV Contact Dynamics Simulation Lab (6DOF) 4663	Active	\N	Huntsville	AL
Goddard Space Flight Center	700: Magnetic Field Component Test Facility	Active	\N	Greenbelt	MD
Michoud Assembly Facility	Thermal Protection System Area	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Marshall Space Flight Center	EH Metallurgical Diagnostics Laboratory 4612	Active	\N	Huntsville	AL
Marshall Space Flight Center	ET Flight Environmental Test Facility 4619	Active	\N	Huntsville	AL
Ames Research Center	046 - AIRCRAFT MAINTENANCE HANGAR 2	Active	\N	Moffett Field	CA
Goddard Space Flight Center	700: Space Simulation Laboratory, Building 7/10/15	Active	\N	Greenbelt	MD
Langley Research Center	Microelectronics Development Lab (B-1238A)	Active	\N	Hampton	VA
Kennedy Space Center	LCC Control Room 2/FR-2/Third Floor/K6-900	\N	\N	Kennedy Space Center	FL
Glenn Research Center	Learjet 25 Aircraft (N616NA)	Active	http://www.lerc.nasa.gov/WWW/AFED/facilities/flig	Cleveland	OH
Marshall Space Flight Center	ET Dynamics Test Stand (4550)	Inactive	\N	Huntsville	AL
Marshall Space Flight Center	EH Sheet Metal Assembly & Machine Shop 4705	Active	\N	Huntsville	AL
Kennedy Space Center	Orbiter Processing Facility(OPF) Bay 2/K6-894	\N	\N	Kennedy Space Center	FL
Michoud Assembly Facility	Component Ablator Facility Mix Room	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Kennedy Space Center	RPSF Contractor Support Building/K6-0445	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EB LAB Anechoic Test Chamber 4190	Active	\N	Huntsville	AL
Marshall Space Flight Center	ET West Vibration Test Facility 4619	Active	\N	Huntsville	AL
Langley Research Center	Information Systems Research Facility (1)	Active	\N	Hampton	VA
Jet Propulsion Lab	Microdevices Laboratory (MDL)	Active	\N	PASADENA	CA
Marshall Space Flight Center	Subscale Rocket Motor Processing Fac 4707	Active	\N	Huntsville	AL
Langley Research Center	Automated Structures Assembly Lab	Active	\N	Hampton	VA
Marshall Space Flight Center	EM Materials Combustion Research Facility, Bldg 46	Active	\N	Huntsville	AL
Langley Research Center	Composite Material Development Laboratory/B1238B	Active	\N	Hampton	VA
Kennedy Space Center	HMF South Processing Bldg/Support Area/M7-1212	\N	\N	Kennedy Space Center	FL
Langley Research Center	Materials Processing and Development Lab	Active	\N	Hampton	VA
Glenn Research Center	Cryogenics Components Laboratory	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/ccl/index.html	Cleveland	OH
Glenn Research Center	Research Combustion Laboratory, Bldg. 35	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/rcl/ind	Cleveland	OH
Marshall Space Flight Center	EM-20 Backscatter Radiography Facility 4711/4707	Active	\N	Huntsville	AL
Langley Research Center	Aircraft Landing Dynamics Facility/B1262	Active	\N	Hampton	VA
Marshall Space Flight Center	EM-20 Acoustic Emission Facility 4711	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH Ambient & High Pressure LOX/GOX Facility 4623	Active	\N	Huntsville	AL
Kennedy Space Center	North Wing/60680/HGR-AE	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Facility Control Building/M7-1354/PHSF	\N	\N	Kennedy Space Center	FL
Jet Propulsion Lab	DSS 65 Antenna	Active	\N	PASADENA	CA
Stennis Space Center	Test Stand A-1 #4120	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Marshall Space Flight Center	EM Tribology Test Laboratory, Building 4711	Active	\N	Huntsville	AL
Armstrong Flight Research Center	Bldg. 703 Mirror Coating Facility	Active	\N	Edwards	CA
Jet Propulsion Lab	SOLAR TEST FACILITY	Active	\N	PASADENA	CA
Langley Research Center	Electron Beam Welding Lab	Active	\N	Hampton	VA
Goddard Space Flight Center	500 BDA: Radar, FPQ-6	Active	\N	Greenbelt	MD
Kennedy Space Center	Altitude Chambers/Deactivated/M7-355/O&C	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	LCC Control Room 4/FR-4/Third Floor/K6-900	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EB Marshall Avionics Sys. Testbed (MAST) 4487	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM-20 Automated Ultrasonics Laboratory 4702	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH High-Temperature Heat Treating Fac 4767	Active	\N	Huntsville	AL
Kennedy Space Center	High Bay Clean Room Complex/60680/HGR-AE	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Engineering Development Laboratory/M7-409	\N	\N	Kennedy Space Center	FL
Jet Propulsion Lab	DSS 61 Antenna	Active	\N	PASADENA	CA
Glenn Research Center	Vacuum Facility 16 (VF-16) Bldg. 16	Active	http://facilities.grc.nasa.gov/epl/index.html	Cleveland	OH
Goddard Space Flight Center	500: Mission Operations Center Facility	Active	\N	Greenbelt	MD
Glenn Research Center	Vacuum Facility 12 (VF-12) Bldg. 301	Active	http://facilities.grc.nasa.gov/epl/index.html	Cleveland	OH
Marshall Space Flight Center	Low Gravity Materials Science Facility 4550	Inactive	\N	Huntsville	AL
Kennedy Space Center	Airlock/M7-1354/PHSF	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Orbiter Processing Facility(OPF) HB 3/K6-696	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	High Bay 4 Cell/K6-848/VAB	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EV Battery Test Laboratory 4475	Active	\N	Huntsville	AL
Marshall Space Flight Center	EB Precision Optical Facility 4487	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM-20 Film Radiography Facility 4702	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH Non-Optical NDE Facility 4702	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM-20 Digital X-ray Laminography 4711	Active	\N	Huntsville	AL
Michoud Assembly Facility	Precision Cleaning Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
NASA Aircraft Management Division	WFF P-3B Research Aircraft	Active	http://wacop.wff.nasa.gov/LAAPBDesc.cfm	Washington	DC
Goddard Space Flight Center	TDRSS Control Center	Active	\N	Greenbelt	MD
NASA Aircraft Management Division	DFRC F-15B/D Research Aircraft	Active	http://www.nasa.gov/centers/dryden/aircraft/F-15B/index.html	Washington	DC
Armstrong Flight Research Center	Bldg. 4820 - Flight Loads Laboratory	Active	http://www.nasa.gov/centers/dryden/research/Facilities/FL	Edwards	CA
Wallops Flight Facility/GSFC	Wallops Orbital Tracking Station	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Jet Propulsion Lab	24 inch Telescope	Active	\N	PASADENA	CA
Glenn Research Center	Spacecraft Propulsion Test Facility (B-2), #3211	Active	\N	Cleveland	OH
Marshall Space Flight Center	ES BATSE Operations & Data Analysis Lab 4481	Active	\N	Huntsville	AL
Marshall Space Flight Center	EO Huntsville Operations Support Center 4663	Active	http://ed.msfc.nasa.gov/edinside/eo	Huntsville	AL
Ames Research Center	N238 - ARC JET LABORATORY: INTERACTION HEATING FACILITY (PAPAC)	Active	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Marshall Space Flight Center	EH Hazardous Machining Facility 4759	Active	\N	Huntsville	AL
Jet Propulsion Lab	DSS 14 Antenna	Active	\N	PASADENA	CA
Kennedy Space Center	Support Areas/M7-360/SSPF	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EL Systems and Payloads Test Facilities 4708	Active	\N	Huntsville	AL
NASA Aircraft Management Division	DFRC B-200 Super Kingair Research/Support Aircraft	Active	http://www.nasa.gov/centers/dryden/aircraft/KingAir/index.html	Washington	DC
Goddard Space Flight Center	500/WSC: Data Interface System	Active	\N	Greenbelt	MD
Wallops Flight Facility/GSFC	White Sands Missile Range	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Kennedy Space Center	Launch Equipment Shop (LES)/K6-1247	\N	\N	Kennedy Space Center	FL
Stennis Space Center	High Pressure Industrial Water Plant #4400	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Marshall Space Flight Center	Composites Development Facility 4707	Active	\N	Huntsville	AL
Glenn Research Center	Power Systems Facility, Bldg. 333 & 333A	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/psf/ind	Cleveland	OH
Michoud Assembly Facility	Machine Shop Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Marshall Space Flight Center	Vacuum Drop Tube Facility 4550	Inactive	\N	Huntsville	AL
NASA Aircraft Management Division	LaRC Cessna 206 Stationair Research Aircraft	Active	\N	Washington	DC
Michoud Assembly Facility	Port Michoud Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Marshall Space Flight Center	EI Manned Habitat ECLSS Test Facility 4755	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM Environmental Gas/Toxic Offgassing Lab, Bldg 46	Active	\N	Huntsville	AL
Langley Research Center	Infrared Detector Calib & Charac Lab (B-1202)	Active	\N	Hampton	VA
NASA Aircraft Management Division	DFRC ER-2 High Altitude Research Aircraft	Active	http://www.nasa.gov/centers/dryden/aircraft/ER-2/index.html	Washington	DC
Langley Research Center	High Heat Flux Facility	Active	\N	Hampton	VA
Kennedy Space Center	Crawler-Transporter, CT1	\N	\N	Kennedy Space Center	FL
NASA Aircraft Management Division	DFRC Gulfstream G-III Research Aircraft	Active	http://www.nasa.gov/centers/dryden/aircraft/G-III_UAVSAR/index.html	Washington	DC
Kennedy Space Center	Launch Pad 39B/J7-337	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	High Bay/Processing Area/M7-1104/MPPF	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EL Ground Control Experiment Laboratory 4708	Active	\N	Huntsville	AL
Jet Propulsion Lab	Optical Laboratories	Active	\N	PASADENA	CA
Marshall Space Flight Center	EH Frictional Heating Test System 4623	Active	\N	Huntsville	AL
Ames Research Center	N206A - 12 FOOT PRESSURE WIND TUNNEL AUXILIARIES (PAPAC)	Active	\N	Moffett Field	CA
Johnson Space Center	Spacecraft Acoustic Lab (SAL), B-49	Active	http://www.nasa.gov/centers/johnson/pdf/639503main_VATF_User_Test_Planning_Guide.pdf	Houston	TX
Kennedy Space Center	Electromagnetic Laboratory/M6-336	\N	\N	Kennedy Space Center	FL
Langley Research Center	Flight Systems Integration and Test Lab/B1250	Active	\N	Hampton	VA
Stennis Space Center	Electrical Distribution System #0010	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Langley Research Center	Low Pressure Physics Laboratory	Active	\N	Hampton	VA
Langley Research Center	Information Systems Research Facility (2)	Active	\N	Hampton	VA
Goddard Space Flight Center	Facility 225, Thermal Vacuum Chamber, B.7	Active	http://mscweb.gsfc.nasa.gov/549web	Greenbelt	MD
Kennedy Space Center	South Wing/60680/HGR-AE	\N	\N	Kennedy Space Center	FL
Johnson Space Center	Chamber A, EC, B-32	Under Rehabilitation	http://ctsdtests.jsc.nasa.gov/A.html	Houston	TX
Michoud Assembly Facility	LH2 Ablator Spray Facility	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
Marshall Space Flight Center	EH Inert Propellant Development Lab 4767	Active	\N	Huntsville	AL
Stennis Space Center	Test Facility E-1 #4050	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Kennedy Space Center	LB Cells (4) Low Bay Area/East/K6-848/VAB	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EP Hot Gas Test Facility 4554	\N	\N	Huntsville	AL
Goddard Space Flight Center	Facility 238, Thermal Vacuum Chamber, B.7	Active	http://mscweb.gsfc.nasa.gov/549web	Greenbelt	MD
Jet Propulsion Lab	Lidar Facility	Active	\N	PASADENA	CA
Ames Research Center	N237 - HYPERVELOCITY FREE FLIGHT GUN DEVELOPMENT FACILITY (PAPAC)	Inactive	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Glenn Research Center	Materials & Structures Complex (49, 105, 106,etc.)	Active	\N	Cleveland	OH
Jet Propulsion Lab	DSS 46 Antenna	Inactive	\N	PASADENA	CA
Goddard Space Flight Center	Sensor Data Processing Facility	Active	\N	Greenbelt	MD
Langley Research Center	16-Meter Thermal Vacuum Chamber	Active	\N	Hampton	VA
Goddard Space Flight Center	600: Plasma Calibration Facility	Active	\N	Greenbelt	MD
Marshall Space Flight Center	ES Laboratory for Structural Biology 4484	\N	\N	Huntsville	AL
Kennedy Space Center	Canister Rotation Facility/M7-777	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Control Room /1726/HGR-S	\N	\N	Kennedy Space Center	FL
Goddard Space Flight Center	700: Space Environment Simulator, Facility 290	Active	http://mscweb.gsfc.nasa.gov/549web	Greenbelt	MD
Marshall Space Flight Center	EH Mechanical & Corrosion Testing 4612	Active	\N	Huntsville	AL
Langley Research Center	Low Turbulence Pressure Tunnel	Inactive	http://ad-www.larc.nasa.gov/facility/photo_gallery	Hampton	VA
Glenn Research Center	9 X 15 Low Speed Wind Tunnel, Bldg. 39	Active	http://facilities.grc.nasa.gov/9x15/index.html	Cleveland	OH
Marshall Space Flight Center	EP Test Facility (TF116) 4540	Active	http://rockettest.nasa.gov	Huntsville	AL
Stennis Space Center	Propellant Transfer & Storage Facility #3414	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Marshall Space Flight Center	EV LAB 1/2 Mile Antenna Test Range 4194	Active	\N	Huntsville	AL
Kennedy Space Center	Central Supply Warehouse (M6-744)	\N	\N	Kennedy Space Center	FL
Langley Research Center	Quality Assurance & Inspection Lab/1232A	Active	\N	Hampton	VA
Marshall Space Flight Center	Filament Winding Lab 4707	Active	\N	Huntsville	AL
Kennedy Space Center	Processing Control Center/K6-1094	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EB Solar Array Test Facility 4475	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH Vacuum Plasma Spray Facility 4707	Active	\N	Huntsville	AL
Marshall Space Flight Center	EH SRB-TPS (Thermal Protection Sys) Dev. 470	Active	\N	Huntsville	AL
Kennedy Space Center	High Bay 2 Cell/K6-848/VAB	Active	\N	Kennedy Space Center	FL
Kennedy Space Center	High Bay/M7-360/SSPF	\N	\N	Kennedy Space Center	FL
Langley Research Center	Flight Research Facility	Active	\N	Hampton	VA
Stennis Space Center	Engine Processing Building #3202	Inactive	http://rockettest.nasa.gov	Stennis Space Center	MS
Marshall Space Flight Center	Propulsion Research and Development Laboratory	Active	\N	Huntsville	AL
Jet Propulsion Lab	Large Shaker Dynamics Test Facility	Active	http://etl.jpl.nasa.gov	PASADENA	CA
Stennis Space Center	Repair, Fab. & Fluid Component Proc. #2201,2205,5A	Active	\N	Stennis Space Center	MS
Glenn Research Center	Propulsion Systems Laboratory, Bldg. 125	Active	http://facilities.grc.nasa.gov/psl/	Cleveland	OH
NASA Aircraft Management Division	WFF C-23 Sherpa Airborne Research Aircraft	Active	http://airbornescience.nasa.gov/aircraft/C-23_Sherpa	Washington	DC
Langley Research Center	Ceramic & Glass Laboratory (B-1237A)	Active	\N	Hampton	VA
Jet Propulsion Lab	Frequency Standards Laboratory	Active	\N	PASADENA	CA
Kennedy Space Center	SRM Rotation and Processing Facility/K6-0494	\N	\N	Kennedy Space Center	FL
Stennis Space Center	Test Facility E-2 #4001	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Glenn Research Center	Small Multi-Purpose Research Facility	Active	http://facilities.grc.nasa.gov/smirf/capabilities.html	Cleveland	OH
Glenn Research Center	Hypersonic Tunnel Facility (HTF), #3411	Active	http://adam.lerc.nasa.gov/PlumBrookStation/htf.htm	Cleveland	OH
Kennedy Space Center	HMF Storage Building East/M7-1412	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EH Ceramics Coatings & High Temp Mat.Lab 4612	Active	\N	Huntsville	AL
Kennedy Space Center	HMF South Processing Bldg/East High Bay/M7-1212	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EH Environmental Replacement Tech. Lab 4707	Active	\N	Huntsville	AL
Goddard Space Flight Center	500: NASA Communications Facility (NASCOM), B. 3	Active	\N	Greenbelt	MD
Goddard Space Flight Center	700: Cryogenic Research and Integration Facility	Active	\N	Greenbelt	MD
Ames Research Center	N204A - SPACE TECHNOLOGY BUILDING: AMES VERTICAL GUN RANGE (PAPAC)	Active	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Stennis Space Center	Test Facility E-3 #4071	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Marshall Space Flight Center	EI Space Systems Integration and Test Facility 4	Active	\N	Huntsville	AL
Goddard Space Flight Center	500 Flight Dynamics Facility	Active	\N	Greenbelt	MD
Langley Research Center	Helicopter Hover Facility/647	Active	\N	Hampton	VA
Glenn Research Center	Reverberant Acoustic Test Facility (RATF)	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/spf/index.html	Cleveland	OH
Jet Propulsion Lab	Thermal-Vacuum Chamber 144-TV-7	Active	http://etl.jpl.nasa.gov	PASADENA	CA
Glenn Research Center	Electro Magnetic Interference (EMI) Lab	Active	http://facilities.grc.nasa.gov/emi/index.html	Cleveland	OH
Kennedy Space Center	Payload Support Facility/M7-505	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Airlock/M7-360/SSPF	\N	\N	Kennedy Space Center	FL
Goddard Space Flight Center	500: NASA Communications Facility (NASCOM), B.14	Active	\N	Greenbelt	MD
Kennedy Space Center	Payload Shipping Container (Hubble) (P70-0870)	\N	\N	Kennedy Space Center	FL
Glenn Research Center	8 x 6 Supersonic Wind Tunnel, Bldgs. 39, 53 & 54	Active	http://facilities.grc.nasa.gov/8x6/index.html	Cleveland	OH
Jet Propulsion Lab	DSS 24 Antenna	Active	\N	PASADENA	CA
Marshall Space Flight Center	ET Acoustic Test Facility 4619	Active	\N	Huntsville	AL
Marshall Space Flight Center	ES Dist Active Archive Center 917 Expl. Blvd.	\N	\N	Huntsville	AL
Goddard Space Flight Center	700: Environmental Test Engineering & Integration	Active	\N	Greenbelt	MD
Marshall Space Flight Center	ES Earth Science & Appl.Computer Facility 4492	\N	\N	Huntsville	AL
Michoud Assembly Facility	Major Component Cleaning Facility	Inactive	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
NASA Aircraft Management Division	LaRC HU-25C Falcon Research Aircraft	Active	http://airbornescience.nasa.gov/aircraft/HU-25C_Falcon	Washington	DC
Langley Research Center	Unitary Plan Wind Tunnel	Active	http://www.aeronautics.nasa.gov/atp/index.html	Hampton	VA
Marshall Space Flight Center	EP Test Cells 4583	Active	\N	Huntsville	AL
Kennedy Space Center	Logistics Facility/K6-1547/Shuttle	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Emergency Landing Sites (ELS) High Inclination 	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EM-20 Phased Array Ultrasonic Laboratory 4702	Active	\N	Huntsville	AL
Kennedy Space Center	Operations and Checkout West Vacuum Chamber	Inactive	\N	Kennedy Space Center	FL
Kennedy Space Center	Radioisotope Thermal Generator Facility/M7-1472	\N	\N	Kennedy Space Center	FL
Langley Research Center	Hypersonic Propulsion Facility	Active	\N	Hampton	VA
Langley Research Center	Transonic Dynamics Tunnel	Active	http://www.aeronautics.nasa.gov/atp/index.html	Hampton	VA
Kennedy Space Center	LPS Central Data Subsystem Area/2nd Flr/K6-900/LCC	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EM Impact Testing Facility 4571, 4612	Active	\N	Huntsville	AL
Goddard Space Flight Center	500 WSC: Antenna, 19m S/Ku-band	Active	\N	Greenbelt	MD
Marshall Space Flight Center	EH Surface Treatment Facility 4760	Active	\N	Huntsville	AL
Marshall Space Flight Center	ET Test Facility (TS300) 4530	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM Metrology Laboratory, Building 4711	Active	\N	Huntsville	AL
Jet Propulsion Lab	Energy Conservation Laboratory Patio Chamber	Active	\N	PASADENA	CA
Marshall Space Flight Center	EH Heat Treat Shop 4704	Active	\N	Huntsville	AL
Kennedy Space Center	RPSF Support Building/K6-0495	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EI MSFC Electromagnetic Interference (EMI) Test Fa	Active	\N	Huntsville	AL
Kennedy Space Center	Central Frame Low Bay/60680/HGR-AE	\N	\N	Kennedy Space Center	FL
Glenn Research Center	Space Power Facility (SPF), Bldg. 1411	Active	http://facilities.grc.nasa.gov/spf/	Cleveland	OH
Kennedy Space Center	RPSF Surge Building #1/K6-0497	\N	\N	Kennedy Space Center	FL
Ames Research Center	N237 - HYPERVELOCITY FREE FLIGHT AERODYNAMIC FACILITY (PAPAC)	Active	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Langley Research Center	Jet Noise Laboratory	Active	\N	Hampton	VA
NASA Aircraft Management Division	ARC Scientific Instrumentation Evaluation Remote Research Aircraft (SIERRA)	Active	\N	Washington	DC
Marshall Space Flight Center	ET Structural Dynamics Control Facility 4619	Active	\N	Huntsville	AL
Glenn Research Center	Structural Dynamics Laboratory, Bldg. 56	Active	http://facilities.grc.nasa.gov/sdl/index.html	Cleveland	OH
Jet Propulsion Lab	10-Ft Vertical Space Simulator	Inactive	http://etl.jpl.nasa.gov	PASADENA	CA
Glenn Research Center	Vacuum Facility 7 (VF-7) Bldg. 16	Active	http://facilities.grc.nasa.gov/epl/index.html	Cleveland	OH
Kennedy Space Center	Headquarters Building/M6-399	Active	\N	Kennedy Space Center	FL
Marshall Space Flight Center	ES Low Energy Ion Facility 4481	Active	\N	Huntsville	AL
Jet Propulsion Lab	CTA-21	Active	\N	PASADENA	CA
Marshall Space Flight Center	ET Pyrotechnic Shock Test Facility 4619	Active	\N	Huntsville	AL
Langley Research Center	Research Laboratory	Active	\N	Hampton	VA
Marshall Space Flight Center	EP Propulsion Technology Test Facility 4670	\N	\N	Huntsville	AL
Marshall Space Flight Center	EH Spray-On Foam Insulation (SOFI) Lab 4707	Active	\N	Huntsville	AL
Glenn Research Center	Plumbrook Engineering Building	Active	\N	Cleveland	OH
Goddard Space Flight Center	900: NASA Center for Computational Sciences/ B. 28	Active	\N	Greenbelt	MD
Marshall Space Flight Center	ED Coldflow R & D Test Complex 4776	Active	\N	Huntsville	AL
Langley Research Center	National Transonic Facility	Active	http://www.aeronautics.nasa.gov/atp/index.html	Hampton	VA
Marshall Space Flight Center	EP Solid Propulsion Test Facility 4520	Active	\N	Huntsville	AL
Wallops Flight Facility/GSFC	Launch Range	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Glenn Research Center	Electric Power Lab - Vacuum Facility 5 (VF-5)	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/capabilities/spacesim_lewis.html	Cleveland	OH
Marshall Space Flight Center	EP Data Recording and Control Facility 4674	Active	\N	Huntsville	AL
Kennedy Space Center	SLF: KSC Shuttle Landing Facility, UK-27	Active	\N	Kennedy Space Center	FL
Marshall Space Flight Center	EH Computer Aided Design (CAD)Room 4708	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM Electrostatic Levitator Materials Characterizat	Active	\N	Huntsville	AL
Goddard Space Flight Center	700: Global Positioning System (GPS) Verification	Active	\N	Greenbelt	MD
Goddard Space Flight Center	Vibration Test Facility - Exciter 2	Active	http://mscweb.gsfc.nasa.gov/549web	Greenbelt	MD
Ames Research Center	N234A - THERMAL PROTECTION LAB BOILER: STEAM VACUUM SYSTEM (PAPAC)	Active	http://thermo-physics.arc.nasa.gov	Moffett Field	CA
Langley Research Center	Vibration Laboratory	Active	http://engineering.larc.nasa.gov/vibration_lab.html	Hampton	VA
Langley Research Center	Metal Technology Development Lab/1232A	Active	\N	Hampton	VA
Kennedy Space Center	Orbiter Processing Facility(OPF) Annex/K6-894	\N	\N	Kennedy Space Center	FL
Jet Propulsion Lab	DSS 43 Antenna	Active	\N	PASADENA	CA
Jet Propulsion Lab	DSS 13 Antenna	Active	\N	PASADENA	CA
Langley Research Center	Experimental Test Range	Active	\N	Hampton	VA
Kennedy Space Center	Mobile Launcher Platform 2	\N	\N	Kennedy Space Center	FL
Goddard Space Flight Center	700: SSDIF Clean Room, B.29	Active	\N	Greenbelt	MD
Jet Propulsion Lab	Computer Vision Lab.	Active	\N	PASADENA	CA
Goddard Space Flight Center	500: Space-Ground Link Terminal	Active	\N	Greenbelt	MD
Marshall Space Flight Center	EH Rubber Fabrication Laboratory 4612	Active	\N	Huntsville	AL
Glenn Research Center	Mechanical Vibration Facility	Active	http://www.grc.nasa.gov/WWW/Facilities/ext/spf/index.html	Cleveland	OH
Stennis Space Center	Industrial Water Reservoir #4325	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
NASA Aircraft Management Division	DFRC F/A-18 Research Aircraft	Active	http://www.nasa.gov/centers/dryden/aircraft/F-18_853/index.html	Washington	DC
Marshall Space Flight Center	EH Low Pressure Flammability Test Sys. 4623	Active	\N	Huntsville	AL
Marshall Space Flight Center	EV Engine Hardware Simulation Laboratory, 4436	Active	\N	Huntsville	AL
Marshall Space Flight Center	EM Contamination Control Laboratories 4711	Active	\N	Huntsville	AL
Michoud Assembly Facility	Component Ablator Facility SLA Spray Room	Active	http://mafbusiness.msfc.nasa.gov/	New Orleans	LA
NASA Aircraft Management Division	LaRC OV-10G Research Aircraft	Inactive	\N	Washington	DC
Marshall Space Flight Center	Stray Light Vacuum Chamber Facility 4487	Active	\N	Huntsville	AL
Kennedy Space Center	ASRM Kneel Down Transporter 	\N	\N	Kennedy Space Center	FL
Marshall Space Flight Center	V20 Thermal Vacuum Chamber - 4619	Active	\N	Huntsville	AL
Marshall Space Flight Center	Fiber Placement Fac 4707	Active	\N	Huntsville	AL
Kennedy Space Center	Utility Annex/K6-947/VAB AREA	\N	\N	Kennedy Space Center	FL
Stennis Space Center	Canals, Lock & Dock System #0036,2310,2311,2317	Active	http://rockettest.nasa.gov	Stennis Space Center	MS
Kennedy Space Center	Support Areas/1726/HGR-S	\N	\N	Kennedy Space Center	FL
Jet Propulsion Lab	25-Ft Space Simulator	Active	http://etl.jpl.nasa.gov	PASADENA	CA
Jet Propulsion Lab	Robotic Vehicle Lab	Active	\N	PASADENA	CA
Marshall Space Flight Center	ED Water Flow Inducer Test Loop 4777	Active	\N	Huntsville	AL
Langley Research Center	Productivity Enhancement Lab (B-1232A)	Active	\N	Hampton	VA
Langley Research Center	Instrument Research Lab/1230	Active	\N	Hampton	VA
Marshall Space Flight Center	ET Large Structure Quasi-Static Load Fac 4619	Active	\N	Huntsville	AL
Glenn Research Center	Combustion and Aerochemistry Technology Facilities	Active	http://facilities.grc.nasa.gov/erb/index.html	Cleveland	OH
Marshall Space Flight Center	EB Audio Reverberant Facility 4477	Active	\N	Huntsville	AL
Kennedy Space Center	HMF South Processing Bldg/West High Bay/M7-1212	\N	\N	Kennedy Space Center	FL
Kennedy Space Center	Ordnance Storage Fac/K7-255,-306,-356,-405,-506	\N	\N	Kennedy Space Center	FL
Wallops Flight Facility/GSFC	WFF Research Airport	Active	http://www.nasa.gov/centers/wallops	Wallops Island	VA
Kennedy Space Center	RPSF Shop/Storage Building/K6-0446	\N	\N	Kennedy Space Center	FL
Langley Research Center	Intelligent Sys Res Lab/Hydrau Manipulator Testbed	Active	\N	Hampton	VA
Armstrong Flight Research Center	Bldg. 4800 - Research Development & Test Facility	Active	http://www.nasa.gov/centers/dryden/home/index.html	Edwards	CA
\.


--
-- PostgreSQL database dump complete
--

