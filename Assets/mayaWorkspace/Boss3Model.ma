//Maya ASCII 2024 scene
//Name: Boss3Model.ma
//Last modified: Sat, Mar 21, 2026 02:35:07 PM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "7FC64B61-4566-1758-6410-649B09B267A7";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "51BF0343-4859-E2CD-E426-668A06D50FBB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 361.63694064610485 403.28403320526934 -149.878308309815 ;
	setAttr ".r" -type "double3" -38.73835272929287 -961.80000000018958 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "B6E21311-434F-8185-1B4E-ECB0EBDB6D4C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 416.1797112933902;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 84.692831319965734 108.54868620810437 -55.995643781706249 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4BD0B29A-44D5-B422-3B8D-4781AA80A973";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1724111D-4A2D-1AA7-46F8-1D8EFAC9E37E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "442B2904-4ACE-B57E-8016-34938CF31809";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1A6D5A7C-480E-F09D-0D08-95A71FE5164E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "16A360BE-4ECE-D14C-2276-899939FCC3F2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "3632E776-4084-1345-9DEB-00BB6753592B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "monitor1";
	rename -uid "4927A851-42A7-C4F7-2888-8D873403BC31";
	setAttr ".t" -type "double3" 100 116.08992510159729 -152.97675017456268 ;
	setAttr ".s" -type "double3" 9.817906165018627 67.940801930050796 102.93132818790228 ;
createNode mesh -n "monitorShape1" -p "monitor1";
	rename -uid "AA8A2855-46DF-1B53-9CF3-5EA04EE4E4C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[16]" -type "float3" -0.7836566 0.13520354 0.13520357 ;
	setAttr ".pt[17]" -type "float3" -0.7836566 0.13520354 -0.13520357 ;
	setAttr ".pt[18]" -type "float3" -0.7836566 -0.13520354 -0.13520357 ;
	setAttr ".pt[19]" -type "float3" -0.7836566 -0.13520354 0.13520357 ;
createNode transform -n "serverRack";
	rename -uid "BC98445C-4626-240F-744A-8480BDC310F1";
	setAttr ".t" -type "double3" 100 6.2507057956772591 0 ;
	setAttr ".s" -type "double3" 72.006573163781439 2.5627644743280182 72.006573163781439 ;
createNode mesh -n "serverRackShape" -p "serverRack";
	rename -uid "02BCFC46-4E92-9017-732D-E4B9E1AF9F83";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSix";
	rename -uid "F9451913-41E8-CA7D-DA14-139823553E75";
	setAttr ".rp" -type "double3" 0 0.0048522008582949638 0 ;
	setAttr ".sp" -type "double3" 0 0.0048522008582949638 0 ;
createNode mesh -n "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape" -p "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSix";
	rename -uid "4CB4A6F1-497C-EDB2-C917-A4AA51206DA6";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[5:8]" "f[25]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[2]" "f[9:12]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 2 "f[0:1]" "f[3:4]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "f[21:24]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "f[17:20]";
	setAttr ".iog[0].og[5].gcl" -type "componentList" 1 "f[13:16]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.375 0 0.625 0 0.375
		 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.125 0 0.625 0.15625 0.375 0.15625 0.125
		 0.15625 0.375 0.59375 0.625 0.59375 0.875 0.15625 0.625 0.125 0.375 0.125 0.125 0.125
		 0.375 0.625 0.625 0.625 0.875 0.125 0.625 0.09375 0.375 0.09375 0.125 0.09375 0.375
		 0.65625 0.625 0.65625 0.875 0.09375 0.625 0.062499996 0.375 0.062499996 0.125 0.062499996
		 0.375 0.6875 0.625 0.6875 0.875 0.062499996 0.625 0.031249998 0.375 0.031249998 0.125
		 0.031249998 0.375 0.71875 0.625 0.71875 0.875 0.031249998 0.625 0.171875 0.375 0.171875
		 0.25 0.375 0.75 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 28 ".pt[0:27]" -type "float3"  -30.92421 0.013742351 -15.633545 
		29.207108 0.013742351 -15.633545 -30.92421 0.013742351 -75.700928 29.207108 0.013742351 
		-75.700928 29.207108 150.07666 -15.633545 -30.92421 150.07666 -15.633545 -30.92421 
		150.07666 -75.700928 29.207108 150.07666 -75.700928 29.207108 120.06408 -15.633545 
		-30.92421 120.06408 -15.633545 -30.92421 120.06408 -75.700928 29.207108 120.06408 
		-75.700928 29.207108 90.051506 -15.633545 -30.92421 90.051506 -15.633545 -30.92421 
		90.051506 -75.700928 29.207108 90.051506 -75.700928 29.207108 60.038918 -15.633545 
		-30.92421 60.038918 -15.633545 -30.92421 60.038918 -75.700928 29.207108 60.038918 
		-75.700928 29.207108 30.026325 -15.633545 -30.92421 30.026325 -15.633545 -30.92421 
		30.026325 -75.700928 29.207108 30.026325 -75.700928 29.207108 165.08296 -15.633545 
		-30.92421 165.08296 -15.633545 -30.92421 165.08296 -75.700928 29.207108 165.08296 
		-75.700928;
	setAttr -s 28 ".vt[0:27]"  0.35855776 -0.0088901501 46.16734314 1.3585577 -0.0088901501 46.16734314
		 0.35855776 -0.0088901501 45.16734314 1.3585577 -0.0088901501 45.16734314 1.3585577 2.27217269 46.16734314
		 0.35855776 2.27217269 46.16734314 0.35855776 2.27217269 45.16734314 1.3585577 2.27217269 45.16734314
		 1.3585577 1.81596017 46.16734314 0.35855776 1.81596017 46.16734314 0.35855776 1.81596017 45.16734314
		 1.3585577 1.81596017 45.16734314 1.3585577 1.35974765 46.16734314 0.35855776 1.35974765 46.16734314
		 0.35855776 1.35974765 45.16734314 1.3585577 1.35974765 45.16734314 1.3585577 0.90353507 46.16734314
		 0.35855776 0.90353507 46.16734314 0.35855776 0.90353507 45.16734314 1.3585577 0.90353507 45.16734314
		 1.3585577 0.4473224 46.16734314 0.35855776 0.4473224 46.16734314 0.35855776 0.4473224 45.16734314
		 1.3585577 0.4473224 45.16734314 1.3585577 2.50027895 46.16734314 0.35855776 2.50027895 46.16734314
		 0.35855776 2.50027895 45.16734314 1.3585577 2.50027895 45.16734314;
	setAttr -s 52 ".ed[0:51]"  0 1 0 2 3 0 0 21 0 1 20 0 2 0 0 3 1 0 4 24 0
		 5 25 0 4 5 1 6 10 0 5 6 1 7 11 0 6 7 1 7 4 1 8 4 0 9 5 0 8 9 1 10 14 0 9 10 1 11 15 0
		 10 11 1 11 8 1 12 8 0 13 9 0 12 13 1 14 18 0 13 14 1 15 19 0 14 15 1 15 12 1 16 12 0
		 17 13 0 16 17 1 18 22 0 17 18 1 19 23 0 18 19 1 19 16 1 20 16 0 21 17 0 20 21 1 22 2 0
		 21 22 1 23 3 0 22 23 1 23 20 1 24 25 0 26 6 0 25 26 0 27 7 0 26 27 0 27 24 0;
	setAttr -s 26 -ch 104 ".fc[0:25]" -type "polyFaces" 
		f 4 0 3 40 -3
		mu 0 4 0 1 32 33
		f 4 44 43 -2 -42
		mu 0 4 35 36 3 2
		f 4 1 5 -1 -5
		mu 0 4 2 3 5 4
		f 4 -6 -44 45 -4
		mu 0 4 1 6 37 32
		f 4 4 2 42 41
		mu 0 4 7 0 33 34
		f 4 -9 6 46 -8
		mu 0 4 9 8 38 39
		f 4 -11 7 48 47
		mu 0 4 10 9 39 40
		f 4 50 49 -13 -48
		mu 0 4 40 41 12 11
		f 4 -14 -50 51 -7
		mu 0 4 8 13 41 38
		f 4 -17 14 8 -16
		mu 0 4 15 14 8 9
		f 4 -19 15 10 9
		mu 0 4 16 15 9 10
		f 4 12 11 -21 -10
		mu 0 4 11 12 18 17
		f 4 -22 -12 13 -15
		mu 0 4 14 19 13 8
		f 4 -25 22 16 -24
		mu 0 4 21 20 14 15
		f 4 -27 23 18 17
		mu 0 4 22 21 15 16
		f 4 20 19 -29 -18
		mu 0 4 17 18 24 23
		f 4 -30 -20 21 -23
		mu 0 4 20 25 19 14
		f 4 -33 30 24 -32
		mu 0 4 27 26 20 21
		f 4 -35 31 26 25
		mu 0 4 28 27 21 22
		f 4 28 27 -37 -26
		mu 0 4 23 24 30 29
		f 4 -38 -28 29 -31
		mu 0 4 26 31 25 20
		f 4 -41 38 32 -40
		mu 0 4 33 32 26 27
		f 4 -43 39 34 33
		mu 0 4 34 33 27 28
		f 4 36 35 -45 -34
		mu 0 4 29 30 36 35
		f 4 -46 -36 37 -39
		mu 0 4 32 37 31 26
		f 4 -47 -52 -51 -49
		mu 0 4 39 38 41 40;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "proxyAxorr_fiveFootSix:polySurfaceShape1" -p "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSix";
	rename -uid "42BC3E1E-41D3-3FFE-0040-90A387188112";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.8585577 2.7411098 45.667343 
		0.8585577 2.7411098 45.667343 0.8585577 0.89081049 45.667343 0.8585577 0.89081049 
		45.667343 0.8585577 0.89081049 45.667343 0.8585577 0.89081049 45.667343 0.8585577 
		2.7411098 45.667343 0.8585577 2.7411098 45.667343;
	setAttr -s 8 ".vt[0:7]"  -0.5 -2.75 0.5 0.5 -2.75 0.5 -0.5 2.75 0.5
		 0.5 2.75 0.5 -0.5 2.75 -0.5 0.5 2.75 -0.5 -0.5 -2.75 -0.5 0.5 -2.75 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "powerSupply";
	rename -uid "8AA00123-4FE3-07FD-A196-209732CD0CBF";
	setAttr ".t" -type "double3" 98.370412310808291 21.438104449190526 0 ;
	setAttr ".s" -type "double3" 65.568841159766706 30.884699889592156 63.062153725031173 ;
	setAttr ".rp" -type "double3" 0 -13.906016646303565 0 ;
	setAttr ".sp" -type "double3" 0 -0.50000001043279219 0 ;
	setAttr ".spt" -type "double3" 0 -13.406016635870891 0 ;
createNode mesh -n "powerSupplyShape" -p "powerSupply";
	rename -uid "060F00B7-4893-3380-F129-89876508E295";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.6666666567325592 0.1875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[88]" -type "float3" -0.020022469 0 0 ;
	setAttr ".pt[89]" -type "float3" -0.020022469 0 0 ;
	setAttr ".pt[90]" -type "float3" -0.020022469 0 0 ;
	setAttr ".pt[91]" -type "float3" -0.020022469 0 0 ;
	setAttr ".pt[92]" -type "float3" -0.020022469 0 0 ;
	setAttr ".pt[93]" -type "float3" -0.020022469 0 0 ;
createNode transform -n "server1";
	rename -uid "22521653-4DBA-0B2C-EC5F-D0BDA68FCEC7";
	setAttr ".t" -type "double3" 101.3620398998397 47.702696841603043 0 ;
	setAttr ".s" -type "double3" 60.770104762527815 10.496045353066597 62.416993455330591 ;
	setAttr ".rp" -type "double3" 0 -3.9911871370132026 0 ;
	setAttr ".sp" -type "double3" 0 -0.49999984566329125 0 ;
	setAttr ".spt" -type "double3" 0 -3.4911872913499149 0 ;
createNode mesh -n "serverShape1" -p "server1";
	rename -uid "06D264E5-42D8-8562-695C-36983C0F0DAF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5000000074505806 0.41249999403953552 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[16]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[17]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[18]" -type "float3" -0.025433483 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.025433483 0 0 ;
createNode transform -n "server2";
	rename -uid "23D1693E-43F8-7309-C29E-B6B7F05FBB43";
	setAttr ".t" -type "double3" 101.3620398998397 62.225619357472191 0 ;
	setAttr ".s" -type "double3" 60.770104762527815 10.496045353066597 62.416993455330591 ;
	setAttr ".rp" -type "double3" 0 -3.9911871370132026 0 ;
	setAttr ".sp" -type "double3" 0 -0.49999984566329125 0 ;
	setAttr ".spt" -type "double3" 0 -3.4911872913499149 0 ;
createNode mesh -n "serverShape2" -p "server2";
	rename -uid "334C9EB9-45B7-D347-D238-99BCED757EEB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5:6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[8]" "f[10:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".pv" -type "double2" 0.5000000074505806 0.41249999403953552 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.2 0.25 0.375 0.42500001 0.2 0 0.375 0.82499999 0.625
		 0.82499999 0.80000001 0 0.625 0.42500001 0.80000001 0.25 0.80000001 0.25 0.80000001
		 0 0.875 0 0.875 0.25 0.80000001 0.25 0.80000001 0 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[16]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[17]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[18]" -type "float3" -0.025433483 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.025433483 0 0 ;
	setAttr -s 20 ".vt[0:19]"  -0.49999988 -0.50000048 0.49999994 0.5 -0.50000048 0.49999994
		 -0.49999988 0.5 0.49999994 0.5 0.5 0.49999994 -0.49999988 0.5 -0.49999994 0.5 0.5 -0.49999994
		 -0.49999988 -0.50000048 -0.49999994 0.5 -0.50000048 -0.49999994 -0.49999988 0.5 -0.19999996
		 -0.49999988 -0.50000048 -0.19999996 0.5 -0.50000048 -0.19999996 0.5 0.5 -0.19999996
		 0.5 -0.39469194 -0.23159257 0.5 0.39469099 -0.23159257 0.5 -0.39469194 -0.46840736
		 0.5 0.39469099 -0.46840736 0.5 -0.39469194 -0.23159257 0.5 0.39469099 -0.23159257
		 0.5 -0.39469194 -0.46840736 0.5 0.39469099 -0.46840736;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 8 0
		 3 11 0 4 6 0 5 7 0 6 9 0 7 10 0 8 4 0 9 0 0 10 1 0 11 5 0 8 9 1 9 10 1 10 11 0 11 8 1
		 10 12 0 11 13 0 12 13 0 7 14 0 14 12 0 5 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 19 -7
		mu 0 4 2 3 20 15
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 17 14 -1 -14
		mu 0 4 17 18 9 8
		f 4 -15 18 -8 -6
		mu 0 4 1 19 21 3
		f 4 16 13 4 6
		mu 0 4 14 16 0 2
		f 4 10 -17 12 8
		mu 0 4 12 16 14 13
		f 4 3 11 -18 -11
		mu 0 4 6 7 18 17
		f 4 -31 -33 -35 -36
		mu 0 4 26 27 28 29
		f 4 -20 15 -3 -13
		mu 0 4 15 20 5 4
		f 4 -19 20 22 -22
		mu 0 4 21 19 23 22
		f 4 -12 23 24 -21
		mu 0 4 19 10 24 23
		f 4 -10 25 26 -24
		mu 0 4 10 11 25 24
		f 4 -16 21 27 -26
		mu 0 4 11 21 22 25
		f 4 -23 28 30 -30
		mu 0 4 22 23 27 26
		f 4 -25 31 32 -29
		mu 0 4 23 24 28 27
		f 4 -27 33 34 -32
		mu 0 4 24 25 29 28
		f 4 -28 29 35 -34
		mu 0 4 25 22 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "server3";
	rename -uid "F14DBCB5-4300-E6C5-7D7B-B8BFA5828E03";
	setAttr ".t" -type "double3" 101.3620398998397 76.748526614552262 0 ;
	setAttr ".s" -type "double3" 60.770104762527815 10.496045353066597 62.416993455330591 ;
	setAttr ".rp" -type "double3" 0 -3.9911871370132026 0 ;
	setAttr ".sp" -type "double3" 0 -0.49999984566329125 0 ;
	setAttr ".spt" -type "double3" 0 -3.4911872913499149 0 ;
createNode mesh -n "serverShape3" -p "server3";
	rename -uid "F7E8FABC-42C2-329E-0BAD-57AFDAC957F6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5:6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[8]" "f[10:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".pv" -type "double2" 0.5000000074505806 0.41249999403953552 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.2 0.25 0.375 0.42500001 0.2 0 0.375 0.82499999 0.625
		 0.82499999 0.80000001 0 0.625 0.42500001 0.80000001 0.25 0.80000001 0.25 0.80000001
		 0 0.875 0 0.875 0.25 0.80000001 0.25 0.80000001 0 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[16]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[17]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[18]" -type "float3" -0.025433483 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.025433483 0 0 ;
	setAttr -s 20 ".vt[0:19]"  -0.49999988 -0.50000048 0.49999994 0.5 -0.50000048 0.49999994
		 -0.49999988 0.5 0.49999994 0.5 0.5 0.49999994 -0.49999988 0.5 -0.49999994 0.5 0.5 -0.49999994
		 -0.49999988 -0.50000048 -0.49999994 0.5 -0.50000048 -0.49999994 -0.49999988 0.5 -0.19999996
		 -0.49999988 -0.50000048 -0.19999996 0.5 -0.50000048 -0.19999996 0.5 0.5 -0.19999996
		 0.5 -0.39469194 -0.23159257 0.5 0.39469099 -0.23159257 0.5 -0.39469194 -0.46840736
		 0.5 0.39469099 -0.46840736 0.5 -0.39469194 -0.23159257 0.5 0.39469099 -0.23159257
		 0.5 -0.39469194 -0.46840736 0.5 0.39469099 -0.46840736;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 8 0
		 3 11 0 4 6 0 5 7 0 6 9 0 7 10 0 8 4 0 9 0 0 10 1 0 11 5 0 8 9 1 9 10 1 10 11 0 11 8 1
		 10 12 0 11 13 0 12 13 0 7 14 0 14 12 0 5 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 19 -7
		mu 0 4 2 3 20 15
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 17 14 -1 -14
		mu 0 4 17 18 9 8
		f 4 -15 18 -8 -6
		mu 0 4 1 19 21 3
		f 4 16 13 4 6
		mu 0 4 14 16 0 2
		f 4 10 -17 12 8
		mu 0 4 12 16 14 13
		f 4 3 11 -18 -11
		mu 0 4 6 7 18 17
		f 4 -31 -33 -35 -36
		mu 0 4 26 27 28 29
		f 4 -20 15 -3 -13
		mu 0 4 15 20 5 4
		f 4 -19 20 22 -22
		mu 0 4 21 19 23 22
		f 4 -12 23 24 -21
		mu 0 4 19 10 24 23
		f 4 -10 25 26 -24
		mu 0 4 10 11 25 24
		f 4 -16 21 27 -26
		mu 0 4 11 21 22 25
		f 4 -23 28 30 -30
		mu 0 4 22 23 27 26
		f 4 -25 31 32 -29
		mu 0 4 23 24 28 27
		f 4 -27 33 34 -32
		mu 0 4 24 25 29 28
		f 4 -28 29 35 -34
		mu 0 4 25 22 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "server4";
	rename -uid "20483C3B-43FC-F1EB-5D55-9F833A7876E9";
	setAttr ".t" -type "double3" 101.3620398998397 91.271445315724137 0 ;
	setAttr ".s" -type "double3" 60.770104762527815 10.496045353066597 62.416993455330591 ;
	setAttr ".rp" -type "double3" 0 -3.9911871370132026 0 ;
	setAttr ".sp" -type "double3" 0 -0.49999984566329125 0 ;
	setAttr ".spt" -type "double3" 0 -3.4911872913499149 0 ;
createNode mesh -n "serverShape4" -p "server4";
	rename -uid "8AD8D7AC-42A7-7A6D-C530-618AE400E992";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5:6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[8]" "f[10:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".pv" -type "double2" 0.5000000074505806 0.41249999403953552 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.2 0.25 0.375 0.42500001 0.2 0 0.375 0.82499999 0.625
		 0.82499999 0.80000001 0 0.625 0.42500001 0.80000001 0.25 0.80000001 0.25 0.80000001
		 0 0.875 0 0.875 0.25 0.80000001 0.25 0.80000001 0 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[16]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[17]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[18]" -type "float3" -0.025433483 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.025433483 0 0 ;
	setAttr -s 20 ".vt[0:19]"  -0.49999988 -0.50000048 0.49999994 0.5 -0.50000048 0.49999994
		 -0.49999988 0.5 0.49999994 0.5 0.5 0.49999994 -0.49999988 0.5 -0.49999994 0.5 0.5 -0.49999994
		 -0.49999988 -0.50000048 -0.49999994 0.5 -0.50000048 -0.49999994 -0.49999988 0.5 -0.19999996
		 -0.49999988 -0.50000048 -0.19999996 0.5 -0.50000048 -0.19999996 0.5 0.5 -0.19999996
		 0.5 -0.39469194 -0.23159257 0.5 0.39469099 -0.23159257 0.5 -0.39469194 -0.46840736
		 0.5 0.39469099 -0.46840736 0.5 -0.39469194 -0.23159257 0.5 0.39469099 -0.23159257
		 0.5 -0.39469194 -0.46840736 0.5 0.39469099 -0.46840736;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 8 0
		 3 11 0 4 6 0 5 7 0 6 9 0 7 10 0 8 4 0 9 0 0 10 1 0 11 5 0 8 9 1 9 10 1 10 11 0 11 8 1
		 10 12 0 11 13 0 12 13 0 7 14 0 14 12 0 5 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 19 -7
		mu 0 4 2 3 20 15
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 17 14 -1 -14
		mu 0 4 17 18 9 8
		f 4 -15 18 -8 -6
		mu 0 4 1 19 21 3
		f 4 16 13 4 6
		mu 0 4 14 16 0 2
		f 4 10 -17 12 8
		mu 0 4 12 16 14 13
		f 4 3 11 -18 -11
		mu 0 4 6 7 18 17
		f 4 -31 -33 -35 -36
		mu 0 4 26 27 28 29
		f 4 -20 15 -3 -13
		mu 0 4 15 20 5 4
		f 4 -19 20 22 -22
		mu 0 4 21 19 23 22
		f 4 -12 23 24 -21
		mu 0 4 19 10 24 23
		f 4 -10 25 26 -24
		mu 0 4 10 11 25 24
		f 4 -16 21 27 -26
		mu 0 4 11 21 22 25
		f 4 -23 28 30 -30
		mu 0 4 22 23 27 26
		f 4 -25 31 32 -29
		mu 0 4 23 24 28 27
		f 4 -27 33 34 -32
		mu 0 4 24 25 29 28
		f 4 -28 29 35 -34
		mu 0 4 25 22 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "server5";
	rename -uid "631A59D0-465A-AEBC-DF50-C3844DEEF46D";
	setAttr ".t" -type "double3" 101.3620398998397 105.79437927568507 0 ;
	setAttr ".s" -type "double3" 60.770104762527815 10.496045353066597 62.416993455330591 ;
	setAttr ".rp" -type "double3" 0 -3.9911871370132026 0 ;
	setAttr ".sp" -type "double3" 0 -0.49999984566329125 0 ;
	setAttr ".spt" -type "double3" 0 -3.4911872913499149 0 ;
createNode mesh -n "serverShape5" -p "server5";
	rename -uid "6D88237F-42BC-0AE5-098A-B89F6FCA976B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[7]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5:6]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "f[4]" "f[8]" "f[10:17]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".pv" -type "double2" 0.5000000074505806 0.41249999403953552 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.2 0.25 0.375 0.42500001 0.2 0 0.375 0.82499999 0.625
		 0.82499999 0.80000001 0 0.625 0.42500001 0.80000001 0.25 0.80000001 0.25 0.80000001
		 0 0.875 0 0.875 0.25 0.80000001 0.25 0.80000001 0 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[8]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[9]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.072153874 ;
	setAttr ".pt[16]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[17]" -type "float3" -0.025433483 0 0.072153881 ;
	setAttr ".pt[18]" -type "float3" -0.025433483 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.025433483 0 0 ;
	setAttr -s 20 ".vt[0:19]"  -0.49999988 -0.50000048 0.49999994 0.5 -0.50000048 0.49999994
		 -0.49999988 0.5 0.49999994 0.5 0.5 0.49999994 -0.49999988 0.5 -0.49999994 0.5 0.5 -0.49999994
		 -0.49999988 -0.50000048 -0.49999994 0.5 -0.50000048 -0.49999994 -0.49999988 0.5 -0.19999996
		 -0.49999988 -0.50000048 -0.19999996 0.5 -0.50000048 -0.19999996 0.5 0.5 -0.19999996
		 0.5 -0.39469194 -0.23159257 0.5 0.39469099 -0.23159257 0.5 -0.39469194 -0.46840736
		 0.5 0.39469099 -0.46840736 0.5 -0.39469194 -0.23159257 0.5 0.39469099 -0.23159257
		 0.5 -0.39469194 -0.46840736 0.5 0.39469099 -0.46840736;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 8 0
		 3 11 0 4 6 0 5 7 0 6 9 0 7 10 0 8 4 0 9 0 0 10 1 0 11 5 0 8 9 1 9 10 1 10 11 0 11 8 1
		 10 12 0 11 13 0 12 13 0 7 14 0 14 12 0 5 15 0 15 14 0 13 15 0 12 16 0 13 17 0 16 17 0
		 14 18 0 18 16 0 15 19 0 19 18 0 17 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 19 -7
		mu 0 4 2 3 20 15
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 17 14 -1 -14
		mu 0 4 17 18 9 8
		f 4 -15 18 -8 -6
		mu 0 4 1 19 21 3
		f 4 16 13 4 6
		mu 0 4 14 16 0 2
		f 4 10 -17 12 8
		mu 0 4 12 16 14 13
		f 4 3 11 -18 -11
		mu 0 4 6 7 18 17
		f 4 -31 -33 -35 -36
		mu 0 4 26 27 28 29
		f 4 -20 15 -3 -13
		mu 0 4 15 20 5 4
		f 4 -19 20 22 -22
		mu 0 4 21 19 23 22
		f 4 -12 23 24 -21
		mu 0 4 19 10 24 23
		f 4 -10 25 26 -24
		mu 0 4 10 11 25 24
		f 4 -16 21 27 -26
		mu 0 4 11 21 22 25
		f 4 -23 28 30 -30
		mu 0 4 22 23 27 26
		f 4 -25 31 32 -29
		mu 0 4 23 24 28 27
		f 4 -27 33 34 -32
		mu 0 4 24 25 29 28
		f 4 -28 29 35 -34
		mu 0 4 25 22 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "leverbase1";
	rename -uid "C4798DB6-4740-7201-1487-698C22D11DB7";
	setAttr ".t" -type "double3" 100.00000762939453 82.191055653906318 -36.0032958984375 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 16.555434688696259 16.555434688696259 16.555434688696259 ;
createNode mesh -n "leverbaseShape1" -p "leverbase1";
	rename -uid "476ECADA-48EA-78B5-9A14-CA891A218E15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.49999998137354851 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "left";
	rename -uid "804909F5-4237-16AB-129E-8DBD480C6D37";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "FDB3D33D-4259-F234-A5A7-1C91C65E967C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "keyboard";
	rename -uid "AA72ACF2-4EE5-634F-ED75-34AF0F4C5D73";
	setAttr ".t" -type "double3" 100.00000762939453 93.861747835977184 -71.368238397479374 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 77.626234555075186 6.8497922361785113 32.696685058895461 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "keyboardShape" -p "keyboard";
	rename -uid "7DB133F6-4576-FA53-C452-FC91DB098438";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48100000619888306 0.87484124302864075 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "keyboardShape9Orig" -p "keyboard";
	rename -uid "A58E7945-4242-EF3B-6D6C-5AB93FA07F6E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "leverKeyboardBase";
	rename -uid "79C88237-4C4C-A746-27C6-34AEDB293FF5";
	setAttr ".t" -type "double3" 100.00000762939453 90.43687675572815 -71.368239906430858 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 90.000000000000682 -90 179.99999999999577 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 10.534234953904926 7.4671873845762144 10.534234953904926 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "leverKeyboardBaseShape" -p "leverKeyboardBase";
	rename -uid "3EDE446D-4EFA-ACC2-573A-61BEFB1357A0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.76875001192092896 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "leverKeyboardBaseShape2Orig" -p "leverKeyboardBase";
	rename -uid "AC47254D-4D9B-8AB1-7D30-F98831DCF183";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 5 "f[10:19]" "f[30:31]" "f[34:35]" "f[45:46]" "f[53:54]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:9]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:10]" "vtx[22]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:10]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:21]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[11:21]" "vtx[23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[11:21]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 5 "f[0:9]" "f[32:33]" "f[36:44]" "f[47:52]" "f[55:67]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 4 "f[20:31]" "f[34:35]" "f[45:46]" "f[53:54]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[10:19]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 103 ".uvst[0].uvsp[0:102]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.41562492 0.234375 0.63437486 0.234375 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.62499976 0.3125 0.375 0.6875 0.38749999 0.6875 0.39999998
		 0.6875 0.41249996 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993 0.6875 0.46249992
		 0.6875 0.4749999 0.6875 0.41562492 0.765625 0.63437486 0.765625 0.62499976 0.6875
		 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526
		 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146 0.6486026
		 0.89203393 0.5 0.15625 0.5 0.84375 0.38749999 0.53750002 0.49999988 0.53750002 0.63437486
		 0.55312502 0.5 0.56875002 0.41562492 0.55312502 0.4749999 0.53750002 0.46249992 0.53750002
		 0.44999993 0.53750002 0.43749994 0.53750002 0.42499995 0.53750002 0.41249996 0.53750002
		 0.39999998 0.53750002 0.38749999 0.46250001 0.31249988 0.23125 0.375 0.46250001 0.63437486
		 0.44687501 0.5 0.43125001 0.41562492 0.44687501 0.4749999 0.46250001 0.46249992 0.46250001
		 0.44999993 0.46250001 0.43749994 0.46250001 0.71249998 0.23125 0.41249996 0.46250001
		 0.39999998 0.46250001 1 0 1 1 0 0.5 0 0 1 0 1 1 0 0 1 0 0 1 0 0 1 0.5 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".pt";
	setAttr ".pt[24]" -type "float3" 0 0.24342203 2.7755576e-15 ;
	setAttr ".pt[25]" -type "float3" 0 0.24342203 2.8310687e-15 ;
	setAttr ".pt[26]" -type "float3" 0 0.24342197 2.8193187e-15 ;
	setAttr ".pt[27]" -type "float3" 0 0.24342197 2.8193187e-15 ;
	setAttr ".pt[28]" -type "float3" 0 0.24342197 2.8193187e-15 ;
	setAttr ".pt[29]" -type "float3" 0 0.24342197 2.8310687e-15 ;
	setAttr ".pt[30]" -type "float3" 0 0.24342197 2.7755576e-15 ;
	setAttr ".pt[31]" -type "float3" 0 0.24342197 2.7755576e-15 ;
	setAttr ".pt[32]" -type "float3" 0 0.24342197 2.7755576e-15 ;
	setAttr ".pt[33]" -type "float3" 0 0.24342203 2.8865799e-15 ;
	setAttr ".pt[34]" -type "float3" 0 0.24342203 2.7755576e-15 ;
	setAttr ".pt[35]" -type "float3" 0 0.24342203 2.7755576e-15 ;
	setAttr ".pt[36]" -type "float3" 0 -0.2434116 -2.7755576e-15 ;
	setAttr ".pt[37]" -type "float3" 0 -0.2434116 -2.7755576e-15 ;
	setAttr ".pt[40]" -type "float3" 0 -0.24341154 -2.8186682e-15 ;
	setAttr ".pt[41]" -type "float3" 0 -0.24341154 -2.7755576e-15 ;
	setAttr ".pt[42]" -type "float3" 0 -0.24341154 -2.7755576e-15 ;
	setAttr ".pt[43]" -type "float3" 0 -0.24341154 -2.7755576e-15 ;
	setAttr ".pt[44]" -type "float3" 0 -0.24341154 -2.7755576e-15 ;
	setAttr ".pt[45]" -type "float3" 0 -0.2434116 -2.8865799e-15 ;
	setAttr ".pt[46]" -type "float3" 0 -0.2434116 -2.7755576e-15 ;
	setAttr ".pt[47]" -type "float3" 0 -0.2434116 -2.7755576e-15 ;
	setAttr ".pt[48]" -type "float3" 0 -0.2434116 -2.7755576e-15 ;
	setAttr ".pt[49]" -type "float3" 0 -0.2434116 -2.8310687e-15 ;
	setAttr ".pt[51]" -type "float3" 0 -0.2434116 -2.7755576e-15 ;
	setAttr ".pt[52]" -type "float3" 0 -0.2434116 -2.7755576e-15 ;
	setAttr ".pt[53]" -type "float3" 0 -0.2434116 -2.7755576e-15 ;
	setAttr ".pt[54]" -type "float3" 0 0.24342203 2.8310687e-15 ;
	setAttr ".pt[55]" -type "float3" 0 0.24342203 2.8033131e-15 ;
	setAttr ".pt[56]" -type "float3" 0 0.24342203 2.8310687e-15 ;
	setAttr ".pt[57]" -type "float3" 0 0.24342203 2.8310687e-15 ;
	setAttr ".pt[58]" -type "float3" 0 0.24342203 2.8310687e-15 ;
	setAttr -s 59 ".vt[0:58]"  0.95105696 -1.000000953674 -0.30901766 0.80901766 -1.000000953674 -0.5877862
		 0.58778572 -1.000000953674 -0.80901837 0.30901718 -1.000000953674 -0.95105791 0 -1.000000953674 -1.000000476837
		 -0.30901718 -1.000000953674 -0.95105791 -0.58778572 -1.000000953674 -0.8090179 -0.80901718 -1.000000953674 -0.58778596
		 -0.95105696 -1.000000953674 -0.30901766 -1 -1.000000953674 -4.7683716e-07 1 -1.000000953674 -4.7683716e-07
		 0.95105696 1 -0.30901766 0.80901766 1 -0.5877862 0.58778572 1 -0.80901837 0.30901718 1 -0.95105791
		 0 1 -1.000000476837 -0.30901718 1 -0.95105791 -0.58778572 1 -0.8090179 -0.80901718 1 -0.58778596
		 -0.95105696 1 -0.30901766 -1 1 -4.7683716e-07 1 1 -4.7683716e-07 0 -1.000000953674 -4.7683716e-07
		 0 1 -4.7683716e-07 0.80901766 0.19999743 -0.5877862 0.95105696 0.19999743 -0.30901766
		 1 0.19999743 -4.7683716e-07 0 0.19999743 -4.7683716e-07 -1 0.19999743 -4.7683716e-07
		 -0.95105696 0.19999743 -0.30901766 -0.80901718 0.19999743 -0.58778596 -0.58778572 0.19999743 -0.8090179
		 -0.30901718 0.19999743 -0.95105791 0 0.19999743 -1.000000476837 0.30901718 0.19999743 -0.95105791
		 0.58778572 0.19999743 -0.80901837 0.80901766 -0.20000076 -0.5877862 0.95105696 -0.20000076 -0.30901766
		 1 -0.20000076 -4.7683716e-07 0 -0.20000076 -4.7683716e-07 -1 -0.20000076 -4.7683716e-07
		 -0.95105696 -0.20000076 -0.30901766 -0.80901718 -0.20000076 -0.58778596 -0.58778572 -0.20000076 -0.8090179
		 -0.30901718 -0.20000076 -0.95105791 0 -0.20000076 -1.000000476837 0.30901718 -0.20000076 -0.95105791
		 0.58778572 -0.20000076 -0.80901837 0.36060476 -0.20000076 -0.26199532 0.42391682 -0.20000076 -0.13773894
		 0 -0.20000076 -4.7683716e-07 0 -0.20000076 -0.44573236 0.1377387 -0.20000076 -0.42391706
		 0.26199484 -0.20000076 -0.36060572 0.36060476 0.19999743 -0.26199532 0.42391682 0.19999743 -0.13773894
		 0 0.19999743 -0.44573236 0.1377387 0.19999743 -0.42391706 0.26199484 0.19999743 -0.36060572;
	setAttr -s 125 ".ed[0:124]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 10 0 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0
		 19 20 0 21 11 0 1 36 1 22 0 1 22 1 1 22 2 1 22 3 1 22 4 1 22 5 1 22 6 1 22 7 1 22 8 1
		 22 9 0 22 10 0 11 23 1 12 23 1 13 23 1 14 23 1 15 23 1 16 23 1 17 23 1 18 23 1 19 23 1
		 20 23 0 21 23 0 24 12 1 25 11 1 24 25 0 26 21 0 25 26 1 27 23 0 26 27 1 28 20 0 27 28 1
		 29 19 1 28 29 1 30 18 1 29 30 1 31 17 1 30 31 1 32 16 1 31 32 1 33 15 1 32 33 1 34 14 1
		 33 34 0 35 13 1 34 35 0 35 24 0 37 25 0 36 37 0 38 26 0 37 38 0 39 27 0 38 39 0 40 28 0
		 39 40 0 41 29 1 40 41 0 42 30 1 41 42 0 43 31 1 42 43 0 44 32 1 43 44 0 45 33 0 44 45 0
		 45 46 0 46 47 0 47 36 0 0 37 1 10 38 0 22 39 0 9 40 0 8 41 1 7 42 1 6 43 1 5 44 1
		 4 45 1 3 46 1 2 47 1 36 48 0 37 49 0 48 49 0 38 50 0 39 50 0 50 40 0 45 51 0 46 52 0
		 51 52 0 47 53 0 52 53 0 53 48 0 48 54 0 49 55 0 54 55 0 51 56 0 52 57 0 56 57 0 53 58 0
		 57 58 0 58 54 0 25 55 0 33 56 0 34 57 0 35 58 0 24 54 0;
	setAttr -s 68 -ch 250 ".fc[0:67]" -type "polyFaces" 
		f 4 0 20 68 -89
		mu 0 4 11 12 56 58
		f 4 -21 1 98 87
		mu 0 4 56 12 13 68
		f 4 2 97 86 -99
		mu 0 4 13 14 67 68
		f 4 3 96 85 -98
		mu 0 4 14 15 66 67
		f 4 4 95 84 -97
		mu 0 4 15 16 65 66
		f 4 5 94 82 -96
		mu 0 4 16 17 64 65
		f 4 6 93 80 -95
		mu 0 4 17 18 63 64
		f 4 7 92 78 -94
		mu 0 4 18 19 62 63
		f 4 8 91 76 -93
		mu 0 4 19 9 61 62
		f 4 9 88 70 -90
		mu 0 4 10 20 57 59
		f 3 -1 -22 22
		mu 0 3 1 0 42
		f 3 -2 -23 23
		mu 0 3 2 1 42
		f 3 -3 -24 24
		mu 0 3 3 2 42
		f 3 -4 -25 25
		mu 0 3 4 3 42
		f 3 -5 -26 26
		mu 0 3 5 4 42
		f 3 -6 -27 27
		mu 0 3 6 5 42
		f 3 -7 -28 28
		mu 0 3 7 6 42
		f 3 -8 -29 29
		mu 0 3 8 7 42
		f 3 -9 -30 30
		mu 0 3 9 8 42
		f 3 -10 -32 21
		mu 0 3 0 10 42
		f 3 10 33 -33
		mu 0 3 41 40 43
		f 3 11 34 -34
		mu 0 3 40 39 43
		f 3 12 35 -35
		mu 0 3 39 38 43
		f 3 13 36 -36
		mu 0 3 38 37 43
		f 3 14 37 -37
		mu 0 3 37 36 43
		f 3 15 38 -38
		mu 0 3 36 35 43
		f 3 16 39 -39
		mu 0 3 35 34 43
		f 3 17 40 -40
		mu 0 3 34 33 43
		f 3 18 41 -41
		mu 0 3 33 30 43
		f 3 19 32 -43
		mu 0 3 31 41 43
		f 4 31 89 72 -91
		mu 0 4 42 10 59 60
		f 4 -31 90 74 -92
		mu 0 4 9 42 60 61
		f 4 -45 -46 43 -11
		mu 0 4 21 45 44 22
		f 4 -47 -48 44 -20
		mu 0 4 31 46 45 32
		f 4 -49 -50 46 42
		mu 0 4 43 47 46 31
		f 4 -51 -52 48 -42
		mu 0 4 30 48 47 43
		f 4 -53 -54 50 -19
		mu 0 4 29 49 48 30
		f 4 -55 -56 52 -18
		mu 0 4 28 50 49 29
		f 4 -57 -58 54 -17
		mu 0 4 27 51 50 28
		f 4 -59 -60 56 -16
		mu 0 4 26 52 51 27
		f 4 -61 -62 58 -15
		mu 0 4 25 53 52 26
		f 4 -63 -64 60 -14
		mu 0 4 24 54 53 25
		f 4 -65 -66 62 -13
		mu 0 4 23 55 54 24
		f 4 -44 -67 64 -12
		mu 0 4 22 44 55 23
		f 4 -71 67 47 -70
		mu 0 4 59 57 45 46
		f 4 -73 69 49 -72
		mu 0 4 60 59 46 47
		f 4 -75 71 51 -74
		mu 0 4 61 60 47 48
		f 4 -77 73 53 -76
		mu 0 4 62 61 48 49
		f 4 -79 75 55 -78
		mu 0 4 63 62 49 50
		f 4 -81 77 57 -80
		mu 0 4 64 63 50 51
		f 4 -83 79 59 -82
		mu 0 4 65 64 51 52
		f 4 -85 81 61 -84
		mu 0 4 66 65 52 53
		f 4 -69 99 101 -101
		mu 0 4 57 69 70 71
		f 3 72 103 -103
		mu 0 3 72 73 74
		f 3 74 -105 -104
		mu 0 3 75 76 77
		f 4 -86 105 107 -107
		mu 0 4 78 66 79 80
		f 4 -87 106 109 -109
		mu 0 4 81 82 83 84
		f 4 -88 108 110 -100
		mu 0 4 85 86 87 88
		f 4 -102 111 113 -113
		mu 0 4 71 89 90 91
		f 4 -108 114 116 -116
		mu 0 4 92 79 93 94
		f 4 -110 115 118 -118
		mu 0 4 95 96 97 98
		f 4 -111 117 119 -112
		mu 0 4 99 100 101 102
		f 4 63 122 -117 -122
		mu 0 4 53 54 94 93
		f 4 65 123 -119 -123
		mu 0 4 54 55 98 97
		f 4 66 124 -120 -124
		mu 0 4 55 44 102 101
		f 4 45 120 -114 -125
		mu 0 4 44 45 91 90
		f 4 83 121 -115 -106
		mu 0 4 66 53 93 79
		f 4 -68 100 112 -121
		mu 0 4 45 57 71 91;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 9 
		9 0 
		10 0 
		30 0 
		31 0 
		45 0 
		57 0 
		66 0 
		71 0 
		79 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lever1";
	rename -uid "8EFF66A5-483B-5835-D914-D3B745F29653";
	setAttr ".t" -type "double3" 100.00000762939453 85.594178523501455 -56.291917908860476 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 5.83751074343912 6.9186115178138738 29.611947312563707 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "leverShape1" -p "lever1";
	rename -uid "708C62C6-4FD6-B14A-CC03-D994E4990BF5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "leverShape10Orig1" -p "lever1";
	rename -uid "A915A96B-494F-6B71-DD60-829332BA9F20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint1";
	rename -uid "5C8C83CF-4174-576A-A7FB-8C9B7FB76DF0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 100.00000762939456 85.546962987860752 -36.003303527832088 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.510147288431128 0 ;
	setAttr ".bps" -type "matrix" 0.0085494385127323769 0 -0.99996345288271271 0 0 1 0 0
		 0.99996345288271271 0 0.0085494385127323769 0 100.00000762939456 85.546962987860752 -36.003303527832088 1;
	setAttr ".radi" 2;
createNode joint -n "joint2" -p "joint1";
	rename -uid "B79A81F9-42AA-F63D-BE4E-07B416CB9ABE";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 35.074016211403126 0 0.25073593582601461 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 3.4125041524076991 0 ;
	setAttr ".bps" -type "matrix" -0.05098777204348498 0 -0.99869927761165511 0 0 1 0 0
		 0.99869927761165511 0 -0.05098777204348498 0 100.5505975465389 85.546962987860752 -71.073894233584724 1;
	setAttr ".radi" 2;
createNode transform -n "everythingStand";
	rename -uid "33DC8860-45F8-E87C-260C-4299123FA7A7";
	setAttr ".t" -type "double3" 100.00000762939453 118.72895683773561 0 ;
	setAttr ".s" -type "double3" 45.889203032990238 4.2289994323934659 45.889203032990238 ;
	setAttr ".rp" -type "double3" 0 -2.1145006609778032 0 ;
	setAttr ".sp" -type "double3" 0 -0.50000022340534167 0 ;
	setAttr ".spt" -type "double3" 0 -1.6145004375724543 0 ;
createNode mesh -n "everythingStandShape" -p "everythingStand";
	rename -uid "999F192B-4CD5-A6E2-471D-2CA55BB5615D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt[128:136]" -type "float3"  0 11.009179 0 0 11.009179 
		0 0 11.009179 0 0 11.009179 0 0 11.009179 0 0 11.009179 0 0 11.009179 0 0 11.009179 
		0 0 0 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AD07D19B-4C6E-3C38-836F-2E9849FB2C85";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "61915533-41EA-DA64-7791-BBAE1BE20F68";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E7545341-4DAC-C8D0-F9F6-058C7AF1818F";
createNode displayLayerManager -n "layerManager";
	rename -uid "BB253585-4D9F-93F8-84A7-C4841707D7B8";
createNode displayLayer -n "defaultLayer";
	rename -uid "5701F5F3-455E-0F49-7760-AB93E7185875";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7DBAF659-4412-9905-9D7D-29BDD3228E4F";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "27DA1D9E-4C4A-2E68-B3E7-84982C6098AA";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "487C4B21-432A-1E9E-2F09-E4842717B2F4";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "5020C1B6-40DB-8A86-E981-3AA5B152EFE9";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "A25739F8-4B4E-D673-2A09-26A515CAAD6D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "FA99F180-4BAE-364A-57F0-5F9F164DDC23";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polyCube -n "polyCube1";
	rename -uid "EAE08640-4305-3A5A-B885-A4B852B14721";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "FE5733BA-4C89-60D4-0188-299D2DA56A71";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.1319420136161881 0 0 0 0 1 0 0 0 0 1.3832854456981625 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.065971009 0 0 ;
	setAttr ".rs" 63600;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.065971006808094049 -0.5 -0.69164272284908124 ;
	setAttr ".cbx" -type "double3" 0.065971006808094049 0.5 0.69164272284908124 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "2FFF8D3B-4FD2-5ADA-B78C-DE929801F5F9";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 0.1319420136161881 0 0 0 0 1 0 0 0 0 1.3832854456981625 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.065971009 0 0 ;
	setAttr ".rs" 34050;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.065971006808094049 -0.44399178028106689 -0.64148041053602922 ;
	setAttr ".cbx" -type "double3" 0.065971006808094049 0.44399178028106689 0.64148041053602922 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak1";
	rename -uid "6E10EA6E-4056-DC30-F430-99A4DA00D5D5";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  7.4505806e-09 0 0 0 0 0 7.4505806e-09
		 0 0 0 0 0 7.4505806e-09 0 0 0 0 0 7.4505806e-09 0 0 0 0 0 0 0.05600822 0.036263183
		 0 0.05600822 -0.036263183 0 -0.05600822 0.036263183 0 -0.05600822 -0.036263183;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "C0032450-406E-4E87-AE16-7DB066C74901";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.1319420136161881 0 0 0 0 1 0 0 0 0 1.3832854456981625 0
		 0 0.73701603807605898 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.065971009 0.73701602 0 ;
	setAttr ".rs" 59386;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.065971006808094049 0.23701603807605898 -0.69164272284908124 ;
	setAttr ".cbx" -type "double3" -0.065971006808094049 1.2370160380760589 0.69164272284908124 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak2";
	rename -uid "19B924A2-44CF-C218-9256-7DBDA9BDCFB2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[12]" -type "float3" -0.32920769 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.32920769 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.32920769 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.32920769 0 0 ;
createNode polyCube -n "polyCube2";
	rename -uid "39D072C4-4982-E1DC-56AA-88852CFECE8D";
	setAttr ".cuv" 4;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo1";
	rename -uid "3093E471-43DD-4EE4-52C3-388674CEB215";
createNode shadingEngine -n "proxyAxorr_fiveFootSix:lambert2SG";
	rename -uid "CD38A89B-4897-C54A-3EF2-4798065FB7DC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_red";
	rename -uid "A39096A6-4BFF-C5AA-5ECB-1B85098D14EB";
	setAttr ".c" -type "float3" 0.38699999 0.030186003 0.030186003 ;
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_white";
	rename -uid "84DF0F62-4CAE-D1FE-64FA-EB9D94EE7E70";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG";
	rename -uid "536EB614-493B-960C-C0BA-C09CE8BC17C6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo2";
	rename -uid "D91C516E-4A58-1ACE-D2EA-89BE954CEB13";
createNode groupId -n "proxyAxorr_fiveFootSix:groupId1";
	rename -uid "DEFFF2F8-494C-09E4-4280-AD829CF44456";
	setAttr ".ihi" 0;
createNode groupId -n "proxyAxorr_fiveFootSix:groupId2";
	rename -uid "0FC506FC-4AD6-2B18-B516-6586D6C6497A";
	setAttr ".ihi" 0;
createNode groupId -n "proxyAxorr_fiveFootSix:groupId3";
	rename -uid "12B325C1-495A-7B59-6EEF-2DAC3F401D4D";
	setAttr ".ihi" 0;
createNode script -n "proxyAxorr_fiveFootSix:uiConfigurationScriptNode";
	rename -uid "C8D76C80-4D43-46A2-1B65-7585DE17D5DF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 376\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 375\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 375\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1205\n            -height 777\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|:persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n"
		+ "                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1205\\n    -height 777\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1205\\n    -height 777\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "proxyAxorr_fiveFootSix:sceneConfigurationScriptNode";
	rename -uid "A935CEFF-44B9-26AD-6C53-B6B56E492AAF";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_black";
	rename -uid "FA2B963B-4193-A904-22C9-5CB9ECB531E2";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_greyDark";
	rename -uid "C0C644B7-4A01-26A1-0218-B8AC2FC82929";
	setAttr ".c" -type "float3" 0.039999999 0.039999999 0.039999999 ;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_blackSG";
	rename -uid "DE4B6A38-41F2-2E72-F7FF-56996BDC38B1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo3";
	rename -uid "8663BE8E-4725-25E8-1E0E-B9BB57CD4B3F";
createNode groupId -n "proxyAxorr_fiveFootSix:groupId4";
	rename -uid "D08C3720-46F8-D5B4-4E34-A8A2EE5866DE";
	setAttr ".ihi" 0;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_darkSG";
	rename -uid "118930B2-4E8B-930E-7275-B1A76B38457A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo4";
	rename -uid "93BDBE31-4F92-F3F7-6CC5-6AA27B0B307B";
createNode groupId -n "proxyAxorr_fiveFootSix:groupId5";
	rename -uid "74A527C2-4999-8F34-F587-5C8E8DF87DF1";
	setAttr ".ihi" 0;
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle";
	rename -uid "A615C972-4440-509D-08D2-EEB983C3D765";
	setAttr ".c" -type "float3" 0.169 0.169 0.169 ;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_middleSG";
	rename -uid "88BD0301-4F93-1992-7F52-AE86153A55AD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo5";
	rename -uid "45D37543-4E47-E6E7-25D8-C5958294ADFC";
createNode groupId -n "proxyAxorr_fiveFootSix:groupId6";
	rename -uid "7C7A779E-46BB-7C62-E44F-6087CA7EE793";
	setAttr ".ihi" 0;
createNode lambert -n "proxyAxorr_fiveFootSix:proxyAxorr_greyLight";
	rename -uid "F45D3C6D-471D-25E6-3BBE-9FBB992334E3";
	setAttr ".c" -type "float3" 0.48199999 0.48199999 0.48199999 ;
createNode shadingEngine -n "proxyAxorr_fiveFootSix:proxyAxorr_lightSG";
	rename -uid "0A8EB598-4A80-280C-5B64-0482C7475EA0";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "proxyAxorr_fiveFootSix:materialInfo6";
	rename -uid "5B84C578-4281-207B-13E2-FC95DC01D176";
createNode groupId -n "proxyAxorr_fiveFootSix:groupId7";
	rename -uid "3FEEB0D5-490C-8054-CAF6-39A5FBF597A6";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "18682627-4388-C819-7BDB-02AB61FBCE08";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
	setAttr -s 10 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -252.85714721679688;
	setAttr ".tgi[0].ni[0].y" 145.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -252.85714721679688;
	setAttr ".tgi[0].ni[1].y" 145.71427917480469;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 54.285713195800781;
	setAttr ".tgi[0].ni[2].y" 145.71427917480469;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -252.85714721679688;
	setAttr ".tgi[0].ni[3].y" 145.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 54.285713195800781;
	setAttr ".tgi[0].ni[4].y" 145.71427917480469;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -252.85714721679688;
	setAttr ".tgi[0].ni[5].y" 145.71427917480469;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -252.85714721679688;
	setAttr ".tgi[0].ni[6].y" 145.71427917480469;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 54.285713195800781;
	setAttr ".tgi[0].ni[7].y" 145.71427917480469;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 54.285713195800781;
	setAttr ".tgi[0].ni[8].y" 145.71427917480469;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" 54.285713195800781;
	setAttr ".tgi[0].ni[9].y" 145.71427917480469;
	setAttr ".tgi[0].ni[9].nvs" 1923;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "120A7255-49D4-BA00-DEFB-67B42C73DD6B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".wt" 0.23130597174167633;
	setAttr ".re" 10;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "784425FD-457E-AE0A-96E7-FB93B26A8E5F";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[7]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100 7.5320878 0 ;
	setAttr ".rs" 63939;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 63.99671341810928 7.5320880328412683 -36.00328658189072 ;
	setAttr ".cbx" -type "double3" 136.00328658189073 7.5320880328412683 36.00328658189072 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak3";
	rename -uid "59EE364A-487F-01E8-85BF-46A1E3058F0B";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 0.28537592 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.28537592 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.28537592 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.28537592 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.28537592 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.28537592 ;
	setAttr ".tk[14]" -type "float3" 0 0 -0.28537592 ;
	setAttr ".tk[15]" -type "float3" 0 0 -0.28537592 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "DB3B8512-4564-1AFC-8393-29960DA2DA43";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[16]" -type "float3" 0 36.20145 0 ;
	setAttr ".tk[17]" -type "float3" 0 36.20145 0 ;
	setAttr ".tk[18]" -type "float3" 0 36.20145 0 ;
	setAttr ".tk[19]" -type "float3" 0 36.20145 0 ;
	setAttr ".tk[20]" -type "float3" 0 36.20145 0 ;
	setAttr ".tk[21]" -type "float3" 0 36.20145 0 ;
	setAttr ".tk[22]" -type "float3" 0 36.20145 0 ;
	setAttr ".tk[23]" -type "float3" 0 36.20145 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "4EEE91B8-42AB-D8C5-0B7C-22A635CB1BFA";
	setAttr -s 5 ".e[0:4]"  0.89999998 0.89999998 0.89999998 0.89999998
		 0.89999998;
	setAttr -s 5 ".d[0:4]"  -2147483612 -2147483607 -2147483609 -2147483611 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "28A1B467-4E52-6BD8-006B-9F84928F545A";
	setAttr -s 5 ".e[0:4]"  0.89999998 0.89999998 0.89999998 0.89999998
		 0.89999998;
	setAttr -s 5 ".d[0:4]"  -2147483620 -2147483615 -2147483617 -2147483619 -2147483620;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "0F5D0AA0-46F4-5356-7D08-87A32CDAC297";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[24]" -type "float3" 0 2.5534539 0 ;
	setAttr ".tk[25]" -type "float3" 0 2.5534539 0 ;
	setAttr ".tk[26]" -type "float3" 0 2.5534539 0 ;
	setAttr ".tk[27]" -type "float3" 0 2.5534539 0 ;
	setAttr ".tk[28]" -type "float3" 0 2.5534539 0 ;
	setAttr ".tk[29]" -type "float3" 0 2.5534539 0 ;
	setAttr ".tk[30]" -type "float3" 0 2.5534539 0 ;
	setAttr ".tk[31]" -type "float3" 0 2.5534539 0 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "03E46FD0-44D9-DBE1-4AB7-55A4CF09CA13";
	setAttr ".dc" -type "componentList" 2 "f[23]" "f[29]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "9D327DD5-45D6-EBA6-6530-358323C6DC28";
	setAttr ".ics" -type "componentList" 7 "e[30]" "e[42]" "e[45:46]" "e[49]" "e[52]" "e[55]" "e[59]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 17;
	setAttr ".sv2" 22;
	setAttr ".d" 1;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "4893D3D3-41C1-E611-257E-F58853729080";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[36:37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".wt" 0.073038689792156219;
	setAttr ".re" 39;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 30;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "65905581-4524-BA52-CE6D-A9A9B394C2AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28:29]" "e[31]" "e[33]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".wt" 0.097650870680809021;
	setAttr ".re" 31;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 30;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "160E0709-4770-5B32-9832-E99BB6EC87A9";
	setAttr ".dc" -type "componentList" 10 "f[47]" "f[67]" "f[87]" "f[107]" "f[127]" "f[165]" "f[185]" "f[205]" "f[225]" "f[245]";
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "12C10FCE-4CC4-0DA7-FF33-D694F9F85EE5";
	setAttr ".ics" -type "componentList" 6 "e[247:248]" "e[253]" "e[255]" "e[484]" "e[489]" "e[491:492]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 120;
	setAttr ".sv2" 241;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge3";
	rename -uid "827B90B9-4DF3-76E6-A692-ACB2EFE48B0C";
	setAttr ".ics" -type "componentList" 6 "e[207:208]" "e[213]" "e[215]" "e[444]" "e[449]" "e[451:452]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 100;
	setAttr ".sv2" 221;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge4";
	rename -uid "2D9A80BE-42D0-6BCF-7720-82B31F363348";
	setAttr ".ics" -type "componentList" 6 "e[167:168]" "e[173]" "e[175]" "e[404]" "e[409]" "e[411:412]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 80;
	setAttr ".sv2" 201;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge5";
	rename -uid "ABC78C35-4DE7-92F6-D003-7C807BC2AB87";
	setAttr ".ics" -type "componentList" 6 "e[127:128]" "e[133]" "e[135]" "e[364]" "e[369]" "e[371:372]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 60;
	setAttr ".sv2" 181;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge6";
	rename -uid "F74DF4D1-4B9E-B4E7-4EA4-17A3234250AF";
	setAttr ".ics" -type "componentList" 6 "e[87:88]" "e[93]" "e[95]" "e[324]" "e[329]" "e[331:332]";
	setAttr ".ix" -type "matrix" 72.006573163781439 0 0 0 0 2.5627644743280182 0 0 0 0 72.006573163781439 0
		 100 6.2507057956772591 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 40;
	setAttr ".sv2" 161;
	setAttr ".d" 1;
createNode polyCube -n "polyCube3";
	rename -uid "590D2E6A-4C6B-BF5E-5A88-91A08762EE11";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "C6E0095B-42C4-1BAC-707A-ED8D586D4F53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 65.568841159766706 0 0 0 0 30.884699889592156 0 0 0 0 63.062153725031173 0
		 98.370412310808291 22.974438069896575 0 1;
	setAttr ".wt" 0.13616731762886047;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 5;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "042765ED-4F4E-78B5-D4A8-73BBFDD1E791";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]";
	setAttr ".ix" -type "matrix" 65.568841159766706 0 0 0 0 30.884699889592156 0 0 0 0 63.062153725031173 0
		 98.370412310808291 22.974438069896575 0 1;
	setAttr ".wt" 0.52449333667755127;
	setAttr ".dr" no;
	setAttr ".re" 51;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "98D792D9-4D82-C3B0-8EFA-CB9067E5BC4F";
	setAttr ".ics" -type "componentList" 5 "f[9]" "f[13]" "f[17]" "f[21]" "f[25]";
	setAttr ".ix" -type "matrix" 65.568841159766706 0 0 0 0 30.884699889592156 0 0 0 0 63.062153725031173 0
		 98.370412310808291 22.974438069896575 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 131.15483 19.781998 -5.2551789 ;
	setAttr ".rs" 63219;
	setAttr ".off" 1.7000000476837158;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 131.15483289069164 7.532088125100497 -31.531076862515587 ;
	setAttr ".cbx" -type "double3" 131.15483289069164 32.031907234606052 21.020718534809937 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "C94653C1-45B2-57A4-2FBB-68921F37CB6A";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[28]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[31]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[32]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[33]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[34]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[35]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[37]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[40]" -type "float3" 0 0.29326719 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.29326719 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "8B15BB08-4F38-A3ED-F358-6197ED747158";
	setAttr ".ics" -type "componentList" 5 "f[9]" "f[13]" "f[17]" "f[21]" "f[25]";
	setAttr ".ix" -type "matrix" 65.568841159766706 0 0 0 0 30.884699889592156 0 0 0 0 63.062153725031173 0
		 98.370412310808291 22.974438069896575 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 131.15483 19.781996 -5.2551799 ;
	setAttr ".rs" 53140;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 131.15483289069164 9.2320869944326382 -29.831078102916418 ;
	setAttr ".cbx" -type "double3" 131.15483289069164 30.331904683530784 19.320717895812134 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "2C842BD0-4AA0-0EF5-E833-748708723F22";
	setAttr ".ics" -type "componentList" 2 "f[26]" "f[39]";
	setAttr ".ix" -type "matrix" 65.568841159766706 0 0 0 0 30.884699889592156 0 0 0 0 63.062153725031173 0
		 98.370412310808291 22.974438069896575 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 131.15483 35.224346 21.020718 ;
	setAttr ".rs" 47619;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 131.15483289069164 32.03190539373449 10.510360207104286 ;
	setAttr ".cbx" -type "double3" 131.15483289069164 38.416784332949518 31.531076862515587 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "F74C0BBE-4794-8188-D5FB-50A90FFAC9E9";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[62]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[63]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[64]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[66]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[68]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[69]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[70]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[71]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[73]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[75]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[76]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[77]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[78]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[80]" -type "float3" -0.022142785 0 0 ;
	setAttr ".tk[81]" -type "float3" -0.022142785 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "C37E47C9-4A18-B3AA-B37F-219D0AE8D9BD";
	setAttr ".ics" -type "componentList" 2 "f[26]" "f[39]";
	setAttr ".ix" -type "matrix" 65.568841159766706 0 0 0 0 30.884699889592156 0 0 0 0 63.062153725031173 0
		 98.370412310808291 22.974438069896575 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 131.15483 35.224346 21.020718 ;
	setAttr ".rs" 62069;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 131.15483289069164 33.261898457472249 12.145115643062496 ;
	setAttr ".cbx" -type "double3" 131.15483289069164 37.186791269211767 29.896321426557375 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "4559E3F5-4B7A-AADE-272E-EB843459ACE3";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[82:87]" -type "float3"  0 0.039825328 0 0 0.039825328
		 -0.025922935 0 -0.039825328 0 0 -0.039825328 -0.025922935 0 0.039825328 0.025922932
		 0 -0.039825328 0.025922932;
createNode polyCube -n "polyCube4";
	rename -uid "ECBA88FD-4D74-DB54-32F9-24A0D27A3764";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit3";
	rename -uid "8483F06A-4288-0CCD-184A-628254BDF122";
	setAttr -s 5 ".e[0:4]"  0.69999999 0.30000001 0.30000001 0.69999999
		 0.69999999;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "D1A2647F-439F-A6B7-E362-CCA9EBBB1CB4";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 60.770104762527815 0 0 0 0 10.496045353066597 0 0 0 0 62.416993455330591 0
		 101.3620398998397 48.959530761198046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 131.74709 48.95953 -21.845947 ;
	setAttr ".rs" 45068;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 131.74709228110362 43.71150808466475 -31.208496727665295 ;
	setAttr ".cbx" -type "double3" 131.74709228110362 54.207553437731342 -12.483397946997574 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "7BCB5AC0-4A48-E862-18D3-D484915FE49D";
	setAttr ".ics" -type "componentList" 1 "f[8]";
	setAttr ".ix" -type "matrix" 60.770104762527815 0 0 0 0 10.496045353066597 0 0 0 0 62.416993455330591 0
		 101.3620398998397 48.959530761198046 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 131.74709 48.95953 -21.845947 ;
	setAttr ".rs" 33232;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 131.74709228110362 44.8168284048459 -29.236581152215255 ;
	setAttr ".cbx" -type "double3" 131.74709228110362 53.102229051065336 -14.455311662276252 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak9";
	rename -uid "E6D1946F-42C4-847E-D0E0-2E889CDFDCF1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[12]" -type "float3" 0 0.10530874 -0.031592596 ;
	setAttr ".tk[13]" -type "float3" 0 -0.10530864 -0.031592596 ;
	setAttr ".tk[14]" -type "float3" 0 0.10530874 0.031592589 ;
	setAttr ".tk[15]" -type "float3" 0 -0.10530864 0.031592589 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "E4DCA479-4190-11D8-8F1D-EEA6F178FB15";
	setAttr ".ics" -type "componentList" 78 "e[66]" "e[68]" "e[70:71]" "e[74]" "e[76]" "e[78:79]" "e[98]" "e[100]" "e[102:103]" "e[106]" "e[108]" "e[110:111]" "e[114]" "e[116]" "e[118:119]" "e[138]" "e[140]" "e[142:143]" "e[146]" "e[148]" "e[150:151]" "e[154]" "e[156]" "e[158:159]" "e[178]" "e[180]" "e[182:183]" "e[218]" "e[220]" "e[222:223]" "e[226]" "e[228]" "e[230:231]" "e[234]" "e[236]" "e[238:239]" "e[306]" "e[308]" "e[310:311]" "e[314]" "e[316]" "e[318:319]" "e[338]" "e[340]" "e[342:343]" "e[346]" "e[348]" "e[350:351]" "e[354]" "e[356]" "e[358:359]" "e[378]" "e[380]" "e[382:383]" "e[386]" "e[388]" "e[390:391]" "e[394]" "e[396]" "e[398:399]" "e[418]" "e[420]" "e[422:423]" "e[426]" "e[428]" "e[430:431]" "e[434]" "e[436]" "e[438:439]" "e[458]" "e[460]" "e[462:463]" "e[466]" "e[468]" "e[470:471]" "e[474]" "e[476]" "e[478:479]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "6740FD5C-420E-0FDE-7D5E-4A8A34F693AA";
	setAttr ".uopa" yes;
	setAttr -s 209 ".tk";
	setAttr ".tk[16]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[17]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[18]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[19]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[20]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[21]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[22]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[23]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[24]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[25]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[26]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[27]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[28]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[29]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[30]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[31]" -type "float3" 0 6.3628917 0 ;
	setAttr ".tk[32]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[33]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[34]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[35]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[36]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[37]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[38]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[39]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[40]" -type "float3" 0 5.015224 0 ;
	setAttr ".tk[41]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[42]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[43]" -type "float3" 0 5.015224 0 ;
	setAttr ".tk[44]" -type "float3" 0 5.6214433 0 ;
	setAttr ".tk[45]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[46]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[47]" -type "float3" 0 5.6214433 0 ;
	setAttr ".tk[48]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[49]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[50]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[51]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[52]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[53]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[54]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[55]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[56]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[57]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[58]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[59]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[60]" -type "float3" 0 5.0152187 0 ;
	setAttr ".tk[61]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[62]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[63]" -type "float3" 0 5.0152187 0 ;
	setAttr ".tk[64]" -type "float3" 0 5.6214371 0 ;
	setAttr ".tk[65]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[66]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[67]" -type "float3" 0 5.6214371 0 ;
	setAttr ".tk[68]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[69]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[70]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[71]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[72]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[73]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[74]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[75]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[76]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[77]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[78]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[79]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[80]" -type "float3" 0 5.0152225 0 ;
	setAttr ".tk[81]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[82]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[83]" -type "float3" 0 5.0152225 0 ;
	setAttr ".tk[84]" -type "float3" 0 5.6214428 0 ;
	setAttr ".tk[85]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[86]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[87]" -type "float3" 0 5.6214428 0 ;
	setAttr ".tk[88]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[89]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[90]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[91]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[92]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[93]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[94]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[95]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[96]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[97]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[98]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[99]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[100]" -type "float3" 0 5.0152121 0 ;
	setAttr ".tk[101]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[102]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[103]" -type "float3" 0 5.0152121 0 ;
	setAttr ".tk[104]" -type "float3" 0 5.6214361 0 ;
	setAttr ".tk[105]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[106]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[107]" -type "float3" 0 5.6214361 0 ;
	setAttr ".tk[108]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[109]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[110]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[111]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[112]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[113]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[114]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[115]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[116]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[117]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[118]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[119]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[120]" -type "float3" 0 5.0152202 0 ;
	setAttr ".tk[121]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[122]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[123]" -type "float3" 0 5.0152202 0 ;
	setAttr ".tk[124]" -type "float3" 0 5.6214328 0 ;
	setAttr ".tk[125]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[126]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[127]" -type "float3" 0 5.6214328 0 ;
	setAttr ".tk[152]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[153]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[154]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[155]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[156]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[157]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[158]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[159]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[160]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[161]" -type "float3" 0 5.015224 0 ;
	setAttr ".tk[162]" -type "float3" 0 5.015224 0 ;
	setAttr ".tk[163]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[164]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[165]" -type "float3" 0 5.6214433 0 ;
	setAttr ".tk[166]" -type "float3" 0 5.6214433 0 ;
	setAttr ".tk[167]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[168]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[169]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[170]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[171]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[172]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[173]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[174]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[175]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[176]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[177]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[178]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[179]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[180]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[181]" -type "float3" 0 5.0152187 0 ;
	setAttr ".tk[182]" -type "float3" 0 5.0152187 0 ;
	setAttr ".tk[183]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[184]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[185]" -type "float3" 0 5.6214371 0 ;
	setAttr ".tk[186]" -type "float3" 0 5.6214371 0 ;
	setAttr ".tk[187]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[188]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[189]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[190]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[191]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[192]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[193]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[194]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[195]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[196]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[197]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[198]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[199]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[200]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[201]" -type "float3" 0 5.0152225 0 ;
	setAttr ".tk[202]" -type "float3" 0 5.0152225 0 ;
	setAttr ".tk[203]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[204]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[205]" -type "float3" 0 5.6214428 0 ;
	setAttr ".tk[206]" -type "float3" 0 5.6214428 0 ;
	setAttr ".tk[207]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[208]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[209]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[210]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[211]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[212]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[213]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[214]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[215]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[216]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[217]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[218]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[219]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[220]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[221]" -type "float3" 0 5.0152121 0 ;
	setAttr ".tk[222]" -type "float3" 0 5.0152121 0 ;
	setAttr ".tk[223]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[224]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[225]" -type "float3" 0 5.6214361 0 ;
	setAttr ".tk[226]" -type "float3" 0 5.6214361 0 ;
	setAttr ".tk[227]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[228]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[229]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[230]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[231]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[232]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[233]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[234]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[235]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[236]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[237]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[238]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[239]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[240]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[241]" -type "float3" 0 5.0152202 0 ;
	setAttr ".tk[242]" -type "float3" 0 5.0152202 0 ;
	setAttr ".tk[243]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[244]" -type "float3" 0 5.0503068 0 ;
	setAttr ".tk[245]" -type "float3" 0 5.6214328 0 ;
	setAttr ".tk[246]" -type "float3" 0 5.6214328 0 ;
	setAttr ".tk[247]" -type "float3" 0 5.0503068 0 ;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "3F1C1A9E-471A-0E1A-CF7E-07B8AA0B3B56";
	setAttr ".ics" -type "componentList" 42 "e[114]" "e[116]" "e[118:119]" "e[122]" "e[124]" "e[126:127]" "e[162]" "e[164]" "e[166:167]" "e[170]" "e[172]" "e[174:175]" "e[178]" "e[180]" "e[182:183]" "e[186]" "e[188]" "e[190:191]" "e[194]" "e[196]" "e[198:199]" "e[202]" "e[204]" "e[206:207]" "e[290]" "e[292]" "e[294:295]" "e[298]" "e[300]" "e[302:303]" "e[306]" "e[308]" "e[310:311]" "e[314]" "e[316]" "e[318:319]" "e[322]" "e[324]" "e[326:327]" "e[330]" "e[332]" "e[334:335]";
	setAttr ".cv" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "EF3A886E-45BD-22B6-1EA2-DFA1D2CCABE6";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "82998A18-4EF7-01C5-A6A6-8BA27C679DED";
	setAttr ".dc" -type "componentList" 2 "f[15:18]" "f[29:38]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "0F9E2709-4348-F14A-51F1-02A1698FB9DB";
	setAttr ".dc" -type "componentList" 1 "f[14]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "9508F71D-4EF9-32C4-2A0C-29A9ED790E15";
	setAttr ".dc" -type "componentList" 2 "f[9:13]" "f[34:43]";
createNode polyBridgeEdge -n "polyBridgeEdge7";
	rename -uid "2A7DF6D5-4F84-D043-1465-54B5D5BCD337";
	setAttr ".ics" -type "componentList" 2 "e[41]" "e[52]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 98.564966823837665 82.191055653906318 -51.156936098986407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 22;
	setAttr ".sv2" 21;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge8";
	rename -uid "4E0CE478-4569-0ABB-74C2-95B050BFADCB";
	setAttr ".ics" -type "componentList" 2 "e[40]" "e[51]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 98.564966823837665 82.191055653906318 -51.156936098986407 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 9;
	setAttr ".sv2" 23;
	setAttr ".d" 1;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "DFCF7D76-4B26-1BBD-31D9-DFA4C4EC5880";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[20:30]" "e[53]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 98.564966823837665 82.191055653906318 -36.0032958984375 1;
	setAttr ".wt" 0.78466469049453735;
	setAttr ".dr" no;
	setAttr ".re" 21;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 4;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "6AAD0A9F-43B9-9A29-1828-9886EEC25267";
	setAttr ".ics" -type "componentList" 22 "e[56]" "e[58]" "e[60]" "e[62]" "e[64]" "e[66]" "e[68]" "e[70]" "e[72]" "e[74]" "e[76:77]" "e[128]" "e[130]" "e[132]" "e[134]" "e[136]" "e[138]" "e[140]" "e[142]" "e[144]" "e[146]" "e[148:149]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "CFE68051-4C79-E491-D78E-6B8E4212BFBD";
	setAttr ".dc" -type "componentList" 2 "f[44]" "f[53:55]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "407E07E1-4B4A-DB89-440B-02A9BE8D8581";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[68]" "e[70]" "e[72]" "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[84:87]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 98.564966823837665 82.191055653906318 -36.0032958984375 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 101.87606 82.191055 -44.281021 ;
	setAttr ".rs" 36887;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 101.8760641721144 65.635620965210052 -52.558738481380189 ;
	setAttr ".cbx" -type "double3" 101.8760641721144 98.746490342602584 -36.00330379268393 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "08CA7A9D-42C3-A376-F7B1-E18460D9946D";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[48]" -type "float3" -0.44841254 7.3900914e-08 0.32579079 ;
	setAttr ".tk[49]" -type "float3" -0.52714038 7.3900914e-08 0.17127833 ;
	setAttr ".tk[50]" -type "float3" -0.55426782 7.3900914e-08 -3.0984477e-08 ;
	setAttr ".tk[51]" -type "float3" 4.9228872e-16 7.3900914e-08 -3.0984477e-08 ;
	setAttr ".tk[52]" -type "float3" 0.55426782 7.3900914e-08 -3.0984477e-08 ;
	setAttr ".tk[53]" -type "float3" 0.52714056 7.3900914e-08 0.17127833 ;
	setAttr ".tk[54]" -type "float3" 0.44841224 7.3900914e-08 0.32579073 ;
	setAttr ".tk[55]" -type "float3" 0.32579076 7.3900914e-08 0.44841212 ;
	setAttr ".tk[56]" -type "float3" 0.17127831 7.3900914e-08 0.52714092 ;
	setAttr ".tk[57]" -type "float3" 4.9228872e-16 7.3900914e-08 0.55426776 ;
	setAttr ".tk[58]" -type "float3" -0.17127831 7.3900914e-08 0.52714092 ;
	setAttr ".tk[59]" -type "float3" -0.32579076 7.3900914e-08 0.4484126 ;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "C809FCAC-47FF-09FD-B744-1CA31928AA3B";
	setAttr ".dc" -type "componentList" 2 "f[53]" "f[56:60]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "AE39E1EA-41F0-DC1B-A71A-57BC057BD8A6";
	setAttr ".dc" -type "componentList" 2 "vtx[50]" "vtx[52]";
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "A1F23E54-4AE7-473B-1A50-34A5664650B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[101]" "e[107]" "e[109:110]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 98.564966823837665 82.191055653906318 -36.0032958984375 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 101.87607 85.700119 -40.833111 ;
	setAttr ".rs" 33950;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 101.8760651588952 82.191055653906332 -43.382594712913793 ;
	setAttr ".cbx" -type "double3" 101.8760651588952 89.209178879289141 -38.283630389094419 ;
createNode polyBridgeEdge -n "polyBridgeEdge9";
	rename -uid "71E41154-4839-14D6-1FCE-A8BECE90BE50";
	setAttr ".ics" -type "componentList" 6 "e[45]" "e[63]" "e[65:66]" "e[113]" "e[116]" "e[118:119]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 98.564966823837665 82.191055653906318 -36.0032958984375 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 33;
	setAttr ".sv2" 55;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polyTweak -n "polyTweak12";
	rename -uid "5914FBA2-46F4-EEB3-CB94-168C1DB63EFF";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[54]" -type "float3" 0 0.39999962 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.39999962 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.39999962 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.39999962 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.39999962 0 ;
createNode polyBridgeEdge -n "polyBridgeEdge10";
	rename -uid "41F6C96D-42C5-2301-B447-AFAEEB9DA2E1";
	setAttr ".ics" -type "componentList" 2 "e[83]" "e[114]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 98.564966823837665 82.191055653906318 -36.0032958984375 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 45;
	setAttr ".sv2" 56;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyBridgeEdge -n "polyBridgeEdge11";
	rename -uid "2831A25E-4D2B-EBE2-0BFF-2193CF6B9BFD";
	setAttr ".ics" -type "componentList" 2 "e[67]" "e[112]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 98.564966823837665 82.191055653906318 -36.0032958984375 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 25;
	setAttr ".sv2" 49;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polyCube -n "polyCube5";
	rename -uid "D8115457-4B85-4617-2514-9085B97423F3";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit4";
	rename -uid "CC12ED3B-45E0-DCE5-BABB-9AAB7C58B352";
	setAttr -s 33 ".e[0:32]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5;
	setAttr -s 33 ".d[0:32]"  -2147483648 -2147483647 -2147483514 -2147483522 -2147483530 -2147483538 
		-2147483546 -2147483554 -2147483562 -2147483570 -2147483578 -2147483586 -2147483603 -2147483615 -2147483612 -2147483620 -2147483617 -2147483597 
		-2147483500 -2147483492 -2147483484 -2147483476 -2147483468 -2147483460 -2147483452 -2147483444 -2147483436 -2147483428 -2147483646 -2147483645 
		-2147483621 -2147483629 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "08F29C01-46ED-079D-E20A-49976A5FBACA";
	setAttr -s 5 ".e[0:4]"  0.1 0.89999998 0.89999998 0.1 0.1;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483638 -2147483637 -2147483641 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "1AF8711C-4EEF-8BF5-C350-9EBD74158FA4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0 0.047631267 0 0 0.047631267
		 0 0 0.047631267 0 0 0.047631267;
createNode polySplit -n "polySplit6";
	rename -uid "E5351BBD-429F-A644-7118-988ABCC3F1B1";
	setAttr -s 5 ".e[0:4]"  0.89999998 0.1 0.1 0.89999998 0.89999998;
	setAttr -s 5 ".d[0:4]"  -2147483638 -2147483636 -2147483633 -2147483637 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "EEDBA130-46A6-85BE-6392-6DA41C3631EA";
	setAttr -s 5 ".e[0:4]"  0.89999998 0.1 0.1 0.89999998 0.89999998;
	setAttr -s 5 ".d[0:4]"  -2147483638 -2147483627 -2147483626 -2147483637 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "1E851AEC-48A0-F568-2006-28AC4F88AFBE";
	setAttr -s 5 ".e[0:4]"  0.1 0.89999998 0.89999998 0.1 0.1;
	setAttr -s 5 ".d[0:4]"  -2147483638 -2147483619 -2147483618 -2147483637 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "2EC36208-4592-FD9B-0521-C682981C6E4E";
	setAttr -s 13 ".e[0:12]"  0.1 0.1 0.89999998 0.1 0.1 0.1 0.1 0.1 0.89999998
		 0.89999998 0.89999998 0.1 0.1;
	setAttr -s 13 ".d[0:12]"  -2147483648 -2147483647 -2147483629 -2147483623 -2147483615 -2147483607 
		-2147483646 -2147483645 -2147483605 -2147483613 -2147483621 -2147483631 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak14";
	rename -uid "408735B3-4913-BEF7-2C4F-7CA757A8EE84";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[24:35]" -type "float3"  -0.068320744 0 0 -0.068320744
		 0 0 -0.068320744 0 0 -0.068320744 0 0 -0.068320744 0 0 -0.068320744 0 0 -0.068320744
		 0 0 -0.068320744 0 0 -0.068320744 0 0 -0.068320744 0 0 -0.068320744 0 0 -0.068320744
		 0 0;
createNode polySplit -n "polySplit10";
	rename -uid "D8ED2C63-4330-4E2A-3372-CC8E010DC52B";
	setAttr -s 13 ".e[0:12]"  0.80000001 0.2 0.2 0.2 0.80000001 0.80000001
		 0.80000001 0.2 0.2 0.2 0.2 0.2 0.80000001;
	setAttr -s 13 ".d[0:12]"  -2147483629 -2147483603 -2147483604 -2147483593 -2147483621 -2147483613 
		-2147483605 -2147483597 -2147483598 -2147483599 -2147483600 -2147483601 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "4DE84D39-419E-2356-9554-998D69E7A59A";
	setAttr -s 13 ".e[0:12]"  0.80000001 0.2 0.2 0.2 0.80000001 0.80000001
		 0.80000001 0.2 0.2 0.2 0.2 0.2 0.80000001;
	setAttr -s 13 ".d[0:12]"  -2147483629 -2147483579 -2147483578 -2147483577 -2147483621 -2147483613 
		-2147483605 -2147483573 -2147483572 -2147483571 -2147483570 -2147483569 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "687BA0B7-4C6A-9C13-EA39-629278426F62";
	setAttr -s 11 ".e[0:10]"  0.69999999 0.30000001 0.30000001 0.69999999
		 0.69999999 0.30000001 0.69999999 0.30000001 0.30000001 0.69999999 0.69999999;
	setAttr -s 11 ".d[0:10]"  -2147483619 -2147483612 -2147483584 -2147483563 -2147483539 -2147483609 
		-2147483618 -2147483535 -2147483559 -2147483588 -2147483619;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "3D76A24F-422A-BB61-5313-F98F89421B98";
	setAttr -s 15 ".e[0:14]"  0.1 0.89999998 0.89999998 0.89999998 0.1
		 0.1 0.89999998 0.1 0.89999998 0.89999998 0.89999998 0.1 0.89999998 0.89999998 0.1;
	setAttr -s 15 ".d[0:14]"  -2147483629 -2147483555 -2147483554 -2147483553 -2147483621 -2147483613 
		-2147483518 -2147483605 -2147483549 -2147483548 -2147483547 -2147483516 -2147483546 -2147483545 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "005C6F0D-4C74-AC81-FF66-AFA465E5532E";
	setAttr ".ics" -type "componentList" 7 "f[43]" "f[45]" "f[55]" "f[57]" "f[65:66]" "f[78:79]" "f[81]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100.08431 108.54868 -68.683754 ;
	setAttr ".rs" 57503;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 63.646033001249833 108.5486731431625 -82.921086454779569 ;
	setAttr ".cbx" -type "double3" 136.52259748266198 108.5486731431625 -54.446423186909541 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "A5E12720-4FE4-8DF0-9E37-F5B4003DA7D9";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[70]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[71]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[73]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[74]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[75]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[76]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[77]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[81]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[82]" -type "float3" 0.032465406 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.032465406 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "6340B5C6-483C-A113-F926-DEBBBD9459E7";
	setAttr ".ics" -type "componentList" 7 "f[43]" "f[45]" "f[55]" "f[57]" "f[65:66]" "f[78:79]" "f[81]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100.08432 108.54868 -68.683754 ;
	setAttr ".rs" 37800;
	setAttr ".lt" -type "double3" 0 0 1.3409812465773285 ;
	setAttr ".ls" -type "double3" 0.94768936109653967 0.51529492883338979 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 63.646037628133975 108.54867967563344 -82.921086454779569 ;
	setAttr ".cbx" -type "double3" 136.52260442298819 108.54867967563344 -54.446423186909541 ;
createNode deleteComponent -n "deleteComponent9";
	rename -uid "1D5E3483-46FF-8187-6E2A-E88D194C31B1";
	setAttr ".dc" -type "componentList" 4 "f[118]" "f[139]" "f[143]" "f[147]";
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "43968CD4-4F44-F359-45E0-54B0AE0A1F80";
	setAttr ".ics" -type "componentList" 2 "vtx[146]" "vtx[148]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak16";
	rename -uid "FE3CEB62-4804-1443-835D-1C84C5FD7D04";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[146]" -type "float3" 0 0 0.083711505 ;
	setAttr ".tk[148]" -type "float3" 0 0 -0.083711505 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "E6278833-4BC2-E7C1-D1AA-D5AA59FF1CB3";
	setAttr ".ics" -type "componentList" 2 "vtx[145]" "vtx[149]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak17";
	rename -uid "5AB8C12F-416A-01B6-36AC-009B30AE220B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[145]" -type "float3" 0 0 0.083711505 ;
	setAttr ".tk[149]" -type "float3" 0 0 -0.083711505 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "A3655F61-43ED-5E34-4EF2-EEAD5FCBD62E";
	setAttr ".ics" -type "componentList" 2 "vtx[120]" "vtx[142]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "F8B26CC3-4361-9037-21D5-95AD9A38D67D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[120]" -type "float3" 0 0 -0.083711505 ;
	setAttr ".tk[142]" -type "float3" 0 0 0.083711505 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "D0C14BD5-42C7-BDF4-FBD6-FEBCBA3BEBAC";
	setAttr ".ics" -type "componentList" 2 "vtx[121]" "vtx[140]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "8F7DD7A7-4CAE-2990-116C-6CA87F15AFF5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[121]" -type "float3" 5.9604645e-08 0 -0.083711505 ;
	setAttr ".tk[140]" -type "float3" -5.9604645e-08 0 0.083711505 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "644FCE97-4C2C-07D4-F188-96B58EC492D4";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[120]" -type "float3" -0.0094830524 0 -0.033484668 ;
	setAttr ".tk[121]" -type "float3" 0.0094830468 0 -0.033484668 ;
	setAttr ".tk[122]" -type "float3" 0.0094830524 0 0.078605063 ;
	setAttr ".tk[123]" -type "float3" -0.0094830524 0 0.078605063 ;
	setAttr ".tk[124]" -type "float3" 0.0094830394 0 0 ;
	setAttr ".tk[125]" -type "float3" 0.0094830394 0 0 ;
	setAttr ".tk[126]" -type "float3" -0.0094830524 0 0 ;
	setAttr ".tk[127]" -type "float3" -0.0094830524 0 0 ;
	setAttr ".tk[128]" -type "float3" -0.0097265076 0 -0.063951023 ;
	setAttr ".tk[129]" -type "float3" 0.0097265085 0 -0.063951023 ;
	setAttr ".tk[130]" -type "float3" 0.0097265085 0 0.063951023 ;
	setAttr ".tk[131]" -type "float3" -0.0097265076 0 0.063951023 ;
	setAttr ".tk[136]" -type "float3" 0.0097265085 0 0 ;
	setAttr ".tk[137]" -type "float3" 0.0097265085 0 0 ;
	setAttr ".tk[138]" -type "float3" -0.0097265076 0 0 ;
	setAttr ".tk[139]" -type "float3" -0.0097265076 0 0 ;
	setAttr ".tk[140]" -type "float3" 0.0094830394 0 0 ;
	setAttr ".tk[141]" -type "float3" -0.0094830524 0 0 ;
	setAttr ".tk[143]" -type "float3" 0 0 -0.033484668 ;
	setAttr ".tk[144]" -type "float3" 0 0 -0.033484668 ;
	setAttr ".tk[146]" -type "float3" 0 0 0.072739132 ;
	setAttr ".tk[147]" -type "float3" 0 0 0.072739132 ;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "5F6B4FA6-41F7-F454-15CB-67B59F216333";
	setAttr ".dc" -type "componentList" 3 "f[57]" "f[130]" "f[132]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "7AD62E21-4433-7762-F7F3-71B56D0C1CFE";
	setAttr ".dc" -type "componentList" 1 "f[128:129]";
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "B99C34B2-4290-AF8D-A7AA-E3827E287888";
	setAttr ".ics" -type "componentList" 3 "vtx[36]" "vtx[90]" "vtx[97]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "F3C529F9-4F84-1370-7A9C-6CA5BA570471";
	setAttr ".ics" -type "componentList" 3 "vtx[48]" "vtx[96]" "vtx[115]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "D2A61A59-4E17-2E0E-7CA4-36B0DB2A1027";
	setAttr ".ics" -type "componentList" 3 "vtx[59]" "vtx[96]" "vtx[113]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "6061A55C-4B63-30AC-0F9C-93995F2C314E";
	setAttr ".ics" -type "componentList" 3 "vtx[47]" "vtx[90]" "vtx[95]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "34CC3CC5-47DA-CFD9-3DDB-5DAD07CC01DE";
	setAttr ".ics" -type "componentList" 3 "vtx[46]" "vtx[87]" "vtx[92]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "5D11425D-4F8B-60DA-0C15-35AD3A0B08AB";
	setAttr ".ics" -type "componentList" 3 "vtx[58]" "vtx[91]" "vtx[107]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "462392DC-40B1-02F6-BB2B-2891FE3E301B";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[86]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "7E1C8DB8-4D92-34A1-1350-1BA7C1712D2A";
	setAttr ".ics" -type "componentList" 3 "vtx[69]" "vtx[85]" "vtx[94]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "8A8771AD-4704-96F4-3B00-40926BE39C97";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[93]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".d" 1e-06;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "F60E4152-49B9-C652-867E-BDBD5DDE61AB";
	setAttr ".ics" -type "componentList" 12 "vtx[0]" "vtx[2:6]" "vtx[8:9]" "vtx[11:14]" "vtx[16:18]" "vtx[20:22]" "vtx[25:30]" "vtx[36:37]" "vtx[44:49]" "vtx[56:61]" "vtx[66:71]" "vtx[79:131]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".am" yes;
createNode polyBridgeEdge -n "polyBridgeEdge12";
	rename -uid "D6CD057D-495C-EF82-F7E5-FB9AC41B2BBF";
	setAttr ".ics" -type "componentList" 2 "e[79]" "e[92]";
	setAttr ".ix" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 105.12377702507325 -69.082480860150156 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 59;
	setAttr ".sv2" 36;
	setAttr ".d" 1;
createNode polyCube -n "polyCube6";
	rename -uid "8508334A-40EE-A444-5BBC-19B2A4D22C45";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit14";
	rename -uid "772ACFE0-4BC6-76DB-2B34-0DBF2E0D0B70";
	setAttr -s 11 ".e[0:10]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 11 ".d[0:10]"  -2147483618 -2147483619 -2147483620 -2147483621 -2147483622 -2147483623 
		-2147483624 -2147483625 -2147483626 -2147483627 -2147483617;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "50539607-496F-A217-E1F1-55B3994B1455";
	setAttr -s 11 ".e[0:10]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 11 ".d[0:10]"  -2147483607 -2147483608 -2147483609 -2147483610 -2147483611 -2147483612 
		-2147483613 -2147483614 -2147483615 -2147483616 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "F1CE3509-4899-901C-9B86-7ABB0848E252";
	setAttr -s 4 ".e[0:3]"  0 0.5 0.5 0;
	setAttr -s 4 ".d[0:3]"  -2147483502 -2147483597 -2147483574 -2147483523;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "15D0F60D-4EF5-FCC9-35A2-C98C469D6653";
	setAttr -s 4 ".e[0:3]"  1 0.5 0.5 1;
	setAttr -s 4 ".d[0:3]"  -2147483617 -2147483576 -2147483599 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "C8C943B4-475D-FC95-4636-23893703B550";
	setAttr ".ics" -type "componentList" 2 "f[10:19]" "f[78:87]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 100.00000762939453 82.191055653906318 -36.0032958984375 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100.00002 82.191055 -40.142162 ;
	setAttr ".rs" 35425;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 83.444572940698265 73.913338309558185 -44.281021137032056 ;
	setAttr ".cbx" -type "double3" 116.55545810658364 90.468772998254451 -36.00330379268393 ;
	setAttr ".raf" no;
createNode skinCluster -n "skinCluster1";
	rename -uid "A812AFFC-4722-2222-E811-EA8230EAEB5D";
	setAttr -s 8 ".wl";
	setAttr ".wl[0:7].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.0085494385127323751 -0 0.99996345288271249 -0 -0 1 -0 0
		 -0.99996345288271249 -0 0.0085494385127323751 -0 -36.856931627375594 -85.546962987860752 -99.688544887620537 1;
	setAttr ".pm[1]" -type "matrix" -0.050987772043484966 -0 0.99869927761165489 -0 0 1 -0 0
		 -0.99869927761165489 -0 -0.050987772043484966 0 -65.854595881589105 -85.546962987860752 -104.04370865057341 1;
	setAttr ".gm" -type "matrix" 5.83751074343912 0 0 0 0 6.9186115178138738 0 0 0 0 29.611947312563707 0
		 100.00000762939453 85.594178523501455 -56.291917908860476 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "1C7CDA14-45B9-7A7E-D2D8-65BD1BE4BD1F";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 100.00000762939456 85.546962987860752
		 -36.003303527832088 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.70407760988660462 0 0.71012303107022678 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 35.074016211403119 0 0.25073593582602882 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.029775315195356509 0 0.99955661700826992 1
		 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "B05997B5-4553-A53F-FD35-628F12ABE84B";
	setAttr -s 59 ".wl";
	setAttr ".wl[0:58].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.0085494385127323751 -0 0.99996345288271249 -0 -0 1 -0 0
		 -0.99996345288271249 -0 0.0085494385127323751 -0 -36.856931627375594 -85.546962987860752 -99.688544887620537 1;
	setAttr ".pm[1]" -type "matrix" -0.050987772043484966 -0 0.99869927761165489 -0 0 1 -0 0
		 -0.99869927761165489 -0 -0.050987772043484966 0 -65.854595881589105 -85.546962987860752 -104.04370865057341 1;
	setAttr ".gm" -type "matrix" 0 0 10.534234953904926 0 7.4671873845762144 -4.6425362835863292e-13 0 0
		 6.5377007576837333e-13 10.534234953904926 0 0 100.00000762939453 90.43687675572815 -71.368239906430858 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode skinCluster -n "skinCluster3";
	rename -uid "F4B3F34C-4D20-5DE0-CC9F-F9904DE3B3D7";
	setAttr -s 112 ".wl";
	setAttr ".wl[0:111].w"
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1
		1 1 1;
	setAttr -s 2 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.0085494385127323751 -0 0.99996345288271249 -0 -0 1 -0 0
		 -0.99996345288271249 -0 0.0085494385127323751 -0 -36.856931627375594 -85.546962987860752 -99.688544887620537 1;
	setAttr ".pm[1]" -type "matrix" -0.050987772043484966 -0 0.99869927761165489 -0 0 1 -0 0
		 -0.99869927761165489 -0 -0.050987772043484966 0 -65.854595881589105 -85.546962987860752 -104.04370865057341 1;
	setAttr ".gm" -type "matrix" 77.626234555075186 0 0 0 0 6.8497922361785113 0 0 0 0 32.696685058895461 0
		 100.00000762939453 93.861747835977184 -71.368238397479374 1;
	setAttr -s 2 ".ma";
	setAttr -s 2 ".dpf[0:1]"  4 4;
	setAttr -s 2 ".lw";
	setAttr -s 2 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 2 ".ifcl";
	setAttr -s 2 ".ifcl";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "577C9AE7-458A-67A5-C731-56B71508B688";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6:7]" "e[10:11]";
	setAttr ".ix" -type "matrix" 5.83751074343912 0 0 0 0 6.9186115178138738 0 0 0 0 29.611947312563707 0
		 100.00000762939453 85.594178523501455 -56.291917908860476 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplit -n "polySplit18";
	rename -uid "5A4732D5-450A-4A34-57E8-A6B5FE3A460D";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483642 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "39DA2302-424A-42D9-259E-4484873C448C";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483646 -2147483641;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "497C462E-4735-82B8-426F-C39A284E63E2";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483634 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "DC5F666D-4A80-B252-13B5-EC80A0FE7F0E";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483647 -2147483635;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "446036CB-4A59-8C84-E98F-CFB263664AF5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
	setAttr ".ix" -type "matrix" 0 16.555434688696259 0 0 -16.555434688696259 0 0 0 0 0 16.555434688696259 0
		 100.00000762939453 82.191055653906318 -36.0032958984375 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.19999999999999996;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak21";
	rename -uid "62234E1E-47A0-1BBC-2915-04BD2E66C65A";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk";
	setAttr ".tk[85]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[88]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[90]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[91]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[94]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[95]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[96]" -type "float3" 0 -0.22160465 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[98]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[100]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[102]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[103]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[104]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[105]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[106]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[107]" -type "float3" 0 0.22160465 0 ;
	setAttr ".tk[108]" -type "float3" 0 0.22160465 0 ;
createNode polySplit -n "polySplit22";
	rename -uid "D418C49C-4F84-72D9-5024-0FB61E6392B4";
	setAttr -s 4 ".e[0:3]"  1 0.19998001 0.19998001 1;
	setAttr -s 4 ".d[0:3]"  -2147483582 -2147483626 -2147483642 -2147483476;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "0B52DE58-49BA-21B9-C873-98A1296D8016";
	setAttr -s 4 ".e[0:3]"  0 0.80001998 0.80001998 0;
	setAttr -s 4 ".d[0:3]"  -2147483479 -2147483559 -2147483558 -2147483482;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube7";
	rename -uid "8672D787-4729-B94D-E626-87A7AB4C5F0C";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit24";
	rename -uid "0C68FB3E-4375-8467-05EB-74B30A2082B1";
	setAttr -s 6 ".e[0:5]"  0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 6 ".d[0:5]"  -2147483594 -2147483591 -2147483592 -2147483593 -2147483358 -2147483594;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	rename -uid "A786EA92-49B0-1C7C-4AAC-4185ADA19CFC";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 120.55905022152467 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100.00001 120.55905 0 ;
	setAttr ".rs" 34684;
	setAttr ".lt" -type "double3" 0 0 13.4 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 77.055406112899419 118.44455050532794 -22.944601516495119 ;
	setAttr ".cbx" -type "double3" 122.94460914588964 122.6735499377214 22.944601516495119 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	rename -uid "01993A0E-4B34-DDBA-0C8A-D0AD23329261";
	setAttr ".ics" -type "componentList" 3 "f[0]" "f[2]" "f[4:5]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 120.55905022152467 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100 120.55905 0 ;
	setAttr ".rs" 61766;
	setAttr ".lt" -type "double3" 0 0 4.5 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 63.655406182157051 118.44455050532794 -36.344604182447128 ;
	setAttr ".cbx" -type "double3" 136.34459813579343 122.6735580038977 36.344604182447128 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	rename -uid "06FD7831-4663-AFB7-DDAF-62AAB5AC8553";
	setAttr ".ics" -type "componentList" 4 "f[22]" "f[28]" "f[30]" "f[34]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 120.55905022152467 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100 118.44455 0 ;
	setAttr ".rs" 59646;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 59.155406450359358 118.44455050532794 -40.844601179035173 ;
	setAttr ".cbx" -type "double3" 140.84459786759112 118.44455050532794 40.844601179035173 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	rename -uid "0F78A30E-4F16-B82C-1345-B588EACD2F76";
	setAttr ".ics" -type "componentList" 2 "f[30]" "f[34]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100 114.05204 0 ;
	setAttr ".rs" 47095;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 59.155406450359358 114.05204314034209 -22.944601516495119 ;
	setAttr ".cbx" -type "double3" 140.84459786759112 114.05204314034209 22.944601516495119 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak22";
	rename -uid "612E1DA3-4509-CAF0-94ED-CEAF013FC074";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[8]" -type "float3" -5.9604645e-08 0 5.9604645e-08 ;
	setAttr ".tk[9]" -type "float3" 5.9604645e-08 0 5.9604645e-08 ;
	setAttr ".tk[10]" -type "float3" 5.9604645e-08 0 5.9604645e-08 ;
	setAttr ".tk[11]" -type "float3" -5.9604645e-08 0 5.9604645e-08 ;
	setAttr ".tk[12]" -type "float3" -5.9604645e-08 0 -5.9604645e-08 ;
	setAttr ".tk[13]" -type "float3" 5.9604645e-08 0 -5.9604645e-08 ;
	setAttr ".tk[14]" -type "float3" 5.9604645e-08 0 -5.9604645e-08 ;
	setAttr ".tk[15]" -type "float3" -5.9604645e-08 0 -5.9604645e-08 ;
	setAttr ".tk[40]" -type "float3" 0 -0.89007014 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.89007014 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.89007014 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.89007014 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.89007014 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.89007014 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.89007014 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.89007014 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.60591495 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.60591495 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.60591495 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.60591495 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.60591495 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.60591495 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.60591495 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.60591495 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	rename -uid "F0314851-4F04-DDAC-5FD3-549E351EB457";
	setAttr ".ics" -type "componentList" 2 "f[22]" "f[28]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100.00001 111.72389 0 ;
	setAttr ".rs" 57918;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 77.055406112899419 111.72389310046219 -38.30701590055687 ;
	setAttr ".cbx" -type "double3" 122.94460914588964 111.72389310046219 38.30701590055687 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak23";
	rename -uid "5B0F718D-492E-F496-A41F-1BAFE4DC63B5";
	setAttr ".uopa" yes;
	setAttr -s 37 ".tk";
	setAttr ".tk[24]" -type "float3" -5.5879354e-09 -4.6566129e-10 -0.055298105 ;
	setAttr ".tk[25]" -type "float3" -1.8626451e-09 -4.6566129e-10 -0.055298105 ;
	setAttr ".tk[26]" -type "float3" -1.8626451e-09 -3.7252903e-09 -0.055298105 ;
	setAttr ".tk[27]" -type "float3" -5.5879354e-09 -3.7252903e-09 -0.055298105 ;
	setAttr ".tk[28]" -type "float3" -5.5879354e-09 -3.7252903e-09 0.055298105 ;
	setAttr ".tk[29]" -type "float3" -1.8626451e-09 -3.7252903e-09 0.055298105 ;
	setAttr ".tk[30]" -type "float3" -1.8626451e-09 -4.6566129e-10 0.055298105 ;
	setAttr ".tk[31]" -type "float3" -5.5879354e-09 -4.6566129e-10 0.055298105 ;
	setAttr ".tk[32]" -type "float3" -0.04662808 -4.6566129e-10 -5.5879354e-09 ;
	setAttr ".tk[33]" -type "float3" -0.04662808 -4.6566129e-10 5.5879354e-09 ;
	setAttr ".tk[34]" -type "float3" -0.04662808 -3.7252903e-09 -5.5879354e-09 ;
	setAttr ".tk[35]" -type "float3" -0.04662808 -3.7252903e-09 5.5879354e-09 ;
	setAttr ".tk[36]" -type "float3" 0.04662808 -4.6566129e-10 -5.5879354e-09 ;
	setAttr ".tk[37]" -type "float3" 0.04662808 -4.6566129e-10 5.5879354e-09 ;
	setAttr ".tk[38]" -type "float3" 0.04662808 -3.7252903e-09 5.5879354e-09 ;
	setAttr ".tk[39]" -type "float3" 0.04662808 -3.7252903e-09 -5.5879354e-09 ;
	setAttr ".tk[40]" -type "float3" 0 -0.26636344 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.26636344 0 ;
	setAttr ".tk[42]" -type "float3" -1.8626451e-09 -0.26636344 -0.055298105 ;
	setAttr ".tk[43]" -type "float3" -5.5879354e-09 -0.26636344 -0.055298105 ;
	setAttr ".tk[44]" -type "float3" 0 -0.26636344 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.26636344 0 ;
	setAttr ".tk[46]" -type "float3" -5.5879354e-09 -0.26636344 0.055298105 ;
	setAttr ".tk[47]" -type "float3" -1.8626451e-09 -0.26636344 0.055298105 ;
	setAttr ".tk[50]" -type "float3" -0.04662808 -1.8626451e-09 -5.5879354e-09 ;
	setAttr ".tk[51]" -type "float3" -0.04662808 -1.8626451e-09 5.5879354e-09 ;
	setAttr ".tk[54]" -type "float3" 0.04662808 -1.8626451e-09 5.5879354e-09 ;
	setAttr ".tk[55]" -type "float3" 0.04662808 -1.8626451e-09 -5.5879354e-09 ;
	setAttr ".tk[56]" -type "float3" 0 -0.68368834 0 ;
	setAttr ".tk[57]" -type "float3" 0 -0.68368834 0 ;
	setAttr ".tk[58]" -type "float3" -0.04662808 -0.68368876 -5.5879354e-09 ;
	setAttr ".tk[59]" -type "float3" -0.04662808 -0.68368876 5.5879354e-09 ;
	setAttr ".tk[60]" -type "float3" 0 -0.68368834 0 ;
	setAttr ".tk[61]" -type "float3" 0 -0.68368834 0 ;
	setAttr ".tk[62]" -type "float3" 0.04662808 -0.68368876 5.5879354e-09 ;
	setAttr ".tk[63]" -type "float3" 0.04662808 -0.68368876 -5.5879354e-09 ;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	rename -uid "4738F400-4206-4C5A-5315-3387B2899225";
	setAttr ".ics" -type "componentList" 2 "f[54]" "f[58]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100 112.60638 0 ;
	setAttr ".rs" 42254;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 63.655406182157051 111.16072174665408 -22.944601516495119 ;
	setAttr ".cbx" -type "double3" 136.34459813579343 114.05204263620608 22.944601516495119 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak24";
	rename -uid "F09B0024-40A2-4343-D7BB-8CB558719F99";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[48]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[49]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[52]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[53]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[56]" -type "float3" -7.4505806e-09 0 0.046410389 ;
	setAttr ".tk[57]" -type "float3" -7.4505806e-09 0 -0.046410389 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.046410389 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.046410389 ;
	setAttr ".tk[60]" -type "float3" 7.4505806e-09 0 0.046410389 ;
	setAttr ".tk[61]" -type "float3" 7.4505806e-09 0 -0.046410389 ;
	setAttr ".tk[62]" -type "float3" 0 0 -0.046410389 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.046410389 ;
	setAttr ".tk[64]" -type "float3" 0.1057246 -0.89411324 0 ;
	setAttr ".tk[65]" -type "float3" -0.1057246 -0.89411324 0 ;
	setAttr ".tk[66]" -type "float3" -0.1057246 -0.89411324 0 ;
	setAttr ".tk[67]" -type "float3" 0.1057246 -0.89411324 0 ;
	setAttr ".tk[68]" -type "float3" 0.1057246 -0.89411324 0 ;
	setAttr ".tk[69]" -type "float3" -0.1057246 -0.89411324 0 ;
	setAttr ".tk[70]" -type "float3" 0.1057246 -0.89411324 0 ;
	setAttr ".tk[71]" -type "float3" -0.1057246 -0.89411324 0 ;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "C37D587A-467A-4DC5-2DC7-F6ADDF1FDAA8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.19999999999999996;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak25";
	rename -uid "B0D8E6C1-4224-185E-9450-1896A0C1016D";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[72]" -type "float3" -0.076732263 0 0 ;
	setAttr ".tk[73]" -type "float3" -0.076732263 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.076732263 0 0 ;
	setAttr ".tk[75]" -type "float3" -0.076732263 0 0 ;
	setAttr ".tk[76]" -type "float3" 0.076732263 0 0 ;
	setAttr ".tk[77]" -type "float3" 0.076732263 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.076732263 0 0 ;
	setAttr ".tk[79]" -type "float3" 0.076732263 0 0 ;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "6661392E-4FE8-94A4-260C-BCBF8BFD6390";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[19]" "e[21:22]" "e[24:26]" "e[35]" "e[37:38]" "e[43]" "e[45:46]" "e[134:135]" "e[146]" "e[148]" "e[152]" "e[154]" "e[165:166]" "e[185]" "e[187:188]" "e[190]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak26";
	rename -uid "12B53027-4933-0BE9-0590-7AB60616E6AE";
	setAttr ".uopa" yes;
	setAttr -s 104 ".tk[0:103]" -type "float3"  0.18769372 0 1.4901161e-08
		 -0.18769382 0 1.4901161e-08 -0.18769382 0 1.4901161e-08 0.18769372 0 1.4901161e-08
		 0.18769372 0 -1.4901161e-08 -0.18769382 0 -1.4901161e-08 -0.18769382 0 -1.4901161e-08
		 0.18769372 0 -1.4901161e-08 0 0 0.13481086 0 0 -0.13481086 -1.4901161e-08 0 0.13481086
		 -1.4901161e-08 0 -0.13481086 0 0 0.13481086 0 0 -0.13481086 1.4901161e-08 0 -0.13481086
		 1.4901161e-08 0 0.13481086 0.18769372 0 2.9802322e-08 -0.18769382 0 2.9802322e-08
		 -0.18769382 0 2.9802322e-08 0.18769372 0 2.9802322e-08 0.18769372 0 -2.9802322e-08
		 -0.18769382 0 -2.9802322e-08 -0.18769382 0 -2.9802322e-08 0.18769372 0 -2.9802322e-08
		 0 1.4901161e-08 0.13481086 0 1.4901161e-08 -0.13481086 0 0 0.13481086 0 0 -0.13481086
		 0 1.4901161e-08 0.13481086 0 1.4901161e-08 -0.13481086 0 0 -0.13481086 0 0 0.13481086
		 0.18769372 1.4901161e-08 2.9802322e-08 -0.18769382 1.4901161e-08 2.9802322e-08 -0.18769382
		 0 2.9802322e-08 0.18769372 0 2.9802322e-08 0.18769372 1.4901161e-08 -2.9802322e-08
		 -0.18769382 1.4901161e-08 -2.9802322e-08 0.18769372 0 -2.9802322e-08 -0.18769382
		 0 -2.9802322e-08 0 0 0.13481086 0 0 -0.13481086 0 0 0.13481086 0 0 -0.13481086 0
		 0 0.13481086 0 0 -0.13481086 0 0 -0.13481086 0 0 0.13481086 0 1.4901161e-08 0.12229785
		 0 1.4901161e-08 -0.12229785 0 1.4901161e-08 0.12229785 0 1.4901161e-08 -0.12229785
		 0 1.4901161e-08 0.12229785 0 1.4901161e-08 -0.12229785 0 1.4901161e-08 -0.12229785
		 0 1.4901161e-08 0.12229785 0.14800593 0 2.9802322e-08 -0.14800593 0 2.9802322e-08
		 -0.14800593 0 2.9802322e-08 0.14800593 0 2.9802322e-08 0.14800593 0 -2.9802322e-08
		 -0.14800593 0 -2.9802322e-08 0.14800593 0 -2.9802322e-08 -0.14800593 0 -2.9802322e-08
		 0 0 0.13481086 0 0 -0.13481086 0 0 0.12229785 0 0 -0.12229785 0 0 0.13481086 0 0
		 -0.13481086 0 0 -0.12229785 0 0 0.12229785 0.20961465 0 -0.13481086 0.18769369 0
		 -0.12137218 0.16898298 0 -0.13481086 0.18769372 0 -0.15055591 0.20961465 0 -0.13481086
		 0.18769372 0 -0.15055591 0.16898295 0 -0.13481086 0.18769372 0 -0.12137218 -0.20961465
		 0 -0.13481086 -0.18769382 0 -0.15055591 -0.16898303 0 -0.13481086 -0.18769373 0 -0.12137218
		 -0.20961465 0 -0.13481086 -0.18769382 0 -0.12137218 -0.16898301 0 -0.13481086 -0.18769382
		 0 -0.15055591 0.20961465 0 0.13481086 0.18769372 0 0.12137218 0.16898295 0 0.13481086
		 0.18769372 0 0.15055591 0.20961465 0 0.13481086 0.18769372 0 0.15055591 0.16898298
		 0 0.13481086 0.18769369 0 0.12137218 -0.20961465 0 0.13481086 -0.18769382 0 0.15055591
		 -0.16898301 0 0.13481086 -0.18769382 0 0.12137218 -0.20961465 0 0.13481086 -0.18769373
		 0 0.12137218 -0.16898303 0 0.13481086 -0.18769382 0 0.15055591;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	rename -uid "94844384-4B9C-FEEB-B955-9DB9EBBBD003";
	setAttr ".ics" -type "componentList" 1 "f[45]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100 120.84348 0 ;
	setAttr ".rs" 59170;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 85.668515642514663 120.84347268628491 -16.758238364881127 ;
	setAttr ".cbx" -type "double3" 114.33148867543582 120.84347268628491 16.758238364881127 ;
	setAttr ".raf" no;
createNode polyCircularize -n "polyCircularize1";
	rename -uid "DA5A3A61-4D8C-B302-B6CC-54BDADD3C19E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[45]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".nor" 1;
createNode polyTweak -n "polyTweak27";
	rename -uid "850A03C7-4EE5-3D0C-1267-E4B3C764A96B";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[128]" -type "float3" 0.13821051 0 -0.17950852 ;
	setAttr ".tk[129]" -type "float3" 0.15351398 0 -0.1616136 ;
	setAttr ".tk[130]" -type "float3" -0.13821061 0 -0.17950852 ;
	setAttr ".tk[131]" -type "float3" -0.15351398 0 -0.1616136 ;
	setAttr ".tk[132]" -type "float3" -0.15351398 0 0.1616136 ;
	setAttr ".tk[133]" -type "float3" -0.13821061 0 0.17950852 ;
	setAttr ".tk[134]" -type "float3" 0.13821051 0 0.17950852 ;
	setAttr ".tk[135]" -type "float3" 0.15351398 0 0.1616136 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	rename -uid "F9957BD6-4F43-130A-F76E-878D684AFFCC";
	setAttr ".ics" -type "componentList" 1 "f[45]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 100.00001 120.84348 0 ;
	setAttr ".rs" 34543;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 90.072579263590484 120.8434807524612 -9.9274283658040403 ;
	setAttr ".cbx" -type "double3" 109.92743599519858 120.8434807524612 9.9274283658040403 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak28";
	rename -uid "175CF532-4FBE-9A70-7E4B-4CAA0AAB4FD2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[128:135]" -type "float3"  0.048981227 0 0.028927943
		 0.014179801 0 0.055090107 0.055090107 0 -0.014179784 0.028927958 0 -0.048981227 -0.014179799
		 0 -0.055090107 -0.048981227 0 -0.028927943 -0.055090107 0 0.014179784 -0.028927961
		 0 0.048981246;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "50B86AF7-4318-677A-029C-BDB87BD6A5E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[242]" "e[244]" "e[246]" "e[248]" "e[250]" "e[252]" "e[254:255]";
	setAttr ".ix" -type "matrix" 45.889203032990238 0 0 0 0 4.2289994323934659 0 0 0 0 45.889203032990238 0
		 100.00000762939453 118.72895683773561 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak29";
	rename -uid "67BA8D47-4FB6-A259-A4C3-54A2B3D08518";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[136]" -type "float3" 0 2.8683243 0 ;
	setAttr ".tk[137]" -type "float3" 0 2.8683243 0 ;
	setAttr ".tk[138]" -type "float3" 0 2.8683243 0 ;
	setAttr ".tk[139]" -type "float3" 0 2.8683243 0 ;
	setAttr ".tk[140]" -type "float3" 0 2.8683243 0 ;
	setAttr ".tk[141]" -type "float3" 0 2.8683243 0 ;
	setAttr ".tk[142]" -type "float3" 0 2.8683243 0 ;
	setAttr ".tk[143]" -type "float3" 0 2.8683243 0 ;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "F8CED247-4178-2873-AF29-01AF3F894F4A";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyExtrudeFace3.out" "monitorShape1.i";
connectAttr "polySplit24.out" "serverRackShape.i";
connectAttr "proxyAxorr_fiveFootSix:groupId1.id" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[0].gid"
		;
connectAttr "proxyAxorr_fiveFootSix:lambert2SG.mwc" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[0].gco"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId3.id" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[1].gid"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.mwc" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[1].gco"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId4.id" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[2].gid"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.mwc" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[2].gco"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId5.id" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[3].gid"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.mwc" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[3].gco"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId6.id" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[4].gid"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.mwc" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[4].gco"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId7.id" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[5].gid"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.mwc" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[5].gco"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId2.id" "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.ciog.cog[0].cgid"
		;
connectAttr "polyExtrudeFace8.out" "powerSupplyShape.i";
connectAttr "polyExtrudeFace10.out" "serverShape1.i";
connectAttr "polySplit23.out" "leverbaseShape1.i";
connectAttr "skinCluster3.og[0]" "keyboardShape.i";
connectAttr "polyBridgeEdge12.out" "keyboardShape9Orig.i";
connectAttr "skinCluster2.og[0]" "leverKeyboardBaseShape.i";
connectAttr "polySplit21.out" "leverShape1.i";
connectAttr "polyCube6.out" "leverShape10Orig1.i";
connectAttr "joint1.s" "joint2.is";
connectAttr "polyBevel5.out" "everythingStandShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "monitorShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "monitorShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "monitorShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "proxyAxorr_fiveFootSix:lambert2SG.msg" "proxyAxorr_fiveFootSix:materialInfo1.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_red.msg" "proxyAxorr_fiveFootSix:materialInfo1.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_red.oc" "proxyAxorr_fiveFootSix:lambert2SG.ss"
		;
connectAttr "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[0]" "proxyAxorr_fiveFootSix:lambert2SG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.ciog.cog[0]" "proxyAxorr_fiveFootSix:lambert2SG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:groupId1.msg" "proxyAxorr_fiveFootSix:lambert2SG.gn"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:groupId2.msg" "proxyAxorr_fiveFootSix:lambert2SG.gn"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_white.oc" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.ss"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId3.msg" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.gn"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[1]" "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.msg" "proxyAxorr_fiveFootSix:materialInfo2.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_white.msg" "proxyAxorr_fiveFootSix:materialInfo2.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_black.oc" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.ss"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId4.msg" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.gn"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[2]" "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.msg" "proxyAxorr_fiveFootSix:materialInfo3.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_black.msg" "proxyAxorr_fiveFootSix:materialInfo3.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyDark.oc" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.ss"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId5.msg" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.gn"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[3]" "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.msg" "proxyAxorr_fiveFootSix:materialInfo4.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyDark.msg" "proxyAxorr_fiveFootSix:materialInfo4.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle.oc" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.ss"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId6.msg" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.gn"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[4]" "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.msg" "proxyAxorr_fiveFootSix:materialInfo5.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle.msg" "proxyAxorr_fiveFootSix:materialInfo5.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyLight.oc" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.ss"
		;
connectAttr "proxyAxorr_fiveFootSix:groupId7.msg" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.gn"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:bipedStandin_fiveFootSixShape.iog.og[5]" "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.dsm"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.msg" "proxyAxorr_fiveFootSix:materialInfo6.sg"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyLight.msg" "proxyAxorr_fiveFootSix:materialInfo6.m"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_black.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyDark.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyLight.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_white.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.msg" "proxyAxorr_fiveFootSix:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "polyCube2.out" "polySplitRing1.ip";
connectAttr "serverRackShape.wm" "polySplitRing1.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace4.ip";
connectAttr "serverRackShape.wm" "polyExtrudeFace4.mp";
connectAttr "polySplitRing1.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace4.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyTweak5.ip";
connectAttr "polyTweak5.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBridgeEdge1.ip";
connectAttr "serverRackShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polySplitRing2.ip";
connectAttr "serverRackShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "serverRackShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyBridgeEdge2.ip";
connectAttr "serverRackShape.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyBridgeEdge3.ip";
connectAttr "serverRackShape.wm" "polyBridgeEdge3.mp";
connectAttr "polyBridgeEdge3.out" "polyBridgeEdge4.ip";
connectAttr "serverRackShape.wm" "polyBridgeEdge4.mp";
connectAttr "polyBridgeEdge4.out" "polyBridgeEdge5.ip";
connectAttr "serverRackShape.wm" "polyBridgeEdge5.mp";
connectAttr "polyBridgeEdge5.out" "polyBridgeEdge6.ip";
connectAttr "serverRackShape.wm" "polyBridgeEdge6.mp";
connectAttr "polyCube3.out" "polySplitRing4.ip";
connectAttr "powerSupplyShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "powerSupplyShape.wm" "polySplitRing5.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "powerSupplyShape.wm" "polyExtrudeFace5.mp";
connectAttr "polySplitRing5.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "powerSupplyShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace7.ip";
connectAttr "powerSupplyShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace8.ip";
connectAttr "powerSupplyShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak8.ip";
connectAttr "polyCube4.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polyExtrudeFace9.ip";
connectAttr "serverShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak9.out" "polyExtrudeFace10.ip";
connectAttr "serverShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyDelEdge1.ip";
connectAttr "polyBridgeEdge6.out" "polyTweak10.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyCylinder1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyBridgeEdge7.ip";
connectAttr "leverbaseShape1.wm" "polyBridgeEdge7.mp";
connectAttr "polyBridgeEdge7.out" "polyBridgeEdge8.ip";
connectAttr "leverbaseShape1.wm" "polyBridgeEdge8.mp";
connectAttr "polyBridgeEdge8.out" "polySplitRing6.ip";
connectAttr "leverbaseShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyExtrudeEdge1.ip";
connectAttr "leverbaseShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "polyExtrudeEdge2.ip";
connectAttr "leverbaseShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyTweak12.out" "polyBridgeEdge9.ip";
connectAttr "leverbaseShape1.wm" "polyBridgeEdge9.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak12.ip";
connectAttr "polyBridgeEdge9.out" "polyBridgeEdge10.ip";
connectAttr "leverbaseShape1.wm" "polyBridgeEdge10.mp";
connectAttr "polyBridgeEdge10.out" "polyBridgeEdge11.ip";
connectAttr "leverbaseShape1.wm" "polyBridgeEdge11.mp";
connectAttr "polyDelEdge2.out" "polySplit4.ip";
connectAttr "polyCube5.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace11.ip";
connectAttr "keyboardShape.wm" "polyExtrudeFace11.mp";
connectAttr "polySplit13.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "keyboardShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "deleteComponent9.ig";
connectAttr "polyTweak16.out" "polyMergeVert1.ip";
connectAttr "keyboardShape.wm" "polyMergeVert1.mp";
connectAttr "deleteComponent9.og" "polyTweak16.ip";
connectAttr "polyTweak17.out" "polyMergeVert2.ip";
connectAttr "keyboardShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyMergeVert3.ip";
connectAttr "keyboardShape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyMergeVert4.ip";
connectAttr "keyboardShape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak19.ip";
connectAttr "polyMergeVert4.out" "polyTweak20.ip";
connectAttr "polyTweak20.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyMergeVert5.ip";
connectAttr "keyboardShape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "keyboardShape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "keyboardShape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "keyboardShape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "keyboardShape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "keyboardShape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "keyboardShape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "keyboardShape.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "keyboardShape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "keyboardShape.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyBridgeEdge12.ip";
connectAttr "keyboardShape.wm" "polyBridgeEdge12.mp";
connectAttr "polyBridgeEdge11.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polyExtrudeFace13.ip";
connectAttr "leverbaseShape1.wm" "polyExtrudeFace13.mp";
connectAttr "leverShape10Orig1.w" "skinCluster1.ip[0].ig";
connectAttr "leverShape10Orig1.o" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint1.msg" "skinCluster1.ptt";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "leverKeyboardBaseShape2Orig.w" "skinCluster2.ip[0].ig";
connectAttr "leverKeyboardBaseShape2Orig.o" "skinCluster2.orggeom[0]";
connectAttr "joint1.wm" "skinCluster2.ma[0]";
connectAttr "joint2.wm" "skinCluster2.ma[1]";
connectAttr "joint1.liw" "skinCluster2.lw[0]";
connectAttr "joint2.liw" "skinCluster2.lw[1]";
connectAttr "joint1.obcc" "skinCluster2.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster2.ifcl[1]";
connectAttr "bindPose1.msg" "skinCluster2.bp";
connectAttr "joint2.msg" "skinCluster2.ptt";
connectAttr "keyboardShape9Orig.w" "skinCluster3.ip[0].ig";
connectAttr "keyboardShape9Orig.o" "skinCluster3.orggeom[0]";
connectAttr "joint1.wm" "skinCluster3.ma[0]";
connectAttr "joint2.wm" "skinCluster3.ma[1]";
connectAttr "joint1.liw" "skinCluster3.lw[0]";
connectAttr "joint2.liw" "skinCluster3.lw[1]";
connectAttr "joint1.obcc" "skinCluster3.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster3.ifcl[1]";
connectAttr "bindPose1.msg" "skinCluster3.bp";
connectAttr "joint2.msg" "skinCluster3.ptt";
connectAttr "skinCluster1.og[0]" "polyBevel1.ip";
connectAttr "leverShape1.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polyTweak21.out" "polyBevel2.ip";
connectAttr "leverbaseShape1.wm" "polyBevel2.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak21.ip";
connectAttr "polyBevel2.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit4.out" "polySplit24.ip";
connectAttr "polyCube7.out" "polyExtrudeFace14.ip";
connectAttr "everythingStandShape.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace14.out" "polyExtrudeFace15.ip";
connectAttr "everythingStandShape.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace15.out" "polyExtrudeFace16.ip";
connectAttr "everythingStandShape.wm" "polyExtrudeFace16.mp";
connectAttr "polyTweak22.out" "polyExtrudeFace17.ip";
connectAttr "everythingStandShape.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace18.ip";
connectAttr "everythingStandShape.wm" "polyExtrudeFace18.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace19.ip";
connectAttr "everythingStandShape.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polyBevel3.ip";
connectAttr "everythingStandShape.wm" "polyBevel3.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polyBevel4.ip";
connectAttr "everythingStandShape.wm" "polyBevel4.mp";
connectAttr "polyBevel3.out" "polyTweak26.ip";
connectAttr "polyBevel4.out" "polyExtrudeFace20.ip";
connectAttr "everythingStandShape.wm" "polyExtrudeFace20.mp";
connectAttr "polyTweak27.out" "polyCircularize1.ip";
connectAttr "everythingStandShape.wm" "polyCircularize1.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polyExtrudeFace21.ip";
connectAttr "everythingStandShape.wm" "polyExtrudeFace21.mp";
connectAttr "polyCircularize1.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polyBevel5.ip";
connectAttr "everythingStandShape.wm" "polyBevel5.mp";
connectAttr "polyExtrudeFace21.out" "polyTweak29.ip";
connectAttr "proxyAxorr_fiveFootSix:lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_whiteSG.pa" ":renderPartition.st"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_blackSG.pa" ":renderPartition.st"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_darkSG.pa" ":renderPartition.st" 
		-na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_middleSG.pa" ":renderPartition.st"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_lightSG.pa" ":renderPartition.st"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_red.msg" ":defaultShaderList1.s" 
		-na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_white.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_black.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyDark.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyMiddle.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "proxyAxorr_fiveFootSix:proxyAxorr_greyLight.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "monitorShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "serverRackShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "powerSupplyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "serverShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "serverShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "serverShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "serverShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "serverShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leverbaseShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "keyboardShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leverKeyboardBaseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "leverShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "everythingStandShape.iog" ":initialShadingGroup.dsm" -na;
// End of Boss3Model.ma
