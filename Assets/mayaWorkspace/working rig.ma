//Maya ASCII 2024 scene
//Name: working rig.ma
//Last modified: Mon, Mar 23, 2026 06:33:25 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "BAC098D8-4721-112C-4D9E-DD8F8FD6A874";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "763A03DA-4FA2-0430-47A5-999722918ED3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.11927999044946402 12.022615846924293 15.472945749242101 ;
	setAttr ".r" -type "double3" -33.938352729602904 -0.59999999999986331 -1.2424722979911184e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "5625FD48-467E-1F73-E727-AF87866ECBEE";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 19.006619918041149;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "68C9E85F-4ACF-5A19-B578-E58BDBDF4A6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1C66B2DE-4D52-C295-CAD3-5887CCBF48AF";
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
	rename -uid "3DA2122F-4DE2-597E-E878-BAB67015AD03";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3D6D847D-4A7C-9E1E-1145-2F8001F55F71";
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
	rename -uid "10BE263C-4197-6392-FE1A-EBB173BEB0FC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "415421AC-4AAC-2DD6-0D02-71B9FA7FEDE2";
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
createNode joint -n "mixamorig:Hips";
	rename -uid "501A3E00-42F2-2A97-0161-B7AD42A80806";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 9.3156404545879923e-06 1.6975657939910889 0.0015477146953344345 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr ".r" -type "double3" -2.7935507205256727e-06 9.2691130703315139e-05 -0.0012502248864620924 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.0090794599999999993 1.6942250000000001 -0.118948 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Spine" -p "mixamorig:Hips";
	rename -uid "7158B68E-4F3C-8DEA-0AE3-95B825D6047C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.24810111522674561 0.066918015480041504 ;
	setAttr ".r" -type "double3" 4.1867142499540932e-06 0.00023608240007888526 0.0012312267208471894 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".jo" -type "double3" 15.094645272503454 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.96549700000000005 0.26041399999999998 0
		 0 -0.26041399999999998 0.96549700000000005 0 0.0090794599999999993 1.942326 -0.052029600000000002 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Spine1" -p "mixamorig:Spine";
	rename -uid "EFB2F1D1-4D1F-35AC-3AB2-BAAF9195880A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.29979544878005981 1.5689164412080459e-09 ;
	setAttr ".r" -type "double3" -2.2766419485290082e-15 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".jo" -type "double3" 2.0672919882311688e-05 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.96549700000000005 0.26041500000000001 0
		 0 -0.26041500000000001 0.96549700000000005 0 0.0090794599999999993 2.2317779999999998 0.026041399999999999 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Spine2" -p "mixamorig:Spine1";
	rename -uid "DE5E6ED6-4619-EAE8-FBD3-2AA682E0D84E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.34262305498123169 1.8075406726936194e-09 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-15 0 0 ;
	setAttr -av ".rx";
	setAttr -av ".rz";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0.96549700000000005 0.26041500000000001 0
		 0 -0.26041500000000001 0.96549700000000005 0 0.0090794599999999993 2.5625789999999999 0.11526500000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Neck" -p "mixamorig:Spine2";
	rename -uid "DA935341-40A9-461D-AA00-B9A208DEE25A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.38545110821723938 -8.2298221570908936e-08 ;
	setAttr ".r" -type "double3" -1.388687110193132e-06 -4.8853299877693601e-12 -2.6055114663026128e-11 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".jo" -type "double3" -15.094665945423337 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.0090794599999999993 2.9347310000000002 0.215642 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Head" -p "mixamorig:Neck";
	rename -uid "70292780-4CB4-3A8F-D62C-45B7AF6704B6";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0.32206821441650391 0.27582156658172607 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-15 0 0 ;
	setAttr -av ".rx";
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.0090794599999999993 3.256799 0.49146400000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:HeadTop_End" -p "mixamorig:Head";
	rename -uid "622B498F-42E5-2647-7D69-EBA9DB7B5C8D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 0.12103104591369629 0.10365182161331171 ;
	setAttr ".r" -type "double3" -3.1805546814635168e-15 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftShoulder" -p "mixamorig:Spine2";
	rename -uid "3287AAA6-4FAD-A3D4-1181-40843FA6C398";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.30383723974227905 0.24285852909088135 0.038297586143016815 ;
	setAttr ".r" -type "double3" -0.66720402240753174 -0.0014906979631632566 -0.19989681243896484 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 114.95407369749432 82.81339687518421 -0.025817138491943243 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.12510099999999999 0.25831399999999999 -0.95792699999999997 0
		 0.89933300000000005 -0.43726300000000001 -0.00046314899999999999 0 -0.41898600000000003 -0.86143700000000001 -0.28701300000000002 0
		 0.312917 2.7870849999999998 0.21548600000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftArm" -p "mixamorig:LeftShoulder";
	rename -uid "06F505A8-450D-5511-02EE-E9B8734B3A1E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.6551002790521352e-09 0.67757230997085571 -5.5110631613786154e-09 ;
	setAttr ".r" -type "double3" -8.4440641403198242 0.18585675954818726 5.055816650390625 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999989 1 ;
	setAttr ".jo" -type "double3" -15.731839415528043 3.3214166958560213e-07 -13.18824993634537 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.083382200000000004 0.35126400000000002 -0.93255600000000005 0
		 0.98388900000000001 -0.11949 -0.13297999999999999 0 -0.158142 -0.92862 -0.33564100000000002 0
		 0.92227999999999999 2.4908079999999999 0.215172 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftForeArm" -p "mixamorig:LeftArm";
	rename -uid "3BD2B6D1-4ACD-713A-0EFB-2A914B9A22FE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.9750508723225266e-09 0.72147572040557861 1.9098393977401429e-09 ;
	setAttr ".r" -type "double3" 11.773905754089355 1.9143823385238645 -18.408245086669922 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999967 1 ;
	setAttr ".jo" -type "double3" -12.41094481921872 1.1576432847364223e-07 18.39760338869884 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.231404 0.29559800000000003 -0.92686199999999996 0
		 0.97147399999999995 -0.019423800000000001 0.236348 0 0.051860700000000003 -0.95511500000000005 -0.291661 0
		 1.6321319999999999 2.404598 0.11923 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHand" -p "mixamorig:LeftForeArm";
	rename -uid "B40675A0-41B8-FDF8-FB00-EEA333FE940B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -9.490678465340352e-09 1.0695385932922363 -2.5459292452012505e-09 ;
	setAttr ".r" -type "double3" -13.809967041015625 0.17737361788749695 1.4644016027450562 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 13.814471274929565 2.4902777024646002e-07 -1.4644052533601797 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.20650199999999999 0.29599799999999998 -0.93259999999999998 0
		 0.96119100000000002 -0.23958099999999999 0.136792 0 -0.18294299999999999 -0.924655 -0.33398499999999998 0
		 2.6711619999999998 2.3838240000000002 0.37201299999999998 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandIndex1" -p "mixamorig:LeftHand";
	rename -uid "0562EDA4-44EF-1813-8605-95BBA5E05E5A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.3296298506659809e-09 1.2922822237014771 -1.3604802617805944e-08 ;
	setAttr ".r" -type "double3" -29.342397689819336 3.7703769066865789e-06 2.1423256839625537e-06 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1.0000000000000004 1.0000000000000009 ;
	setAttr ".jo" -type "double3" 29.342424988176159 -48.086626899102882 3.4651747528569707e-07 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0018062499999999999 -0.49035800000000002 -0.87151900000000004 0
		 0.70269000000000004 -0.61946000000000001 0.34999400000000003 0 -0.71149399999999996 -0.61304000000000003 0.34345100000000001 0
		 3.9132920000000002 2.074217 0.548786 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandIndex2" -p "mixamorig:LeftHandIndex1";
	rename -uid "2EDE074E-41AD-0E93-EBCB-D4B7A3F87317";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3110945662475615e-09 0.29834556579589844 2.3318182940101906e-09 ;
	setAttr ".r" -type "double3" -5.9389042854309082 -0.49680063128471375 -9.5549144744873047 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999944 0.99999999999999956 0.99999999999999967 ;
	setAttr ".jo" -type "double3" 5.5659705946048697e-15 6.3611096243289403e-15 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0018062499999999999 -0.49035800000000002 -0.87151900000000004 0
		 0.70269000000000004 -0.61946000000000001 0.34999400000000003 0 -0.71149399999999996 -0.61304000000000003 0.34345100000000001 0
		 4.1229370000000003 1.8894040000000001 0.65320599999999995 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandIndex3" -p "mixamorig:LeftHandIndex2";
	rename -uid "139EF89A-4EC2-7F5F-87DE-E5A7931295EE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.052329964935779572 0.30897063016891479 0.032609745860099792 ;
	setAttr ".r" -type "double3" 27.825048446655273 -2.2993197441101074 19.932666778564453 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
	setAttr ".jo" -type "double3" 0 -3.1805546814635168e-15 6.3611093629270335e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0018062499999999999 -0.49035800000000002 -0.87151900000000004 0
		 0.70269000000000004 -0.61946000000000001 0.34999400000000003 0 -0.71149399999999996 -0.61304000000000003 0.34345100000000001 0
		 4.316751 1.703678 0.81815000000000004 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandIndex4" -p "mixamorig:LeftHandIndex3";
	rename -uid "CAEF8D38-4672-ABD8-1E50-74A613EA7A87";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.015534057281911373 0.077406004071235657 -0.031556647270917892 ;
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999978 1 ;
	setAttr ".jo" -type "double3" 1.5902773407317584e-15 -3.1805546814635168e-15 6.3611093629270335e-15 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightShoulder" -p "mixamorig:Spine2";
	rename -uid "1C439EE1-474A-9531-3E7B-B083765496BC";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.30383723974227905 0.2429402619600296 0.03860059380531311 ;
	setAttr ".r" -type "double3" -0.6741102933883667 0.00086110236588865519 0.20225615799427032 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 114.94000364841911 -82.757258529550839 0.024637820056574444 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.12607299999999999 -0.25828400000000001 0.95780699999999996 0
		 -0.89933300000000005 -0.43726300000000001 0.00046315400000000002 0 0.41869400000000001 -0.86144600000000005 -0.28741100000000003 0
		 -0.29475800000000002 2.7870849999999998 0.21579899999999999 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightArm" -p "mixamorig:RightShoulder";
	rename -uid "EF59D91C-4AA1-94C0-7363-39A0E5501D71";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.6434478222748794e-09 0.67757230997085571 -5.5145585875493452e-09 ;
	setAttr ".r" -type "double3" -8.3558082580566406 -0.17291395366191864 -4.8483061790466309 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 1 ;
	setAttr ".jo" -type "double3" -15.789718630251571 -1.1558008133904063e-06 13.018860422649116 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.079761700000000005 -0.35014899999999999 0.93329200000000001 0
		 -0.98441299999999998 -0.11955399999999999 -0.12898399999999999 0 0.15674199999999999 -0.929033 -0.33515499999999998 0
		 -0.90412099999999995 2.4908079999999999 0.216113 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightForeArm" -p "mixamorig:RightArm";
	rename -uid "2C7DE351-42C7-4A71-53B4-BEA747BC815C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.736711384760838e-09 0.721091628074646 2.6469710867615959e-09 ;
	setAttr ".r" -type "double3" 11.64594554901123 -1.843126058578491 17.927091598510742 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".jo" -type "double3" -12.242138628498614 -3.6473611026288297e-07 -17.917546486832492 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.22696 -0.29638599999999998 0.92770900000000001 0
		 -0.97258699999999998 -0.019446100000000001 0.23172599999999999 0 -0.050639999999999998 -0.95487 -0.29267500000000002 0
		 -1.613974 2.404598 0.12310400000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHand" -p "mixamorig:RightForeArm";
	rename -uid "0F97FD5D-493E-EA60-3DCE-1C9F831CC5C2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.2540105599518938e-09 1.0683155059814453 -1.3018603972625442e-09 ;
	setAttr ".r" -type "double3" -12.988389015197754 -0.0087939798831939697 -0.077095977962017059 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 12.988425900053736 -7.0565726654758643e-07 0.077115259109754641 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.22564999999999999 -0.29641200000000001 0.92801999999999996 0
		 -0.95938199999999996 -0.23317099999999999 0.158801 0 0.169317 -0.92615899999999995 -0.33698699999999998 0
		 -2.653003 2.3838240000000002 0.37065999999999999 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandIndex1" -p "mixamorig:RightHand";
	rename -uid "3B7315FA-457B-F5A5-879F-E89B681BCC9C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.11559144144735e-08 1.3844670057296753 9.9589847479819582e-09 ;
	setAttr ".r" -type "double3" -30.589498519897461 -1.1850316695927177e-05 -1.2908003554912284e-06 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".jo" -type "double3" 30.589461759139944 39.991172769927019 7.1526347203228403e-07 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0640656 0.36812 0.92756799999999995 0 -0.68606 -0.65874999999999995 0.30882100000000001 0
		 0.724719 -0.65615199999999996 0.21034900000000001 0 -3.981236 2.0610059999999999 0.59051399999999998 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandIndex2" -p "mixamorig:RightHandIndex1";
	rename -uid "301DF247-45E1-0896-18C0-AAA0CF801ABD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.4719464515073923e-09 0.26064109802246094 -9.3427123815104096e-09 ;
	setAttr ".r" -type "double3" -1.80963134765625 0.13659186661243439 8.6320648193359375 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 2.3854161387488653e-15 1.5902772965065912e-15 3.1805545930131824e-15 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0640656 0.36812 0.92756799999999995 0 -0.68606 -0.65874999999999995 0.30882100000000001 0
		 0.724719 -0.65615199999999996 0.21034900000000001 0 -4.1600510000000002 1.8893089999999999 0.67100599999999999 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandIndex3" -p "mixamorig:RightHandIndex2";
	rename -uid "95E622E2-4ACD-CFEF-6EBC-B0B8EC7CD83B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.042328167706727982 0.2785412073135376 0.0089299371466040611 ;
	setAttr ".r" -type "double3" 23.787372589111328 -0.86108118295669556 -11.492941856384277 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000000000002 0.99999999999999989 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 3.1805546814635176e-15 3.1805546814635168e-15 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0640656 0.36812 0.92756799999999995 0 -0.68606 -0.65874999999999995 0.30882100000000001 0
		 0.724719 -0.65615199999999996 0.21034900000000001 0 -4.3419629999999998 1.7155419999999999 0.79816500000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandIndex4" -p "mixamorig:RightHandIndex3";
	rename -uid "8594BDE5-4E01-540B-D103-1E94B285E898";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0031984406523406506 0.060050122439861298 -0.024207629263401031 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 3.1805546814635176e-15 3.1805546814635168e-15 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftUpLeg" -p "mixamorig:Hips";
	rename -uid "63564DB5-402A-EE8D-B2FE-09A88585B7C0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.31342336535453796 -0.13779735565185547 -0.010914184153079987 ;
	setAttr ".r" -type "double3" -1.3788220882415771 -1.3631633520126343 -5.6569175720214844 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".jo" -type "double3" 14.216542463184808 -2.4386216087014154 -170.46622892417389 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98529500000000003 -0.16547899999999999 0.042549099999999999 0
		 0.17086200000000001 -0.95425499999999996 0.245365 0 1.40927e-09 0.249027 0.96849700000000005 0
		 0.32250299999999998 1.5564279999999999 -0.12986200000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftLeg" -p "mixamorig:LeftUpLeg";
	rename -uid "9ACF22B9-40E8-2FFE-40B8-EEBA2F281E44";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.0644976273540578e-10 0.77333146333694458 -9.317645321971213e-09 ;
	setAttr ".r" -type "double3" -0.88901042938232422 0.13264521956443787 0.072228781878948212 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".jo" -type "double3" -34.043777853262924 -13.931727665947252 -3.6428379186754862e-08 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.95631100000000002 -0.10065399999999999 0.274478 0
		 0.0087728500000000004 -0.94832000000000005 -0.317193 0 0.29221999999999998 -0.30092799999999997 0.90777200000000002 0
		 0.45463599999999998 0.81847199999999998 0.059886500000000002 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftFoot" -p "mixamorig:LeftLeg";
	rename -uid "0ECDF2D0-4657-4E9F-FD48-59A28EEBF056";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3052557923387553e-09 0.61370456218719482 4.5415453620023527e-09 ;
	setAttr ".r" -type "double3" 1.3625724315643311 3.9482209682464595 4.9468293190002441 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999967 ;
	setAttr ".jo" -type "double3" 57.588042610809993 25.381231636602489 1.0272935010911057e-07 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98926099999999995 0.038050899999999999 -0.141122 0
		 -0.118468 -0.77425200000000005 0.62169099999999999 0 -0.085608299999999998 0.63173299999999999 0.77044500000000005 0
		 0.46001900000000001 0.236484 -0.13477700000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftToeBase" -p "mixamorig:LeftFoot";
	rename -uid "66258C73-443E-E173-2649-D6A45E541E61";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.2281430861758054e-09 0.2870216965675354 -2.5585948915107792e-09 ;
	setAttr ".r" -type "double3" -1.0376534191891551e-06 -7.1989410344031057e-07 2.8273695988900727e-06 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000007 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 51.536363352137542 -0.62417523166490907 -1.2123232565760287e-07 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99013499999999999 0.044930600000000001 -0.13272100000000001 0
		 -0.13227900000000001 0.012696499999999999 0.99113099999999998 0 0.0462172 0.99890900000000005 -0.00662789 0
		 0.42601699999999998 0.014256700000000001 0.043662300000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftToe_End" -p "mixamorig:LeftToeBase";
	rename -uid "421F461A-4263-F979-D6DF-1BAC2DF769F6";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -1.1938214861118013e-09 0.16902355849742889 -1.4598496023143781e-10 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".jo" -type "double3" -7.6525562979776674e-08 -4.4229590882881653e-15 1.5902774250024864e-15 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightUpLeg" -p "mixamorig:Hips";
	rename -uid "A3969E04-43B3-DE54-CF99-6BAEE37D7162";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.31342336535453796 -0.13779735565185547 -0.0095096752047538757 ;
	setAttr ".r" -type "double3" -1.1931847333908081 1.4242959022521973 5.6598258018493652 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 14.660496695701898 2.5079044657032039 170.50447462934505 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.98535399999999995 0.16481299999999999 -0.043757200000000003 0
		 -0.17052200000000001 -0.95235999999999998 0.25284899999999999 0 -5.9167699999999994e-10 0.25660699999999997 0.96651600000000004 0
		 -0.304344 1.5564279999999999 -0.12845699999999999 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightLeg" -p "mixamorig:RightUpLeg";
	rename -uid "498E52CE-43A4-557C-7825-D4823C0929CF";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.1112787901577121e-09 0.77487009763717651 -8.9284011295376331e-09 ;
	setAttr ".r" -type "double3" -0.87664884328842163 -0.1134939342737198 -0.073092937469482422 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".jo" -type "double3" -35.48794507251273 13.138301355490658 4.399875899829649e-07 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.959561 0.102171 -0.26230300000000001 0 -0.0088221800000000006 -0.94226500000000002 -0.33475300000000002 0
		 -0.28136100000000003 -0.31890200000000002 0.90506200000000003 0 -0.436477 0.81847199999999998 0.0674675 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightFoot" -p "mixamorig:RightLeg";
	rename -uid "FFBFDE5A-4D6E-486E-0FCF-17A38217C763";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.0536080896628164e-09 0.61767566204071045 2.5803625902653948e-09 ;
	setAttr ".r" -type "double3" 1.2993355989456177 -4.3736424446105957 -4.4907736778259277 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.0000000000000004 1.0000000000000007 1.0000000000000002 ;
	setAttr ".jo" -type "double3" 64.31257237458577 -23.491271024825227 7.7022557689285815e-07 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99218700000000004 -0.033414100000000002 0.120203 0
		 0.108325 -0.708704 0.69713999999999998 0 0.061893700000000003 0.70471399999999995 0.70678700000000005 0
		 -0.44192599999999999 0.236458 -0.13930100000000001 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightToeBase" -p "mixamorig:RightFoot";
	rename -uid "7A36A16F-4802-673A-68E1-46A5984D4CA2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.2284910866355858e-09 0.31362983584403992 5.4018167716662902e-09 ;
	setAttr ".r" -type "double3" 2.4710975594643969e-06 -7.640853709744988e-07 3.4643622370822413e-07 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 0.99999999999999989 1.0000000000000002 0.99999999999999989 ;
	setAttr ".jo" -type "double3" 45.836351563110043 -0.23377206286630051 1.0594771721567683e-07 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.99192599999999997 -0.0305385 0.123085 0 0.12277399999999999 0.011860900000000001 0.99236400000000002 0
		 -0.0317652 0.99946299999999999 -0.0080157400000000004 0 -0.40795199999999998 0.0141876 0.079342499999999996 1;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightToe_End" -p "mixamorig:RightToeBase";
	rename -uid "E66E12FF-44C6-FC34-7529-7D929E844595";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -8.3180684562478291e-12 0.18212002515792847 4.3126613391564206e-12 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 0.99999999999999956 ;
	setAttr ".jo" -type "double3" -3.5120546348476959e-08 2.1120870427966445e-15 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 0.1;
	setAttr ".fbxID" 5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E0B626C4-4AF5-B911-9C99-C08CA87F9BD2";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8465111E-4AC2-A0B3-D646-3DB5F54161C5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "804FAFB6-42B3-9E5A-DBA9-13B9315F7858";
createNode displayLayerManager -n "layerManager";
	rename -uid "798A7815-41C4-5E6E-C6B6-468F24516388";
createNode displayLayer -n "defaultLayer";
	rename -uid "17EE448E-48DA-F9D8-7719-57AB4D0F4CF5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FB5B591F-4848-DD2A-E42D-1DB8BCEFD746";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1BCE26A8-448C-6976-62C5-29881217F5E0";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "C85F289A-4741-366E-CF17-2C95CD64C8F3";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "D4E35F49-4F40-5A19-A2E2-4499C0E221F2";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "66609EE2-497C-5791-F49E-93AD32373505";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "37817352-4FE2-C40C-BDE6-848C027E99D2";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode standardSurface -n "standardSurface2";
	rename -uid "30A2E594-47D7-6CBD-0B46-BD993E850578";
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
createNode shadingEngine -n "polySurface20SG";
	rename -uid "6F5CEB7C-4CA8-D070-DDA6-8C9215710C8A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "7B5622AD-49E3-BDAF-1315-51824F23CDF8";
createNode animCurveTL -n "Hips_translateX";
	rename -uid "E11FB0C4-4923-C2F5-FB1F-5C91023655B2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 9.3156404545879923e-06 0.8 9.3156404545879923e-06;
createNode animCurveTL -n "Hips_translateY";
	rename -uid "687383CB-4227-CFD9-4317-398119934FDD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.6975657939910889 0.8 1.6975657939910889;
createNode animCurveTL -n "Hips_translateZ";
	rename -uid "8AAEC530-470C-4C87-A375-68AFC0604E02";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0015477146953344345 0.8 0.0015477146953344345;
createNode animCurveTA -n "Hips_rotateX";
	rename -uid "C25548F6-4B52-EC79-628F-1BA35D7F97EE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7935507205256727e-06;
createNode animCurveTA -n "Hips_rotateY";
	rename -uid "B2387006-46EC-E577-1A7C-24A042AE94CE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.2691130703315139e-05;
createNode animCurveTA -n "Hips_rotateZ";
	rename -uid "198B6A43-4505-BE87-DF76-8B974BF2C85B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0012502248864620924;
createNode animCurveTA -n "Spine_rotateX";
	rename -uid "CE948F45-450A-446C-4B97-51AE4D5D4BB4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.1867142499540932e-06;
createNode animCurveTA -n "Spine_rotateY";
	rename -uid "5EBB0DA0-46B4-E9D6-4987-6D8CF17DDB5C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00023608240007888526;
createNode animCurveTA -n "Spine_rotateZ";
	rename -uid "011DAEE1-4F1A-5AB4-CEDF-C2B9ED29FC36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0012312267208471894;
createNode animCurveTA -n "Spine1_rotateX";
	rename -uid "78D2BB8E-40B3-4744-3D8F-008A690197BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Spine1_rotateY";
	rename -uid "30069766-46B3-A5DC-3026-4CB949995CEE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.563853040120744e-11;
createNode animCurveTA -n "Spine1_rotateZ";
	rename -uid "D83E0D61-44B0-B356-3AEE-7CBCF94AC19B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.6740599985747338e-11;
createNode animCurveTA -n "Spine2_rotateX";
	rename -uid "85689541-47B6-EE96-FA76-318E973360E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Spine2_rotateY";
	rename -uid "45BE0222-48FC-8865-2A10-59A7A9271918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Spine2_rotateZ";
	rename -uid "CE066A90-41D0-A738-49BD-F397C6006AD1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.4463488326280232e-27;
createNode animCurveTA -n "Neck_rotateX";
	rename -uid "BE40C689-4A37-695A-8864-7E892F1B8F9D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.388687110193132e-06;
createNode animCurveTA -n "Neck_rotateY";
	rename -uid "CBCB30BB-4B52-6CA4-42E2-6CAC1255ABFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.8853299877693601e-12;
createNode animCurveTA -n "Neck_rotateZ";
	rename -uid "BFCEBC90-4F7B-A46A-CDA5-93A60F1BBE54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.6055114663026128e-11;
createNode animCurveTA -n "Head_rotateX";
	rename -uid "4771E869-4884-3763-6ED9-B68F50BB8EBB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Head_rotateY";
	rename -uid "48978CD5-4E5F-FC0E-2594-828E0D68CD78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Head_rotateZ";
	rename -uid "57BFB29F-4E7F-F1F5-7750-4D9E9938B02A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "LeftShoulder_rotateX";
	rename -uid "A2797743-4B20-1E6E-1A7C-CD9903D94A89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.66720402240753174;
createNode animCurveTA -n "LeftShoulder_rotateY";
	rename -uid "1596A29A-49FF-4D34-BDC7-1B995F816951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0014906979631632566;
createNode animCurveTA -n "LeftShoulder_rotateZ";
	rename -uid "FEC192B8-4DD0-3A33-3CF8-09A050BB47C5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.19989681243896484;
createNode animCurveTA -n "LeftArm_rotateX";
	rename -uid "955FA239-4458-638F-492A-BBB381594021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.4440641403198242;
createNode animCurveTA -n "LeftArm_rotateY";
	rename -uid "C67FE3D5-45A0-B53C-4089-00B4AEA68F41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.18585675954818726;
createNode animCurveTA -n "LeftArm_rotateZ";
	rename -uid "7C71E797-430B-AC82-4B90-568FD58B6C0E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.055816650390625;
createNode animCurveTA -n "LeftForeArm_rotateX";
	rename -uid "E62538E9-4275-3CEB-2A46-B0B81E0D1FF2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.773905754089355;
createNode animCurveTA -n "LeftForeArm_rotateY";
	rename -uid "92C73FC6-4C0D-4D7A-4101-82BF14A5227E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9143823385238645;
createNode animCurveTA -n "LeftForeArm_rotateZ";
	rename -uid "F64B1AFD-49C3-9F60-9ECE-44898CA97F2C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -18.408245086669922;
createNode animCurveTA -n "LeftHand_rotateX";
	rename -uid "11172213-47F7-01FC-C2B1-00B9010DB32D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -13.809967041015625;
createNode animCurveTA -n "LeftHand_rotateY";
	rename -uid "2D995C3C-4B6B-50D3-8685-B2A2C3345B14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.17737361788749695;
createNode animCurveTA -n "LeftHand_rotateZ";
	rename -uid "B29A464C-425D-2B82-0854-54925FB26F56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4644016027450562;
createNode animCurveTA -n "LeftHandIndex1_rotateX";
	rename -uid "507DB362-4DF2-18A3-64D7-EDBB84FFE669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -29.342397689819336;
createNode animCurveTA -n "LeftHandIndex1_rotateY";
	rename -uid "60438A62-437B-DCAA-F3AE-E0978E246EF1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7703769066865789e-06;
createNode animCurveTA -n "LeftHandIndex1_rotateZ";
	rename -uid "5DF348B7-4658-CDAD-C11F-EC84BF740E59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1423256839625537e-06;
createNode animCurveTA -n "LeftHandIndex2_rotateX";
	rename -uid "8999A592-4B86-84B4-72AB-16BBE7BA15E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9389042854309082;
createNode animCurveTA -n "LeftHandIndex2_rotateY";
	rename -uid "49A7B099-45F2-8042-0883-3C9E002EC5E7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.49680063128471375;
createNode animCurveTA -n "LeftHandIndex2_rotateZ";
	rename -uid "F10C821B-4FB7-0D1B-3432-5A910656B069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.5549144744873047;
createNode animCurveTA -n "LeftHandIndex3_rotateX";
	rename -uid "BDE29CE2-43E8-3749-8AC7-74A17DD6F6AC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.825048446655273;
createNode animCurveTA -n "LeftHandIndex3_rotateY";
	rename -uid "AC282D28-454E-4A89-BA86-0EAA39566697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.2993197441101074;
createNode animCurveTA -n "LeftHandIndex3_rotateZ";
	rename -uid "CBADDADD-4966-226D-2574-13AF214A9824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 19.932666778564453;
createNode animCurveTA -n "RightShoulder_rotateX";
	rename -uid "3A327CDD-41A7-ABD0-99FA-BEA82E794C92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.6741102933883667;
createNode animCurveTA -n "RightShoulder_rotateY";
	rename -uid "30043A01-4333-A651-3943-5CA0383E65BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.00086110236588865519;
createNode animCurveTA -n "RightShoulder_rotateZ";
	rename -uid "BCC50227-4DD0-8B2E-A0E7-41AB9440065E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.20225615799427032;
createNode animCurveTA -n "RightArm_rotateX";
	rename -uid "E9440E7E-48B9-7870-5F88-7C93FE75994D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.3558082580566406;
createNode animCurveTA -n "RightArm_rotateY";
	rename -uid "1C693E4E-4D7F-52E1-4740-8E8AC49443A9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.17291395366191864;
createNode animCurveTA -n "RightArm_rotateZ";
	rename -uid "08C1C89A-439A-1D07-DB82-0FA9194F88D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.8483061790466309;
createNode animCurveTA -n "RightForeArm_rotateX";
	rename -uid "420B12B4-4D9C-659C-AF5F-6EB43CB0792F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.64594554901123;
createNode animCurveTA -n "RightForeArm_rotateY";
	rename -uid "2C5AB696-45B8-254F-E4FD-BF95D1D5AE21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.843126058578491;
createNode animCurveTA -n "RightForeArm_rotateZ";
	rename -uid "8719065B-4256-5CEB-0AD4-D4A94C7A5C21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.927091598510742;
createNode animCurveTA -n "RightHand_rotateX";
	rename -uid "827D357B-47D7-79F4-C1EA-FCA5C4149B85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.988389015197754;
createNode animCurveTA -n "RightHand_rotateY";
	rename -uid "A5892B76-4F0D-6CA0-D44A-B2A6315C131D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0087939798831939697;
createNode animCurveTA -n "RightHand_rotateZ";
	rename -uid "CEC92374-4CAF-5FC0-DEAA-4BB7D230F6EB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.077095977962017059;
createNode animCurveTA -n "RightHandIndex1_rotateX";
	rename -uid "1D9ACEDA-4F02-880B-278C-F499757178B8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.589498519897461;
createNode animCurveTA -n "RightHandIndex1_rotateY";
	rename -uid "06C2AC62-4C5B-1796-038A-26B192685A42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1850316695927177e-05;
createNode animCurveTA -n "RightHandIndex1_rotateZ";
	rename -uid "22C7B15D-4CBC-9EA4-3140-979D25F87418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.2908003554912284e-06;
createNode animCurveTA -n "RightHandIndex2_rotateX";
	rename -uid "19DAE82B-4D7A-92A6-1DC8-4BBE43C3941E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.80963134765625;
createNode animCurveTA -n "RightHandIndex2_rotateY";
	rename -uid "1FFD1CE5-475E-1841-45D2-A5B98E1047DC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.13659186661243439;
createNode animCurveTA -n "RightHandIndex2_rotateZ";
	rename -uid "703A9BBD-4FD7-829F-C43F-EBAA5E0D9DEA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.6320648193359375;
createNode animCurveTA -n "RightHandIndex3_rotateX";
	rename -uid "62EE4FC9-4A8E-003F-563F-55B4FCBD49F7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 23.787372589111328;
createNode animCurveTA -n "RightHandIndex3_rotateY";
	rename -uid "8019A591-4B3D-7C3F-714F-BE801193A606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.86108118295669556;
createNode animCurveTA -n "RightHandIndex3_rotateZ";
	rename -uid "C2935D8B-4508-8562-2473-1CB79E76A7BC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.492941856384277;
createNode animCurveTA -n "LeftUpLeg_rotateX";
	rename -uid "2DE0F2AA-46C4-9DEF-8444-E5B0DC32FED1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3788220882415771;
createNode animCurveTA -n "LeftUpLeg_rotateY";
	rename -uid "A13EFF42-45FF-D50B-F606-EE8B13BB4014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3631633520126343;
createNode animCurveTA -n "LeftUpLeg_rotateZ";
	rename -uid "0B6C7072-45CC-AD7D-107E-2BBC909A6247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.6569175720214844;
createNode animCurveTA -n "LeftLeg_rotateX";
	rename -uid "54028B6D-433C-8838-C5D9-A9A3E162AE7A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.88901042938232422;
createNode animCurveTA -n "LeftLeg_rotateY";
	rename -uid "954DE505-45B0-435E-1253-E696F6A32202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.13264521956443787;
createNode animCurveTA -n "LeftLeg_rotateZ";
	rename -uid "132EB748-459B-C9CA-A04B-D191251CDE25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.072228781878948212;
createNode animCurveTA -n "LeftFoot_rotateX";
	rename -uid "BD75FF2D-4A05-5071-D7C8-438BB7696136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3625724315643311;
createNode animCurveTA -n "LeftFoot_rotateY";
	rename -uid "95B905D0-4464-C445-6EBD-5D9C7AC30244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.9482209682464595;
createNode animCurveTA -n "LeftFoot_rotateZ";
	rename -uid "AB32F145-473C-0862-5148-18BA316648D2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.9468293190002441;
createNode animCurveTA -n "LeftToeBase_rotateX";
	rename -uid "BCB705CA-48A2-5EDB-E6D4-518FD44B1F1B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.0376534191891551e-06;
createNode animCurveTA -n "LeftToeBase_rotateY";
	rename -uid "A9EFBF31-485A-370B-2D76-3CA738476E63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.1989410344031057e-07;
createNode animCurveTA -n "LeftToeBase_rotateZ";
	rename -uid "4D21DA56-4CC4-C1A9-E755-24ACBAC091CF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8273695988900727e-06;
createNode animCurveTA -n "RightUpLeg_rotateX";
	rename -uid "65764872-46DC-18D7-AD62-AA8BA48D46F4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1931847333908081;
createNode animCurveTA -n "RightUpLeg_rotateY";
	rename -uid "25DB6D9D-4360-F0F3-9F2C-69A892B905F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4242959022521973;
createNode animCurveTA -n "RightUpLeg_rotateZ";
	rename -uid "6712F86A-43E6-CCE4-5A65-8FBC3610A9CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.6598258018493652;
createNode animCurveTA -n "RightLeg_rotateX";
	rename -uid "1FF73F5E-49CE-104C-8BB7-E5A450C51EAA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.87664884328842163;
createNode animCurveTA -n "RightLeg_rotateY";
	rename -uid "3148A99F-4EDA-78FF-0582-148A9B93DEDE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.1134939342737198;
createNode animCurveTA -n "RightLeg_rotateZ";
	rename -uid "BD25F7C8-4138-BF5E-A1F1-52825AF719B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.073092937469482422;
createNode animCurveTA -n "RightFoot_rotateX";
	rename -uid "0C932191-4764-1ADF-2B85-6BA5F17142BC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.2993355989456177;
createNode animCurveTA -n "RightFoot_rotateY";
	rename -uid "557CC3B0-495B-8011-095E-36BF26E6398F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.3736424446105957;
createNode animCurveTA -n "RightFoot_rotateZ";
	rename -uid "2C002558-4BFA-A8F6-480B-3892065EAA1E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.4907736778259277;
createNode animCurveTA -n "RightToeBase_rotateX";
	rename -uid "73C9586F-4236-7BB0-6747-EE8A63711977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4710975594643969e-06;
createNode animCurveTA -n "RightToeBase_rotateY";
	rename -uid "3F4D5D30-4F56-8DDB-3A78-B381BF294835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.640853709744988e-07;
createNode animCurveTA -n "RightToeBase_rotateZ";
	rename -uid "05758587-4056-708C-ADCB-979C82A369AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.4643622370822413e-07;
createNode dagPose -n "bindPose1";
	rename -uid "3484D71A-4553-111F-D684-8F8F91435AAA";
	setAttr -s 28 ".wm";
	setAttr -s 28 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0.0090794563293457031
		 1.6942249536514282 -0.11894764751195908 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999989 0.99999999999999989 2.7755575615628907e-17
		 -0 -3.469446951953615e-18 0 -0.31342336535453796 -0.13779735565185547 -0.0095096752047538757 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.011072660806829464 0.12891651308782928 0.98795619116836253 0.084855719713137795 1
		 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1.0000000000000002 1 1.1102230246251565e-16
		 -2.7755575615628907e-17 1.3877787807814454e-16 0 -3.1112785681131072e-09 0.7748701149802002
		 -8.9284009630041794e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.30276317936113323 0.10895991925548303 0.034865708566689413 0.94617470669275427 1.0000000000000002
		 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000007 1.0000000000000002 8.2631129716403951e-10
		 3.7777097838809226e-09 6.6345101634723846e-09 0 -4.8146665543313816e-09 0.61767567607515128
		 1.5022051241819767e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.52108613359677103 -0.17233986156401032 0.1083446614412394 0.82887251602791667 1
		 0.99999999999999978 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000002 0.99999999999999989 6.2336282247166302e-09
		 1.8947390397535554e-08 -2.3520774611839058e-09 0 -2.5283491966732186e-09 0.31362983714075993
		 7.3415569110113488e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.38941534531905475 -0.0018790074696100586 0.00079442635783600083 0.92106000187161119 0.99999999999999956
		 0.99999999999999933 0.99999999999999978 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -2.7755575615628914e-17 -6.9388939039072284e-18
		 6.9388939039072284e-18 0 0.31342336535453796 -0.13779735565185547 -0.010914184153079987 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.010761698282384416 -0.12504354531124581 -0.98843898551066134 0.08506861670867906 1
		 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 0.99999999999999989 1 1 1.6653345369377351e-16
		 -2.7755575615628914e-17 2.775557561562891e-17 0 -4.0644976273540578e-10 0.77333148213246217
		 -9.3176449889043056e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.29057621035267128 -0.11596514882542784 -0.035502553268523869 0.94913493189661513 1
		 1 1 no;
	setAttr ".xm[7]" -type "matrix" "xform" 0.99999999999999989 1 0.99999999999999967 8.0873863161912128e-11
		 -2.6022864418884245e-10 -5.7443522161193538e-10 0 1.6190605522936607e-09 0.61370457577389237
		 4.4476009750105128e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.46989548171537637 0.19252372310822682 -0.10581465285227043 0.85494801686756061 1.0000000000000002
		 1 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1.0000000000000007 0.99999999999999989 -6.8441941003527538e-10
		 9.246980516366967e-10 -6.7961291108642494e-10 0 3.1438059377997263e-09 0.2870217053363347
		 -2.7559686789635496e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.43472460512324468 -0.0049052886504944012 0.0023679494108146074 0.900546971933881 1.0000000000000002
		 1 1.0000000000000004 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 -0 0 0 0 0.24810111522674561
		 0.066918019205331802 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.13134501742436558 0 0 0.99133671696240178 1
		 1 1 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 -3.9734897890850466e-17 -0 0 0 0
		 0.29979545491109771 1.5689164412080459e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		1.8040525897366783e-07 0 0 0.99999999999998368 1 1 1 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-17 -0 0 0 0
		 0.3426230454272936 1.8075407837159219e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[12]" -type "matrix" "xform" 1 0.99999999999999989 0.99999999999999989 3.1225022567582523e-16
		 3.469446951953613e-17 -1.3877787807814454e-17 0 -0.30383723974227905 0.24294025722797663
		 0.03860059225562551 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.63271048912121364 -0.35532807026521718 0.55740947286552667 0.40337833233500192 1
		 1 1 no;
	setAttr ".xm[13]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000002 1 0
		 9.9308475385421571e-17 -1.6017657730374836e-16 0 -1.6434477112525769e-09 0.67757230317952644
		 -5.5145585875493452e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.13647017196462413 -0.015571565448172602 0.11229222879875672 0.98413610535578211 1
		 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1.0000000000000002 4.041905699025962e-16
		 -9.0205620750793981e-17 4.163336342344337e-17 0 0.30383723974227905 0.24285853043225947
		 0.038297587130026178 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.632490584127674 0.35545076873058457 -0.5577670931587444 0.40312067893859593 1
		 1 1 no;
	setAttr ".xm[15]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999989
		 1 5.5511151231257821e-17 -2.3354966071450374e-16 -6.8315482976719621e-17 0 1.6551001680298327e-09
		 0.67757230317952366 -5.5110631613786154e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.13594999323307647 0.015715824320244841 -0.11375481034298299 0.98403783226545394 1
		 1 0.99999999999999978 no;
	setAttr ".xm[16]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999967
		 1 1.7610428115766295e-09 4.8330945267276231e-09 2.6729638695989778e-09 0 1.8410625246545465e-09
		 0.72147570112260917 1.9098398418293527e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.10670417302561318 -0.017280014718551451 0.15892386252707472 0.98135560653094656 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 5.9718655021079314e-09 -1.6885979957375108e-08
		 -9.2807034681252737e-09 0 2.2143187283774068e-10 0.72109162992254661 2.646970642672386e-09 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.10532889737380466 0.016604777461202376 -0.15483592861941078 0.98216899765368648 1.0000000000000002
		 0.99999999999999978 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1.0000000000000002 1 1.0000000000000002 5.9407598840266523e-09
		 -2.4912955227521151e-08 -5.1633502699923545e-09 0 1.6610781528036966e-08 1.0683154785254276
		 5.0779762617025881e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.113102833766437 7.6113421640399998e-05 0.00066863935963380034 0.993583059498377 1
		 1 1 no;
	setAttr ".xm[19]" -type "matrix" "xform" 0.99999999999999989 1 0.99999999999999989 1.5865251057345375e-09
		 7.3929464926006129e-09 1.381901220111251e-09 0 -1.2813956784540892e-08 1.0695385736563383
		 -6.624256698728459e-10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.12025238895019275 -0.0015368306228758231 -0.012686250896706448 0.9926611003467366 1.0000000000000002
		 1.0000000000000004 1 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-17 -0 0 0 0
		 0.38545109609398498 -8.2298220127619004e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		-0.13134519626672059 0 0 0.99133669326705376 1 1 1 no;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 -5.5511151231257827e-17 -0 0 0 0
		 0.32206821441650346 0.27582155168056477 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1.0000000000000002 1 6.0908395549397215e-09
		 -9.3218123775606948e-09 7.813965030578634e-09 0 1.4472083420535853e-08 1.3844669791252491
		 1.8183771377522362e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.24788315133031638 0.32983654112863364 -0.090200464710839492 0.90643569854060757 0.99999999999999978
		 1 0.99999999999999978 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 0.99999999999999967 0.99999999999999989 -1.932056153952647e-09
		 -4.4546980548787449e-09 1.6047261464091633e-08 0 1.2893712764139309e-09 0.26064108804403685
		 -9.8462855646630487e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999978
		 1 no;
	setAttr ".xm[24]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000004 1.0000000000000009 1.3158607814478525e-09
		 9.6577293939859049e-09 -6.519772555169113e-09 0 -1.7742840530132753e-09 1.2922822367848426
		 -1.1554565304550124e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.23129747207510162 -0.39414302320784528 0.10318985285582305 0.88346172013044288 1.0000000000000002
		 1 1.0000000000000002 no;
	setAttr ".xm[25]" -type "matrix" "xform" 0.99999999999999944 0.99999999999999956
		 0.99999999999999967 5.8164184441045266e-09 1.163745044774345e-08 -2.9980639082438667e-09 0 2.2055537396425962e-09
		 0.29834555943837171 4.067121306405852e-09 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 0.99999999999999978 0.99999999999999956 0.99999999999999911 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999989 0.99999999999999989 -1.9320561955860084e-09
		 -4.4546980271231701e-09 1.6047261519602781e-08 0 0.042328161522879215 0.27854120304437857
		 0.0089299364351989041 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000004
		 1.0000000000000002 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1.0000000000000004 1 5.8164186939046989e-09
		 1.16374505032546e-08 -2.998063852732713e-09 0 -0.052329963799601753 0.30897061908922963
		 0.032609748177805375 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000007
		 1.0000000000000004 1.0000000000000004 no;
	setAttr -s 28 ".m";
	setAttr -s 28 ".p";
	setAttr ".bp" yes;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "BC9ADB6D-4FD8-82A9-104B-B39109F6507B";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "42B0304D-4CFD-1890-944A-11B03B67130D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 456\n            -height 376\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 456\n            -height 375\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 456\n            -height 375\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 777\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 777\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 777\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E9862739-4A09-FF6E-B114-B59C39B725DC";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 48 ";
	setAttr ".st" 6;
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
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
connectAttr "Hips_translateX.o" "mixamorig:Hips.tx";
connectAttr "Hips_translateY.o" "mixamorig:Hips.ty";
connectAttr "Hips_translateZ.o" "mixamorig:Hips.tz";
connectAttr "Hips_rotateX.o" "mixamorig:Hips.rx";
connectAttr "Hips_rotateY.o" "mixamorig:Hips.ry";
connectAttr "Hips_rotateZ.o" "mixamorig:Hips.rz";
connectAttr "mixamorig:Hips.s" "mixamorig:Spine.is";
connectAttr "Spine_rotateX.o" "mixamorig:Spine.rx";
connectAttr "Spine_rotateY.o" "mixamorig:Spine.ry";
connectAttr "Spine_rotateZ.o" "mixamorig:Spine.rz";
connectAttr "mixamorig:Spine.s" "mixamorig:Spine1.is";
connectAttr "Spine1_rotateX.o" "mixamorig:Spine1.rx";
connectAttr "Spine1_rotateY.o" "mixamorig:Spine1.ry";
connectAttr "Spine1_rotateZ.o" "mixamorig:Spine1.rz";
connectAttr "mixamorig:Spine1.s" "mixamorig:Spine2.is";
connectAttr "Spine2_rotateX.o" "mixamorig:Spine2.rx";
connectAttr "Spine2_rotateY.o" "mixamorig:Spine2.ry";
connectAttr "Spine2_rotateZ.o" "mixamorig:Spine2.rz";
connectAttr "mixamorig:Spine2.s" "mixamorig:Neck.is";
connectAttr "Neck_rotateX.o" "mixamorig:Neck.rx";
connectAttr "Neck_rotateY.o" "mixamorig:Neck.ry";
connectAttr "Neck_rotateZ.o" "mixamorig:Neck.rz";
connectAttr "mixamorig:Neck.s" "mixamorig:Head.is";
connectAttr "Head_rotateX.o" "mixamorig:Head.rx";
connectAttr "Head_rotateY.o" "mixamorig:Head.ry";
connectAttr "Head_rotateZ.o" "mixamorig:Head.rz";
connectAttr "mixamorig:Head.s" "mixamorig:HeadTop_End.is";
connectAttr "mixamorig:Spine2.s" "mixamorig:LeftShoulder.is";
connectAttr "LeftShoulder_rotateX.o" "mixamorig:LeftShoulder.rx";
connectAttr "LeftShoulder_rotateY.o" "mixamorig:LeftShoulder.ry";
connectAttr "LeftShoulder_rotateZ.o" "mixamorig:LeftShoulder.rz";
connectAttr "mixamorig:LeftShoulder.s" "mixamorig:LeftArm.is";
connectAttr "LeftArm_rotateX.o" "mixamorig:LeftArm.rx";
connectAttr "LeftArm_rotateY.o" "mixamorig:LeftArm.ry";
connectAttr "LeftArm_rotateZ.o" "mixamorig:LeftArm.rz";
connectAttr "mixamorig:LeftArm.s" "mixamorig:LeftForeArm.is";
connectAttr "LeftForeArm_rotateX.o" "mixamorig:LeftForeArm.rx";
connectAttr "LeftForeArm_rotateY.o" "mixamorig:LeftForeArm.ry";
connectAttr "LeftForeArm_rotateZ.o" "mixamorig:LeftForeArm.rz";
connectAttr "mixamorig:LeftForeArm.s" "mixamorig:LeftHand.is";
connectAttr "LeftHand_rotateX.o" "mixamorig:LeftHand.rx";
connectAttr "LeftHand_rotateY.o" "mixamorig:LeftHand.ry";
connectAttr "LeftHand_rotateZ.o" "mixamorig:LeftHand.rz";
connectAttr "mixamorig:LeftHand.s" "mixamorig:LeftHandIndex1.is";
connectAttr "LeftHandIndex1_rotateX.o" "mixamorig:LeftHandIndex1.rx";
connectAttr "LeftHandIndex1_rotateY.o" "mixamorig:LeftHandIndex1.ry";
connectAttr "LeftHandIndex1_rotateZ.o" "mixamorig:LeftHandIndex1.rz";
connectAttr "mixamorig:LeftHandIndex1.s" "mixamorig:LeftHandIndex2.is";
connectAttr "LeftHandIndex2_rotateX.o" "mixamorig:LeftHandIndex2.rx";
connectAttr "LeftHandIndex2_rotateY.o" "mixamorig:LeftHandIndex2.ry";
connectAttr "LeftHandIndex2_rotateZ.o" "mixamorig:LeftHandIndex2.rz";
connectAttr "mixamorig:LeftHandIndex2.s" "mixamorig:LeftHandIndex3.is";
connectAttr "LeftHandIndex3_rotateX.o" "mixamorig:LeftHandIndex3.rx";
connectAttr "LeftHandIndex3_rotateY.o" "mixamorig:LeftHandIndex3.ry";
connectAttr "LeftHandIndex3_rotateZ.o" "mixamorig:LeftHandIndex3.rz";
connectAttr "mixamorig:LeftHandIndex3.s" "mixamorig:LeftHandIndex4.is";
connectAttr "mixamorig:Spine2.s" "mixamorig:RightShoulder.is";
connectAttr "RightShoulder_rotateX.o" "mixamorig:RightShoulder.rx";
connectAttr "RightShoulder_rotateY.o" "mixamorig:RightShoulder.ry";
connectAttr "RightShoulder_rotateZ.o" "mixamorig:RightShoulder.rz";
connectAttr "mixamorig:RightShoulder.s" "mixamorig:RightArm.is";
connectAttr "RightArm_rotateX.o" "mixamorig:RightArm.rx";
connectAttr "RightArm_rotateY.o" "mixamorig:RightArm.ry";
connectAttr "RightArm_rotateZ.o" "mixamorig:RightArm.rz";
connectAttr "mixamorig:RightArm.s" "mixamorig:RightForeArm.is";
connectAttr "RightForeArm_rotateX.o" "mixamorig:RightForeArm.rx";
connectAttr "RightForeArm_rotateY.o" "mixamorig:RightForeArm.ry";
connectAttr "RightForeArm_rotateZ.o" "mixamorig:RightForeArm.rz";
connectAttr "mixamorig:RightForeArm.s" "mixamorig:RightHand.is";
connectAttr "RightHand_rotateX.o" "mixamorig:RightHand.rx";
connectAttr "RightHand_rotateY.o" "mixamorig:RightHand.ry";
connectAttr "RightHand_rotateZ.o" "mixamorig:RightHand.rz";
connectAttr "mixamorig:RightHand.s" "mixamorig:RightHandIndex1.is";
connectAttr "RightHandIndex1_rotateX.o" "mixamorig:RightHandIndex1.rx";
connectAttr "RightHandIndex1_rotateY.o" "mixamorig:RightHandIndex1.ry";
connectAttr "RightHandIndex1_rotateZ.o" "mixamorig:RightHandIndex1.rz";
connectAttr "mixamorig:RightHandIndex1.s" "mixamorig:RightHandIndex2.is";
connectAttr "RightHandIndex2_rotateX.o" "mixamorig:RightHandIndex2.rx";
connectAttr "RightHandIndex2_rotateY.o" "mixamorig:RightHandIndex2.ry";
connectAttr "RightHandIndex2_rotateZ.o" "mixamorig:RightHandIndex2.rz";
connectAttr "mixamorig:RightHandIndex2.s" "mixamorig:RightHandIndex3.is";
connectAttr "RightHandIndex3_rotateX.o" "mixamorig:RightHandIndex3.rx";
connectAttr "RightHandIndex3_rotateY.o" "mixamorig:RightHandIndex3.ry";
connectAttr "RightHandIndex3_rotateZ.o" "mixamorig:RightHandIndex3.rz";
connectAttr "mixamorig:RightHandIndex3.s" "mixamorig:RightHandIndex4.is";
connectAttr "mixamorig:Hips.s" "mixamorig:LeftUpLeg.is";
connectAttr "LeftUpLeg_rotateX.o" "mixamorig:LeftUpLeg.rx";
connectAttr "LeftUpLeg_rotateY.o" "mixamorig:LeftUpLeg.ry";
connectAttr "LeftUpLeg_rotateZ.o" "mixamorig:LeftUpLeg.rz";
connectAttr "mixamorig:LeftUpLeg.s" "mixamorig:LeftLeg.is";
connectAttr "LeftLeg_rotateX.o" "mixamorig:LeftLeg.rx";
connectAttr "LeftLeg_rotateY.o" "mixamorig:LeftLeg.ry";
connectAttr "LeftLeg_rotateZ.o" "mixamorig:LeftLeg.rz";
connectAttr "mixamorig:LeftLeg.s" "mixamorig:LeftFoot.is";
connectAttr "LeftFoot_rotateX.o" "mixamorig:LeftFoot.rx";
connectAttr "LeftFoot_rotateY.o" "mixamorig:LeftFoot.ry";
connectAttr "LeftFoot_rotateZ.o" "mixamorig:LeftFoot.rz";
connectAttr "mixamorig:LeftFoot.s" "mixamorig:LeftToeBase.is";
connectAttr "LeftToeBase_rotateX.o" "mixamorig:LeftToeBase.rx";
connectAttr "LeftToeBase_rotateY.o" "mixamorig:LeftToeBase.ry";
connectAttr "LeftToeBase_rotateZ.o" "mixamorig:LeftToeBase.rz";
connectAttr "mixamorig:LeftToeBase.s" "mixamorig:LeftToe_End.is";
connectAttr "mixamorig:Hips.s" "mixamorig:RightUpLeg.is";
connectAttr "RightUpLeg_rotateX.o" "mixamorig:RightUpLeg.rx";
connectAttr "RightUpLeg_rotateY.o" "mixamorig:RightUpLeg.ry";
connectAttr "RightUpLeg_rotateZ.o" "mixamorig:RightUpLeg.rz";
connectAttr "mixamorig:RightUpLeg.s" "mixamorig:RightLeg.is";
connectAttr "RightLeg_rotateX.o" "mixamorig:RightLeg.rx";
connectAttr "RightLeg_rotateY.o" "mixamorig:RightLeg.ry";
connectAttr "RightLeg_rotateZ.o" "mixamorig:RightLeg.rz";
connectAttr "mixamorig:RightLeg.s" "mixamorig:RightFoot.is";
connectAttr "RightFoot_rotateX.o" "mixamorig:RightFoot.rx";
connectAttr "RightFoot_rotateY.o" "mixamorig:RightFoot.ry";
connectAttr "RightFoot_rotateZ.o" "mixamorig:RightFoot.rz";
connectAttr "mixamorig:RightFoot.s" "mixamorig:RightToeBase.is";
connectAttr "RightToeBase_rotateX.o" "mixamorig:RightToeBase.rx";
connectAttr "RightToeBase_rotateY.o" "mixamorig:RightToeBase.ry";
connectAttr "RightToeBase_rotateZ.o" "mixamorig:RightToeBase.rz";
connectAttr "mixamorig:RightToeBase.s" "mixamorig:RightToe_End.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface20SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface20SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "standardSurface2.oc" "polySurface20SG.ss";
connectAttr "polySurface20SG.msg" "materialInfo1.sg";
connectAttr "standardSurface2.msg" "materialInfo1.m";
connectAttr "mixamorig:Hips.msg" "bindPose1.m[0]";
connectAttr "mixamorig:RightUpLeg.msg" "bindPose1.m[1]";
connectAttr "mixamorig:RightLeg.msg" "bindPose1.m[2]";
connectAttr "mixamorig:RightFoot.msg" "bindPose1.m[3]";
connectAttr "mixamorig:RightToeBase.msg" "bindPose1.m[4]";
connectAttr "mixamorig:LeftUpLeg.msg" "bindPose1.m[5]";
connectAttr "mixamorig:LeftLeg.msg" "bindPose1.m[6]";
connectAttr "mixamorig:LeftFoot.msg" "bindPose1.m[7]";
connectAttr "mixamorig:LeftToeBase.msg" "bindPose1.m[8]";
connectAttr "mixamorig:Spine.msg" "bindPose1.m[9]";
connectAttr "mixamorig:Spine1.msg" "bindPose1.m[10]";
connectAttr "mixamorig:Spine2.msg" "bindPose1.m[11]";
connectAttr "mixamorig:RightShoulder.msg" "bindPose1.m[12]";
connectAttr "mixamorig:RightArm.msg" "bindPose1.m[13]";
connectAttr "mixamorig:LeftShoulder.msg" "bindPose1.m[14]";
connectAttr "mixamorig:LeftArm.msg" "bindPose1.m[15]";
connectAttr "mixamorig:LeftForeArm.msg" "bindPose1.m[16]";
connectAttr "mixamorig:RightForeArm.msg" "bindPose1.m[17]";
connectAttr "mixamorig:RightHand.msg" "bindPose1.m[18]";
connectAttr "mixamorig:LeftHand.msg" "bindPose1.m[19]";
connectAttr "mixamorig:Neck.msg" "bindPose1.m[20]";
connectAttr "mixamorig:Head.msg" "bindPose1.m[21]";
connectAttr "mixamorig:RightHandIndex1.msg" "bindPose1.m[22]";
connectAttr "mixamorig:RightHandIndex2.msg" "bindPose1.m[23]";
connectAttr "mixamorig:LeftHandIndex1.msg" "bindPose1.m[24]";
connectAttr "mixamorig:LeftHandIndex2.msg" "bindPose1.m[25]";
connectAttr "mixamorig:RightHandIndex3.msg" "bindPose1.m[26]";
connectAttr "mixamorig:LeftHandIndex3.msg" "bindPose1.m[27]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[0]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[0]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[11]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[16]";
connectAttr "bindPose1.m[13]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[16]" "bindPose1.p[19]";
connectAttr "bindPose1.m[11]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[18]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[19]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[23]" "bindPose1.p[26]";
connectAttr "bindPose1.m[25]" "bindPose1.p[27]";
connectAttr "mixamorig:Hips.bps" "bindPose1.wm[0]";
connectAttr "mixamorig:RightUpLeg.bps" "bindPose1.wm[1]";
connectAttr "mixamorig:RightLeg.bps" "bindPose1.wm[2]";
connectAttr "mixamorig:RightFoot.bps" "bindPose1.wm[3]";
connectAttr "mixamorig:RightToeBase.bps" "bindPose1.wm[4]";
connectAttr "mixamorig:LeftUpLeg.bps" "bindPose1.wm[5]";
connectAttr "mixamorig:LeftLeg.bps" "bindPose1.wm[6]";
connectAttr "mixamorig:LeftFoot.bps" "bindPose1.wm[7]";
connectAttr "mixamorig:LeftToeBase.bps" "bindPose1.wm[8]";
connectAttr "mixamorig:Spine.bps" "bindPose1.wm[9]";
connectAttr "mixamorig:Spine1.bps" "bindPose1.wm[10]";
connectAttr "mixamorig:Spine2.bps" "bindPose1.wm[11]";
connectAttr "mixamorig:RightShoulder.bps" "bindPose1.wm[12]";
connectAttr "mixamorig:RightArm.bps" "bindPose1.wm[13]";
connectAttr "mixamorig:LeftShoulder.bps" "bindPose1.wm[14]";
connectAttr "mixamorig:LeftArm.bps" "bindPose1.wm[15]";
connectAttr "mixamorig:LeftForeArm.bps" "bindPose1.wm[16]";
connectAttr "mixamorig:RightForeArm.bps" "bindPose1.wm[17]";
connectAttr "mixamorig:RightHand.bps" "bindPose1.wm[18]";
connectAttr "mixamorig:LeftHand.bps" "bindPose1.wm[19]";
connectAttr "mixamorig:Neck.bps" "bindPose1.wm[20]";
connectAttr "mixamorig:Head.bps" "bindPose1.wm[21]";
connectAttr "mixamorig:RightHandIndex1.bps" "bindPose1.wm[22]";
connectAttr "mixamorig:RightHandIndex2.bps" "bindPose1.wm[23]";
connectAttr "mixamorig:LeftHandIndex1.bps" "bindPose1.wm[24]";
connectAttr "mixamorig:LeftHandIndex2.bps" "bindPose1.wm[25]";
connectAttr "mixamorig:RightHandIndex3.bps" "bindPose1.wm[26]";
connectAttr "mixamorig:LeftHandIndex3.bps" "bindPose1.wm[27]";
connectAttr "polySurface20SG.pa" ":renderPartition.st" -na;
connectAttr "standardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of working rig.ma
