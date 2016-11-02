//Maya ASCII 2014 scene
//Name: KGM_JntGD.ma
//Last modified: Mon, Sep 01, 2014 07:18:07 PM
//Codeset: 949
requires maya "2014";
requires -nodeType "FurGlobals" -nodeType "FurDescription" -nodeType "FurAttractors"
		 -nodeType "FurCurveAttractors" -nodeType "FurFeedback" -nodeType "furPointOnSubd"
		 -nodeType "furPointOnMeshInfo" "Fur" "2014";
requires -nodeType "decomposeMatrix" -nodeType "composeMatrix" -nodeType "inverseMatrix"
		 -nodeType "transposeMatrix" "matrixNodes" "1.0";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "mib_illum_hair_x" -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "shaveMRInstanceGeom"
		 -nodeType "shaveMRGeomPasser" -nodeType "shaveMRHairComp" -nodeType "shaveMRHairGeomDRA"
		 -nodeType "shaveMRHairIllum" -nodeType "shaveMRRenderComp" -nodeType "shaveMRSatData"
		 -nodeType "shaveMRShadowMatte" -nodeType "shaveMRVertexIllum" -nodeType "shaveMRHairShadows"
		 -nodeType "misss_physical" -nodeType "misss_physical_phen" -nodeType "misss_fast_shader"
		 -nodeType "misss_fast_shader_x" -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x"
		 -nodeType "misss_skin_specular" -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma"
		 -nodeType "misss_call_shader" -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya"
		 -nodeType "misss_fast_simple_maya" -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen"
		 -nodeType "misss_fast_skin_phen_d" -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d"
		 -nodeType "misss_lightmap_phen" -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler"
		 -nodeType "mib_data_bool" -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "xgen_geo" -nodeType "xgen_seexpr" -nodeType "xgen_scalar_to_integer" -nodeType "xgen_integer_to_vector"
		 -nodeType "xgen_scalar_to_vector" -nodeType "xgen_boolean_to_vector" -nodeType "xgen_boolean_switch"
		 -nodeType "xgen_tube_normals" -nodeType "xgen_hair_phen" -nodeType "mia_material_x_passes"
		 -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes" -nodeType "misss_fast_shader_x_passes"
		 -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.13 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201401300313-905052";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.3904738712914728 5.0344716028755752 12.52987521755291 ;
	setAttr ".r" -type "double3" -9.3383527298135096 -340.19999999981985 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 12.79370224593537;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.6653345369377348e-015 5.2362393809651522 0.039382814711914294 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.6472525749719349 101.38245711147036 0.33907660168784493 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 11.983762833354607;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.017908392692299963 2.3960570926037299 100.12143622027575 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 18.34909985529546;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.46295315265628 5.2404295972742068 0.023792967952646342 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 0.41083388256534031;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "AllJntGDGrp";
createNode transform -n "JntGDCtrl" -p "AllJntGDGrp";
	addAttr -ci true -sn "Sphere_Scale" -ln "Sphere_Scale" -at "double";
	setAttr -l on ".tx";
	setAttr ".s" -type "double3" 0.32779474137626535 0.32779474137626535 0.32779474137626535 ;
createNode nurbsCurve -n "JntGDCtrlShape" -p "JntGDCtrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.1598235762283871 2.5471573138228912e-016 -4.1598235762283808
		-6.7116614279461235e-016 3.6022244187061568e-016 -5.8828789185815307
		-4.1598235762283826 2.5471573138228927e-016 -4.1598235762283826
		-5.8828789185815307 1.0438345160016208e-031 -1.704711132594931e-015
		-4.1598235762283844 -2.5471573138228917e-016 4.1598235762283817
		-1.7726262291298064e-015 -3.6022244187061573e-016 5.8828789185815316
		4.1598235762283808 -2.5471573138228932e-016 4.1598235762283835
		5.8828789185815307 -1.9347617622704055e-031 3.159705743104806e-015
		4.1598235762283871 2.5471573138228912e-016 -4.1598235762283808
		-6.7116614279461235e-016 3.6022244187061568e-016 -5.8828789185815307
		-4.1598235762283826 2.5471573138228927e-016 -4.1598235762283826
		;
createNode transform -n "JntGDGrpGrp" -p "JntGDCtrl";
createNode transform -n "JntGDGrp" -p "JntGDGrpGrp";
createNode joint -n "LeftAnkleJntGD" -p "JntGDGrp";
	setAttr -l on ".v";
	setAttr ".ove" yes;
	setAttr ".r" -type "double3" -2.5000884716210691e-007 0 -89.999985677002741 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "___";
	setAttr ".ds" 2;
	setAttr ".radi" 0.5;
createNode joint -n "LeftBallJntGD" -p "LeftAnkleJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.0000557623123341 -2.9464208850527029e-011 1.1635139088294495 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.999999999999986 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftToeJntGD" -p "LeftBallJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 6.6613381477509392e-016 -1.0587911840678754e-022 1.0000000000000009 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "LeftFootInJntGD" -p "LeftBallJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -0.44694886371514758 0 -1.0546012539193748 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.4322997272172215e-005 ;
	setAttr -l on ".radi" 0.5;
createNode joint -n "LeftFootOutJntGD" -p "LeftBallJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.49645682669918823 0 -1.0546012539193748 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.4322997272172215e-005 ;
	setAttr -l on ".radi" 0.5;
createNode joint -n "LeftHeelJntGD" -p "LeftBallJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -1.6830939473334866e-007 0 -1.7491739348598396 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.4322997272172215e-005 ;
	setAttr ".radi" 0.5;
createNode pointConstraint -n "LeftAnkleJntGD_pointConstraint1" -p "LeftAnkleJntGD";
	addAttr -ci true -k true -sn "w0" -ln "LeftAnkleScaleFixJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -1.2885692513009417e-011 5.1546501080856899e-005 0 ;
	setAttr ".rst" -type "double3" 1.9999994999872004 1.0000557623123028 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "LeftAnkleJntGD_orientConstraint1" -p "LeftAnkleJntGD";
	addAttr -ci true -k true -sn "w0" -ln "LeftHipJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -1 -89.999999999999972 ;
	setAttr ".o" -type "double3" 0 0 1.4322997256462506e-005 ;
	setAttr ".rsrr" -type "double3" 0 0 1.4322997256462506e-005 ;
	setAttr -k on ".w0";
createNode joint -n "LeftClavicleJntGD" -p "JntGDGrp";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.55757997977570073 14.589371253225496 -0.52374244304944217 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 179.92903285457999 0.05729585279214354 -8.0516584152377308e-005 ;
createNode joint -n "LeftShoulderJntGD" -p "LeftClavicleJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.94496529329413137 0.43482740552196214 0.030175101240078425 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "LeftElbowJntGD" -p "LeftShoulderJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2.5054812596346947 0 0 ;
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 1 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "LeftWristJntGD" -p "LeftElbowJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 2.9234294105619663 0 0 ;
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "RootJntGD" -p "JntGDGrp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 179.99999999999997 0 89.999999999999986 ;
createNode joint -n "Spine1JntGD" -p "RootJntGD";
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "Spine2JntGD" -p "Spine1JntGD";
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "Spine3JntGD" -p "Spine2JntGD";
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "Spine4JntGD" -p "Spine3JntGD";
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "Neck1JntGD" -p "Spine4JntGD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "___";
createNode parentConstraint -n "Neck1JntGD_parentConstraint1" -p "Neck1JntGD";
	addAttr -ci true -k true -sn "w0" -ln "Neck1JntGDSphereW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -3.5527136788005009e-015 9.8607613152626493e-031 ;
	setAttr ".tg[0].tor" -type "double3" -89.999999999999957 7.016709298534876e-015 
		89.999999999999972 ;
	setAttr ".lr" -type "double3" -89.999999999999986 -3.9756933518293967e-015 14.183913153738105 ;
	setAttr ".rst" -type "double3" 3.9989001099889943 -8.8793419505717107e-016 2.3845280259853928e-021 ;
	setAttr ".rsrr" -type "double3" 1.272221872585407e-014 4.4979835663949427e-015 -4.4979835663949458e-015 ;
	setAttr -k on ".w0";
createNode joint -n "HeadJntGD" -p "Neck1JntGD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" 0.05729688700521178 5.8501815689288437 9.5993111535080688e-006 ;
createNode joint -n "HeadEndJntGD" -p "HeadJntGD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
createNode parentConstraint -n "HeadEndJntGD_parentConstraint1" -p "HeadEndJntGD";
	addAttr -ci true -k true -sn "w0" -ln "HeadEndJntGDCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.8233515123733148e-021 3.5527136788005009e-015 
		-0.0024772188246209082 ;
	setAttr ".tg[0].tor" -type "double3" -179.94270410325748 0.070967109936327669 89.999990450676478 ;
	setAttr ".lr" -type "double3" -3.0066180973209815e-014 4.0626616439006657e-015 -1.065948672454533e-030 ;
	setAttr ".rst" -type "double3" 1.9999999999999964 -2.2204460492503131e-016 0 ;
	setAttr ".rsrr" -type "double3" -6.957463365701439e-016 4.0750856856251317e-015 
		1.272221872585407e-014 ;
	setAttr -k on ".w0";
createNode joint -n "LeftEyeJntGD" -p "HeadJntGD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.000000000000014 ;
	setAttr ".radi" 0.3;
createNode parentConstraint -n "LeftEyeJntGD_parentConstraint1" -p "LeftEyeJntGD";
	addAttr -ci true -k true -sn "w0" -ln "LeftEyeJntGDCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 3.5527136788005009e-015 -4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" -0.070967145420013367 0.057295852792152609 
		-8.0516584182726051e-005 ;
	setAttr ".lr" -type "double3" 4.0725945667221726e-015 -2.9369768184383005e-014 -1.0438042675228565e-030 ;
	setAttr ".rst" -type "double3" 0.8111103737610782 0.56683003365097684 -1.1040113420636928 ;
	setAttr ".rsrr" -type "double3" 4.0682020046456135e-015 -5.4907025956967225e-018 
		-1.272221872585407e-014 ;
	setAttr -k on ".w0";
createNode transform -n "transform3" -p "LeftEyeJntGD";
	setAttr ".t" -type "double3" -0.61243029678821226 -16.824811654555123 -0.38535410004347465 ;
	setAttr ".r" -type "double3" 0.070967100387014856 -0.05729590857047627 9.5493210070502442e-006 ;
	setAttr ".s" -type "double3" 3.0506895742178224 3.0506895742178219 3.0506895742178224 ;
createNode joint -n "LeftEyeEndJntGD" -p "transform3";
	setAttr ".t" -type "double3" 0.20087856686424416 5.5152367297879117 0.30765321548525487 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "HeadJntGD_parentConstraint1" -p "HeadJntGD";
	addAttr -ci true -k true -sn "w0" -ln "HeadJntGDCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -179.94270410325748 0.07096710993632796 89.999990450676478 ;
	setAttr ".lr" -type "double3" -0.002114746012364067 15.342356478169384 -0.01571957518053578 ;
	setAttr ".rst" -type "double3" 1.666670093004536e-007 18 0 ;
	setAttr -k on ".w0";
createNode transform -n "transform4" -p "HeadJntGD";
	setAttr ".t" -type "double3" -15.61771093666291 -0.00050944849040640994 -0.51188345815780822 ;
	setAttr ".r" -type "double3" -179.92903289961299 0.057295908570476298 89.999990450679007 ;
	setAttr ".s" -type "double3" 3.0506895742178224 3.0506895742178219 3.0506895742178224 ;
createNode joint -n "JawJntGD" -p "transform4";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 5.2696606677567663 -0.1355585916579185 ;
	setAttr -l on ".tx";
	setAttr ".r" -type "double3" 0 0 -18.954665561276467 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -89.999999999999957 0 ;
	setAttr ".radi" 0.1;
createNode joint -n "JawEndJntGD" -p "JawJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.34271086009267671 -1.7763568394002505e-015 7.7715611723760938e-016 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "TongueJntGDCtrlGrp" -p "JawJntGD";
	setAttr ".t" -type "double3" 0.089846468906507715 0.0010178333921810889 4.3889510379551259e-017 ;
	setAttr ".r" -type "double3" -18.954665561276485 89.999999999999957 0 ;
	setAttr ".s" -type "double3" 0.99999999999999967 1 0.99999999999999989 ;
createNode joint -n "LowerTeethJntGD" -p "JawJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.20495478779647278 -0.03685091815989993 6.0869940875401897e-016 ;
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -18.954665561276503 90 0 ;
	setAttr ".radi" 0.1;
createNode joint -n "LowerTeethEndJntGD" -p "LowerTeethJntGD";
	setAttr ".t" -type "double3" -1.8652962983433553e-016 -0.028039375497112218 0.072574672886574154 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode transform -n "transform5" -p "HeadJntGD";
	setAttr ".t" -type "double3" -15.61771093666291 -0.00050944849040640994 -0.51188345815780822 ;
	setAttr ".r" -type "double3" -179.92903289961299 0.057295908570476298 89.999990450679007 ;
	setAttr ".s" -type "double3" 3.0506895742178224 3.0506895742178219 3.0506895742178224 ;
createNode joint -n "UpperTeethJntGD" -p "transform5";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 1.1189493846926376e-016 5.2807715217020395 0.090100139611057728 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "UpperTeethEndJntGD" -p "UpperTeethJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" -1.7555366057633434e-015 -0.030457063936467854 0.088681617860937437 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -18.954665561276506 18.954665561276439 -89.999999999999929 ;
	setAttr ".radi" 0.1;
createNode transform -n "transform6" -p "HeadJntGD";
	setAttr ".t" -type "double3" -15.617710936662908 -0.0005094484904127148 -0.51188345815781333 ;
	setAttr ".r" -type "double3" -179.92903289961302 0.057295908570438536 89.999990450679022 ;
	setAttr ".s" -type "double3" 3.0506895742178219 3.0506895742178215 3.0506895742178206 ;
createNode joint -n "NoseRootJntGD" -p "transform6";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 5.3822942342162872 0.10435589481409138 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftNoseJntGD" -p "NoseRootJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.14195865132196117 -1.7763568394002505e-015 -0.095848165823361614 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "RightNoseJntGD" -p "NoseRootJntGD";
	setAttr -l on ".v";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "NoseJntGD" -p "NoseRootJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 0 0.076401377425673878 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode parentConstraint -n "Spine4JntGD_parentConstraint1" -p "Spine4JntGD";
	addAttr -ci true -k true -sn "w0" -ln "Spine4JntGDSphereW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.3303360402779121e-019 0.00049995000499869491 
		-6.241848134908331e-020 ;
	setAttr ".tg[0].tor" -type "double3" -3.2461146750243012e-014 7.0167092985348775e-015 
		89.999999999999972 ;
	setAttr ".lr" -type "double3" -89.999999999999943 3.9234676765118017 6.7745559750533587e-015 ;
	setAttr ".rst" -type "double3" 1.0005061993800606 -2.2215700376639134e-016 -1.266780514518181e-021 ;
	setAttr ".rsrr" -type "double3" -359.99999999999994 -7.0167092985348681e-015 -1.2722218725854073e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine3JntGD_parentConstraint1" -p "Spine3JntGD";
	addAttr -ci true -k true -sn "w0" -ln "Spine3JntGDSphereW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999957 7.0167092985348791e-015 
		89.999999999999972 ;
	setAttr ".lr" -type "double3" -180.00000000000003 177.39589600822433 180 ;
	setAttr ".rst" -type "double3" 1.0000687431256896 -2.2205986896521637e-016 -2.2354950305378627e-022 ;
	setAttr ".rsrr" -type "double3" -1.272221872585407e-014 -1.3493950699184835e-014 
		4.4979835663949411e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine2JntGD_parentConstraint1" -p "Spine2JntGD";
	addAttr -ci true -k true -sn "w0" -ln "Spine2JntGDSphereW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.9443045261050599e-031 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000071 -1.4124500153760516e-030 
		89.999999999999986 ;
	setAttr ".lr" -type "double3" -2.5444437451708134e-014 -178.12684376468093 -180 ;
	setAttr ".rst" -type "double3" 1.000131236876312 -2.22073745365384e-016 -3.7258250434839506e-022 ;
	setAttr ".rsrr" -type "double3" 1.7655625192200639e-031 4.4979835663949419e-015 
		4.4979835663949466e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Spine1JntGD_parentConstraint1" -p "Spine1JntGD";
	addAttr -ci true -k true -sn "w0" -ln "Spine1JntGDSphereW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.9443045261050599e-031 0 -3.9443045261050599e-031 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000071 2.7855664942724593e-061 
		89.999999999999986 ;
	setAttr ".lr" -type "double3" -2.5445417366905568e-014 -1.4294954955974875 -8.0159818312521014e-017 ;
	setAttr ".rst" -type "double3" 0.99929382061793603 1.4777738676912608e-015 -5.2161550469687799e-022 ;
	setAttr ".rsrr" -type "double3" 1.7655625192200639e-031 4.4979835663949419e-015 
		4.4979835663949466e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RootJntGD_parentConstraint1" -p "RootJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RootJntGDSphereW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.9982016241612252e-019 0.00089991000900013773 
		1.6998614894568118e-015 ;
	setAttr ".tg[0].tor" -type "double3" -90.000000000000071 0 89.999999999999986 ;
	setAttr ".lr" -type "double3" -2.5693809457625754e-014 2.7506235362777702 -6.9798078215169761e-015 ;
	setAttr ".rst" -type "double3" -1.6996616692943951e-015 9.0000000000000018 -1.6937231508183177e-032 ;
	setAttr ".rsrr" -type "double3" 9.7526178547840812e-016 4.4979835663949395e-015 
		1.2722218725854061e-014 ;
	setAttr -k on ".w0";
createNode transform -n "RightFoot" -p "JntGDGrp";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode joint -n "RightAnkleJntGD" -p "RightFoot";
	setAttr -l on ".v";
	setAttr ".r" -type "double3" -2.5004693036422488e-007 0 -89.999985677002741 ;
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "___";
	setAttr ".ds" 2;
	setAttr ".radi" 0.5;
createNode pointConstraint -n "RightAnkleJntGD_pointConstraint1" -p "RightAnkleJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightAnkleScaleFixJntGDW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -8.0611798125573841e-007 5.1004101591978213e-005 -2.5486366073135258e-007 ;
	setAttr ".rst" -type "double3" 0.81364861022166013 1.0006649816867412 -0.108912654910075 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "RightAnkleJntGD_orientConstraint1" -p "RightAnkleJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightHipJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 7.0579306565220185e-015 -0.99999999999999589 -89.999999999999972 ;
	setAttr ".o" -type "double3" 0 0 1.4325179040656167e-005 ;
	setAttr ".rsrr" -type "double3" -2.5000884689267118e-007 5.5988402034006283e-017 
		-89.999985677002741 ;
	setAttr -k on ".w0";
createNode transform -n "conGrp" -p "RightAnkleJntGD";
	setAttr ".rp" -type "double3" 1.0000557623123343 -2.9464097828224567e-011 1.1635139088294497 ;
	setAttr ".sp" -type "double3" 1.0000557623123343 -2.9464097828224567e-011 1.1635139088294497 ;
createNode joint -n "RightBallJntGD" -p "conGrp";
	setAttr ".t" -type "double3" 1.0000557623123341 -2.9464097828224567e-011 1.1635139088294495 ;
	setAttr ".r" -type "double3" -1.0425690992433712e-015 2.6062503122613426e-022 89.999999999999986 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -2.6062503145763109e-022 -1.0425690992433712e-015 
		2.955657080472161e-015 ;
	setAttr ".radi" 0.5;
createNode joint -n "RightToeJntGD" -p "RightBallJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "RightToeJntGD_parentConstraint1" -p "RightToeJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightToeJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7365446159111073e-007 -1.7779570105069809e-007 
		-8.3542967432848059e-008 ;
	setAttr ".tg[0].tor" -type "double3" 180 7.0167092985346574e-015 1.4322997234005559e-005 ;
	setAttr ".lr" -type "double3" 180 180 2.5444437451708134e-014 ;
	setAttr ".rst" -type "double3" 6.6613381477509392e-016 0 1.0000000000000009 ;
	setAttr ".rsrr" -type "double3" 0 180 0 ;
	setAttr -k on ".w0";
createNode joint -n "RightFootInJntGD" -p "RightBallJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.4322997272172215e-005 ;
	setAttr -l on ".radi" 0.5;
createNode parentConstraint -n "RightFootInJntGD_parentConstraint1" -p "RightFootInJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightFootInJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7365446159111073e-007 -1.7779570105069809e-007 
		-8.354296748835921e-008 ;
	setAttr ".tg[0].tor" -type "double3" -180 7.016709298534876e-015 -3.8166657243550144e-014 ;
	setAttr ".lr" -type "double3" 180 180 2.8645994531621913e-005 ;
	setAttr ".rst" -type "double3" -0.44694886371514758 0 -1.0546012539193748 ;
	setAttr ".rsrr" -type "double3" 0 180 2.5444437451708134e-014 ;
	setAttr -k on ".w0";
createNode joint -n "RightFootOutJntGD" -p "RightBallJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.4322997272172215e-005 ;
	setAttr -l on ".radi" 0.5;
createNode parentConstraint -n "RightFootOutJntGD_parentConstraint1" -p "RightFootOutJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightFootOutJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7365446159111073e-007 -1.7779570105069809e-007 
		-8.3542967481420316e-008 ;
	setAttr ".tg[0].tor" -type "double3" -180 7.016709298534876e-015 -3.8166657243550144e-014 ;
	setAttr ".lr" -type "double3" 180 180 2.8645994531621913e-005 ;
	setAttr ".rst" -type "double3" 0.49645682669918834 -1.0842021724855044e-019 -1.0546012539193748 ;
	setAttr ".rsrr" -type "double3" 0 180 2.5444437451708134e-014 ;
	setAttr -k on ".w0";
createNode joint -n "RightHeelJntGD" -p "RightBallJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.4322997272172215e-005 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "RightHeelJntGD_parentConstraint1" -p "RightHeelJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightHeelJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7365446159111073e-007 -1.7779570105067098e-007 
		-8.354296748835921e-008 ;
	setAttr ".tg[0].tor" -type "double3" -180 7.016709298534876e-015 -3.8166657243550144e-014 ;
	setAttr ".lr" -type "double3" 180 180 2.8645994531621913e-005 ;
	setAttr ".rst" -type "double3" -1.6830939475465101e-007 0 -1.7491739348598396 ;
	setAttr ".rsrr" -type "double3" 0 180 2.5444437451708134e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "conGrp_parentConstraint1" -p "conGrp";
	addAttr -ci true -k true -sn "w0" -ln "RightBallJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7365446148981999e-007 -1.7779570110620924e-007 
		-8.354296748835921e-008 ;
	setAttr ".tg[0].tor" -type "double3" -180 1.7540612728781705e-021 -89.999985677002755 ;
	setAttr ".lr" -type "double3" 0 180 0 ;
	setAttr ".rst" -type "double3" 0 1.1102230246251565e-016 0 ;
	setAttr ".rsrr" -type "double3" 0 180 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftHipJntGDGrp" -p "JntGDGrp";
createNode transform -n "transform1" -p "LeftHipJntGDGrp";
	setAttr ".t" -type "double3" -1.6934729031402706e-016 0 -2.1168411289253383e-017 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode joint -n "LeftHipJntGD" -p "transform1";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.81364861023454416 9.0000042158112219 -0.17872228065920903 ;
	setAttr ".r" -type "double3" 0 -1 0 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999986 ;
createNode joint -n "LeftKneeJntGD" -p "LeftHipJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 4 -8.8817841970012523e-016 0 ;
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 1 0 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "LeftAnkleScaleFixJntGD" -p "LeftKneeJntGD";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 3.9999999999999982 -8.8817841970012484e-016 0 ;
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "___";
createNode parentConstraint -n "LeftHipJntGDGrp_parentConstraint1" -p "LeftHipJntGDGrp";
	addAttr -ci true -k true -sn "w0" -ln "RootJntGDCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -9.0000000000000036 0.17872228065920903 ;
	setAttr ".rst" -type "double3" 0 -1.3547783225122163e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "RightHipJntGDGrp" -p "JntGDGrp";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".rp" -type "double3" -8.4673645157013531e-017 -6.7738916125610825e-016 
		0 ;
	setAttr ".sp" -type "double3" -8.4673645157013531e-017 -6.7738916125610825e-016 
		0 ;
createNode transform -n "transform2" -p "RightHipJntGDGrp";
	setAttr ".t" -type "double3" -8.4673645157013531e-017 -6.7738916125610825e-016 
		0 ;
createNode joint -n "RightHipJntGD" -p "transform2";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -180 0 89.999999999999972 ;
createNode joint -n "RightKneeJntGD" -p "RightHipJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "RightAnkleScaleFixJntGD" -p "RightKneeJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "___";
createNode parentConstraint -n "RightAnkleScaleFixJntGD_parentConstraint1" -p "RightAnkleScaleFixJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightAnkleScaleFixJntGDLocW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.4174503195709747e-009 -1.3322676295501878e-015 
		2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" 1.4073564998032058e-014 -7.1255561769939198e-015 
		90.000000000000057 ;
	setAttr ".lr" -type "double3" -7.0167092985348689e-015 360 3.1805546814635168e-014 ;
	setAttr ".rst" -type "double3" -4 -9.9920072216264089e-016 0 ;
	setAttr ".rsrr" -type "double3" -7.016709298534872e-015 360 -4.2964952914991028e-031 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightKneeJntGD_parentConstraint1" -p "RightKneeJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightKneeJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.4174511522382431e-009 -6.6613381477509392e-016 
		8.3266726846886741e-017 ;
	setAttr ".tg[0].tor" -type "double3" 1.4073564998032053e-014 -2.8805439864443528e-015 
		90.000000000000057 ;
	setAttr ".lr" -type "double3" -5.8854341997058337e-015 0.99999999999999589 3.17553965123633e-014 ;
	setAttr ".rst" -type "double3" -4.0000000000000009 -7.7715611723760958e-016 0 ;
	setAttr ".rsrr" -type "double3" -6.5606434676317696e-015 0.99999999999999589 -5.7253868164327501e-017 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightHipJntGD_parentConstraint1" -p "RightHipJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightHipJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.4174518183720579e-009 0 1.387778665450923e-017 ;
	setAttr ".tg[0].tor" -type "double3" 1.4075708796659011e-014 -0.99999999999999978 
		90.000000000000057 ;
	setAttr ".lr" -type "double3" -1.4024796329041562e-014 359 3.1929150461871217e-014 ;
	setAttr ".rst" -type "double3" -0.81364858150482178 9.0000042158112219 -0.17872228065920903 ;
	setAttr ".rsrr" -type "double3" -1.3946009194536688e-014 359 1.2170497844942812e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightHipJntGDGrp_parentConstraint1" -p "RightHipJntGDGrp";
	addAttr -ci true -k true -sn "w0" -ln "RootJntGDCtrlW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.4673645157013531e-017 -9.0000000000000036 
		0.17872228065920903 ;
	setAttr ".rst" -type "double3" 0 -6.7738916125610825e-016 0 ;
	setAttr -k on ".w0";
createNode joint -n "RightClavicleJntGD" -p "JntGDGrp";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
	setAttr ".jo" -type "double3" -0.070967145406857043 -0.057295852794161342 8.0516584157712246e-005 ;
createNode joint -n "RightShoulderJntGD" -p "RightClavicleJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "RightElbowJntGD" -p "RightShoulderJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
createNode joint -n "RightWristJntGD" -p "RightElbowJntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "xzy";
createNode parentConstraint -n "RightWristJntGD_parentConstraint1" -p "RightWristJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightWristJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.6355442182566264e-006 -2.4626295935803455e-006 
		3.7183141404772968e-007 ;
	setAttr ".tg[0].tor" -type "double3" 179.92902328322265 -0.94270338006361087 -179.99884180177278 ;
	setAttr ".lr" -type "double3" 4.3814978611534301e-015 360 5.3405422792402601e-014 ;
	setAttr ".rst" -type "double3" -2.9234138619063268 1.7763568394002505e-015 -1.1102230246251565e-016 ;
	setAttr ".rsrr" -type "double3" 5.2225419400809579e-015 360 2.5233422868044137e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightElbowJntGD_parentConstraint1" -p "RightElbowJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightElbowJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.6053347446672888e-007 -2.4625265764299797e-006 
		4.5568619752578421e-007 ;
	setAttr ".tg[0].tor" -type "double3" 179.92902328322265 -0.94270338006361087 -179.99884180177278 ;
	setAttr ".lr" -type "double3" 5.3136802462542896e-015 0.99999999999999978 5.3413308963419498e-014 ;
	setAttr ".rst" -type "double3" -2.5054837911946874 1.7763568394002505e-015 -2.2204460492503131e-016 ;
	setAttr ".rsrr" -type "double3" 5.26655976813158e-015 0.99999999999999978 2.5234258109468173e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightShoulderJntGD_parentConstraint1" -p "RightShoulderJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightShoulderJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.6929816310538044e-007 -2.4625254111398931e-006 
		4.5651605995455924e-007 ;
	setAttr ".tg[0].tor" -type "double3" 179.92903285459315 0.057295852794168323 179.99991948341585 ;
	setAttr ".lr" -type "double3" 4.2612107457481663e-015 360 -4.7326620658816287e-016 ;
	setAttr ".rst" -type "double3" -0.94496351027607217 -0.4348374309175167 -0.030173779697782011 ;
	setAttr ".rsrr" -type "double3" 4.2612107457481663e-015 360 -4.7326620658816287e-016 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightClavicleJntGD_parentConstraint1" -p "RightClavicleJntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightClavicleJntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.1473284086970246e-007 8.2320662908585973e-007 
		1.8667165258001717e-008 ;
	setAttr ".tg[0].tor" -type "double3" 179.92903285459315 0.057295852794154306 179.99991948341585 ;
	setAttr ".lr" -type "double3" 4.273643475377559e-015 360 -4.5589196073910384e-016 ;
	setAttr ".rst" -type "double3" -0.55758063485893961 14.589373764573375 -0.52374238610171564 ;
	setAttr ".rsrr" -type "double3" 4.273643475377559e-015 360 -4.5589196073910384e-016 ;
	setAttr -k on ".w0";
createNode transform -n "GDSys" -p "JntGDGrpGrp";
createNode transform -n "SpineGDSys" -p "GDSys";
createNode transform -n "SpineCurveGD" -p "SpineGDSys";
	setAttr ".it" no;
createNode nurbsCurve -n "SpineCurveGDShape" -p "SpineCurveGD";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".tw" yes;
	setAttr ".ipo" yes;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "SpineCurveGDShape1Orig" -p "SpineCurveGD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		2 1 0 no 3
		4 0 0 1 1
		3
		0 0 0
		0 3 0
		0 6 0
		;
	setAttr ".dcv" yes;
createNode nurbsCurve -n "SpineCurveGDShape1Original" -p "SpineCurveGD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
	setAttr ".dcv" yes;
createNode transform -n "RootJntGDLoc" -p "SpineGDSys";
	setAttr ".it" no;
	setAttr ".smd" 7;
createNode locator -n "RootJntGDLocShape" -p "RootJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "RootJntGDSphere" -p "RootJntGDLoc";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".rp" -type "double3" -2.7755575615628914e-017 1.7763568394002505e-015 0 ;
	setAttr ".rpt" -type "double3" 1.8041124150158802e-015 -1.7486012637846219e-015 
		0 ;
	setAttr ".sp" -type "double3" -2.7755575615628914e-017 1.7763568394002505e-015 0 ;
createNode nurbsSurface -n "RootJntGDSphereShape" -p "RootJntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		0.056094691064845562 -0.28059019370092741 -0.056094691064845686
		0.079329872881033534 -0.28059019370092741 -1.7455596163486563e-017
		0.05609469106484561 -0.28059019370092741 0.056094691064845575
		3.231280446359657e-017 -0.28059019370092741 0.07932987288103352
		-0.056094691064845575 -0.28059019370092741 0.056094691064845617
		-0.079329872881033561 -0.28059019370092741 1.6047436760235051e-017
		-0.056094691064845624 -0.28059019370092741 -0.056094691064845575
		-5.1933221455311268e-017 -0.28059019370092741 -0.079329872881033561
		0.056094691064845562 -0.28059019370092741 -0.056094691064845686
		0.079329872881033534 -0.28059019370092741 -1.7455596163486563e-017
		0.05609469106484561 -0.28059019370092741 0.056094691064845575
		0.17296420740444113 -0.21987373761452708 -0.17296420740444141
		0.24460832791647377 -0.21987373761452708 2.9479339273952085e-017
		0.17296420740444121 -0.21987373761452708 0.17296420740444121
		5.5845536513579888e-017 -0.21987373761452708 0.24460832791647377
		-0.17296420740444118 -0.21987373761452708 0.17296420740444127
		-0.24460832791647377 -0.21987373761452708 4.52060422575713e-017
		-0.17296420740444124 -0.21987373761452708 -0.17296420740444113
		-1.1634377279040548e-016 -0.21987373761452708 -0.24460832791647377
		0.17296420740444113 -0.21987373761452708 -0.17296420740444141
		0.24460832791647377 -0.21987373761452708 2.9479339273952085e-017
		0.17296420740444121 -0.21987373761452708 0.17296420740444121
		0.24332850271956993 1.8337666162230963e-017 -0.24332850271957024
		0.34411846865795453 3.4380925623889702e-018 8.1402160752699158e-017
		0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		5.7574564935786928e-017 -1.7633086496083663e-017 0.34411846865795453
		-0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		-0.34411846865795459 3.438092562388971e-018 6.1547252346455841e-017
		-0.24332850271957004 1.8337666162230945e-017 -0.24332850271956993
		-1.426843426829993e-016 2.4509271620861614e-017 -0.34411846865795453
		0.24332850271956993 1.8337666162230963e-017 -0.24332850271957024
		0.34411846865795453 3.4380925623889702e-018 8.1402160752699158e-017
		0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		0.17296420740444121 0.21987373761452716 -0.17296420740444141
		0.2446083279164738 0.21987373761452716 8.6246192739253776e-017
		0.17296420740444124 0.21987373761452716 0.17296420740444127
		2.6005449946897815e-017 0.21987373761452716 0.2446083279164738
		-0.17296420740444124 0.21987373761452716 0.17296420740444127
		-0.24460832791647383 0.21987373761452716 4.2292722589508776e-017
		-0.17296420740444127 0.21987373761452716 -0.17296420740444121
		-8.6503686223723403e-017 0.21987373761452716 -0.2446083279164738
		0.17296420740444121 0.21987373761452716 -0.17296420740444141
		0.2446083279164738 0.21987373761452716 8.6246192739253776e-017
		0.17296420740444124 0.21987373761452716 0.17296420740444127
		0.056094691064845624 0.28059019370092736 -0.056094691064845645
		0.079329872881033561 0.28059019370092736 5.4986991034197806e-017
		0.05609469106484561 0.28059019370092736 0.056094691064845673
		-5.7673944752901357e-018 0.28059019370092736 0.079329872881033589
		-0.056094691064845638 0.28059019370092736 0.056094691064845638
		-0.079329872881033589 0.28059019370092736 1.2329626080145999e-017
		-0.056094691064845617 0.28059019370092736 -0.05609469106484561
		-1.3853022516424581e-017 0.28059019370092736 -0.079329872881033561
		0.056094691064845624 0.28059019370092736 -0.056094691064845645
		0.079329872881033561 0.28059019370092736 5.4986991034197806e-017
		0.05609469106484561 0.28059019370092736 0.056094691064845673
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Spine1JntGDLoc" -p "SpineGDSys";
	setAttr ".it" no;
	setAttr ".smd" 7;
createNode locator -n "Spine1JntGDLocShape" -p "Spine1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "Spine1JntGDSphere" -p "Spine1JntGDLoc";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsSurface -n "Spine1JntGDSphereShape" -p "Spine1JntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		1.6156402231798285e-017 -0.14029509685046371 0.03966493644051676
		-0.028047345532422788 -0.14029509685046371 0.028047345532422809
		-0.039664936440516781 -0.14029509685046371 8.0237183801175256e-018
		-0.028047345532422812 -0.14029509685046371 -0.028047345532422788
		-2.5966610727655634e-017 -0.14029509685046371 -0.039664936440516781
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		2.7922768256789944e-017 -0.10993686880726354 0.12230416395823689
		-0.086482103702220592 -0.10993686880726354 0.086482103702220633
		-0.12230416395823689 -0.10993686880726354 2.260302112878565e-017
		-0.08648210370222062 -0.10993686880726354 -0.086482103702220564
		-5.817188639520274e-017 -0.10993686880726354 -0.12230416395823689
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		2.8787282467893464e-017 -8.8165432480418316e-018 0.17205923432897727
		-0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		-0.1720592343289773 1.7190462811944855e-018 3.077362617322792e-017
		-0.12166425135978502 9.1688330811154709e-018 -0.12166425135978497
		-7.1342171341499651e-017 1.2254635810430807e-017 -0.17205923432897727
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		1.3002724973448907e-017 0.10993686880726358 0.1223041639582369
		-0.08648210370222062 0.10993686880726358 0.086482103702220633
		-0.12230416395823691 0.10993686880726358 2.1146361294754388e-017
		-0.086482103702220633 0.10993686880726358 -0.086482103702220606
		-4.3251843111861702e-017 0.10993686880726358 -0.1223041639582369
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		-2.8836972376450678e-018 0.14029509685046368 0.039664936440516795
		-0.028047345532422819 0.14029509685046368 0.028047345532422819
		-0.039664936440516795 0.14029509685046368 6.1648130400729996e-018
		-0.028047345532422809 0.14029509685046368 -0.028047345532422805
		-6.9265112582122905e-018 0.14029509685046368 -0.039664936440516781
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Spine2JntGDLoc" -p "SpineGDSys";
	setAttr ".it" no;
	setAttr ".smd" 7;
createNode locator -n "Spine2JntGDLocShape" -p "Spine2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "Spine2JntGDSphere" -p "Spine2JntGDLoc";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 -89.999999999999986 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsSurface -n "Spine2JntGDSphereShape" -p "Spine2JntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		1.6156402231798285e-017 -0.14029509685046371 0.03966493644051676
		-0.028047345532422788 -0.14029509685046371 0.028047345532422809
		-0.039664936440516781 -0.14029509685046371 8.0237183801175256e-018
		-0.028047345532422812 -0.14029509685046371 -0.028047345532422788
		-2.5966610727655634e-017 -0.14029509685046371 -0.039664936440516781
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		2.7922768256789944e-017 -0.10993686880726354 0.12230416395823689
		-0.086482103702220592 -0.10993686880726354 0.086482103702220633
		-0.12230416395823689 -0.10993686880726354 2.260302112878565e-017
		-0.08648210370222062 -0.10993686880726354 -0.086482103702220564
		-5.817188639520274e-017 -0.10993686880726354 -0.12230416395823689
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		2.8787282467893464e-017 -8.8165432480418316e-018 0.17205923432897727
		-0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		-0.1720592343289773 1.7190462811944855e-018 3.077362617322792e-017
		-0.12166425135978502 9.1688330811154709e-018 -0.12166425135978497
		-7.1342171341499651e-017 1.2254635810430807e-017 -0.17205923432897727
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		1.3002724973448907e-017 0.10993686880726358 0.1223041639582369
		-0.08648210370222062 0.10993686880726358 0.086482103702220633
		-0.12230416395823691 0.10993686880726358 2.1146361294754388e-017
		-0.086482103702220633 0.10993686880726358 -0.086482103702220606
		-4.3251843111861702e-017 0.10993686880726358 -0.1223041639582369
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		-2.8836972376450678e-018 0.14029509685046368 0.039664936440516795
		-0.028047345532422819 0.14029509685046368 0.028047345532422819
		-0.039664936440516795 0.14029509685046368 6.1648130400729996e-018
		-0.028047345532422809 0.14029509685046368 -0.028047345532422805
		-6.9265112582122905e-018 0.14029509685046368 -0.039664936440516781
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Spine3JntGDLoc" -p "SpineGDSys";
	setAttr ".it" no;
	setAttr ".smd" 7;
createNode locator -n "Spine3JntGDLocShape" -p "Spine3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "Spine3JntGDSphere" -p "Spine3JntGDLoc";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -180 -7.016709298534876e-015 89.999999999999986 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsSurface -n "Spine3JntGDSphereShape" -p "Spine3JntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		1.6156402231798285e-017 -0.14029509685046371 0.03966493644051676
		-0.028047345532422788 -0.14029509685046371 0.028047345532422809
		-0.039664936440516781 -0.14029509685046371 8.0237183801175256e-018
		-0.028047345532422812 -0.14029509685046371 -0.028047345532422788
		-2.5966610727655634e-017 -0.14029509685046371 -0.039664936440516781
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		2.7922768256789944e-017 -0.10993686880726354 0.12230416395823689
		-0.086482103702220592 -0.10993686880726354 0.086482103702220633
		-0.12230416395823689 -0.10993686880726354 2.260302112878565e-017
		-0.08648210370222062 -0.10993686880726354 -0.086482103702220564
		-5.817188639520274e-017 -0.10993686880726354 -0.12230416395823689
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		2.8787282467893464e-017 -8.8165432480418316e-018 0.17205923432897727
		-0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		-0.1720592343289773 1.7190462811944855e-018 3.077362617322792e-017
		-0.12166425135978502 9.1688330811154709e-018 -0.12166425135978497
		-7.1342171341499651e-017 1.2254635810430807e-017 -0.17205923432897727
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		1.3002724973448907e-017 0.10993686880726358 0.1223041639582369
		-0.08648210370222062 0.10993686880726358 0.086482103702220633
		-0.12230416395823691 0.10993686880726358 2.1146361294754388e-017
		-0.086482103702220633 0.10993686880726358 -0.086482103702220606
		-4.3251843111861702e-017 0.10993686880726358 -0.1223041639582369
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		-2.8836972376450678e-018 0.14029509685046368 0.039664936440516795
		-0.028047345532422819 0.14029509685046368 0.028047345532422819
		-0.039664936440516795 0.14029509685046368 6.1648130400729996e-018
		-0.028047345532422809 0.14029509685046368 -0.028047345532422805
		-6.9265112582122905e-018 0.14029509685046368 -0.039664936440516781
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Spine4JntGDLoc" -p "SpineGDSys";
	setAttr ".it" no;
	setAttr ".smd" 7;
createNode locator -n "Spine4JntGDLocShape" -p "Spine4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "Spine4JntGDSphere" -p "Spine4JntGDLoc";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -180 -7.016709298534876e-015 89.999999999999986 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".rp" -type "double3" 2.7755575615628914e-017 0 -1.9721522630525304e-031 ;
	setAttr ".rpt" -type "double3" -2.775557561562892e-017 2.7755575615628926e-017 3.9443045261050599e-031 ;
	setAttr ".sp" -type "double3" 2.7755575615628914e-017 0 -1.9721522630525304e-031 ;
createNode nurbsSurface -n "Spine4JntGDSphereShape" -p "Spine4JntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		0.056094691064845562 -0.28059019370092741 -0.056094691064845686
		0.079329872881033534 -0.28059019370092741 -1.7455596163486563e-017
		0.05609469106484561 -0.28059019370092741 0.056094691064845575
		3.231280446359657e-017 -0.28059019370092741 0.07932987288103352
		-0.056094691064845575 -0.28059019370092741 0.056094691064845617
		-0.079329872881033561 -0.28059019370092741 1.6047436760235051e-017
		-0.056094691064845624 -0.28059019370092741 -0.056094691064845575
		-5.1933221455311268e-017 -0.28059019370092741 -0.079329872881033561
		0.056094691064845562 -0.28059019370092741 -0.056094691064845686
		0.079329872881033534 -0.28059019370092741 -1.7455596163486563e-017
		0.05609469106484561 -0.28059019370092741 0.056094691064845575
		0.17296420740444113 -0.21987373761452708 -0.17296420740444141
		0.24460832791647377 -0.21987373761452708 2.9479339273952085e-017
		0.17296420740444121 -0.21987373761452708 0.17296420740444121
		5.5845536513579888e-017 -0.21987373761452708 0.24460832791647377
		-0.17296420740444118 -0.21987373761452708 0.17296420740444127
		-0.24460832791647377 -0.21987373761452708 4.52060422575713e-017
		-0.17296420740444124 -0.21987373761452708 -0.17296420740444113
		-1.1634377279040548e-016 -0.21987373761452708 -0.24460832791647377
		0.17296420740444113 -0.21987373761452708 -0.17296420740444141
		0.24460832791647377 -0.21987373761452708 2.9479339273952085e-017
		0.17296420740444121 -0.21987373761452708 0.17296420740444121
		0.24332850271956993 1.8337666162230963e-017 -0.24332850271957024
		0.34411846865795453 3.4380925623889702e-018 8.1402160752699158e-017
		0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		5.7574564935786928e-017 -1.7633086496083663e-017 0.34411846865795453
		-0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		-0.34411846865795459 3.438092562388971e-018 6.1547252346455841e-017
		-0.24332850271957004 1.8337666162230945e-017 -0.24332850271956993
		-1.426843426829993e-016 2.4509271620861614e-017 -0.34411846865795453
		0.24332850271956993 1.8337666162230963e-017 -0.24332850271957024
		0.34411846865795453 3.4380925623889702e-018 8.1402160752699158e-017
		0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		0.17296420740444121 0.21987373761452716 -0.17296420740444141
		0.2446083279164738 0.21987373761452716 8.6246192739253776e-017
		0.17296420740444124 0.21987373761452716 0.17296420740444127
		2.6005449946897815e-017 0.21987373761452716 0.2446083279164738
		-0.17296420740444124 0.21987373761452716 0.17296420740444127
		-0.24460832791647383 0.21987373761452716 4.2292722589508776e-017
		-0.17296420740444127 0.21987373761452716 -0.17296420740444121
		-8.6503686223723403e-017 0.21987373761452716 -0.2446083279164738
		0.17296420740444121 0.21987373761452716 -0.17296420740444141
		0.2446083279164738 0.21987373761452716 8.6246192739253776e-017
		0.17296420740444124 0.21987373761452716 0.17296420740444127
		0.056094691064845624 0.28059019370092736 -0.056094691064845645
		0.079329872881033561 0.28059019370092736 5.4986991034197806e-017
		0.05609469106484561 0.28059019370092736 0.056094691064845673
		-5.7673944752901357e-018 0.28059019370092736 0.079329872881033589
		-0.056094691064845638 0.28059019370092736 0.056094691064845638
		-0.079329872881033589 0.28059019370092736 1.2329626080145999e-017
		-0.056094691064845617 0.28059019370092736 -0.05609469106484561
		-1.3853022516424581e-017 0.28059019370092736 -0.079329872881033561
		0.056094691064845624 0.28059019370092736 -0.056094691064845645
		0.079329872881033561 0.28059019370092736 5.4986991034197806e-017
		0.05609469106484561 0.28059019370092736 0.056094691064845673
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "Neck1JntGDLoc" -p "SpineGDSys";
	setAttr ".it" no;
	setAttr ".smd" 7;
createNode locator -n "Neck1JntGDLocShape" -p "Neck1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "Neck1JntGDSphere" -p "Neck1JntGDLoc";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -180 -7.016709298534876e-015 89.999999999999986 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".rp" -type "double3" 0 0 1.9721522630525304e-031 ;
	setAttr ".rpt" -type "double3" -2.4151899563784892e-047 1.4287287209132353e-063 
		-3.9443045261050599e-031 ;
	setAttr ".sp" -type "double3" 0 0 1.9721522630525304e-031 ;
createNode nurbsSurface -n "Neck1JntGDSphereShape" -p "Neck1JntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		2.6926766898619522e-017 -0.28059019370092741 -7.1034727926637984e-017
		0.056094691064845562 -0.28059019370092741 -0.056094691064845686
		0.079329872881033534 -0.28059019370092741 -1.7455596163486563e-017
		0.05609469106484561 -0.28059019370092741 0.056094691064845575
		3.231280446359657e-017 -0.28059019370092741 0.07932987288103352
		-0.056094691064845575 -0.28059019370092741 0.056094691064845617
		-0.079329872881033561 -0.28059019370092741 1.6047436760235051e-017
		-0.056094691064845624 -0.28059019370092741 -0.056094691064845575
		-5.1933221455311268e-017 -0.28059019370092741 -0.079329872881033561
		0.056094691064845562 -0.28059019370092741 -0.056094691064845686
		0.079329872881033534 -0.28059019370092741 -1.7455596163486563e-017
		0.05609469106484561 -0.28059019370092741 0.056094691064845575
		0.17296420740444113 -0.21987373761452708 -0.17296420740444141
		0.24460832791647377 -0.21987373761452708 2.9479339273952085e-017
		0.17296420740444121 -0.21987373761452708 0.17296420740444121
		5.5845536513579888e-017 -0.21987373761452708 0.24460832791647377
		-0.17296420740444118 -0.21987373761452708 0.17296420740444127
		-0.24460832791647377 -0.21987373761452708 4.52060422575713e-017
		-0.17296420740444124 -0.21987373761452708 -0.17296420740444113
		-1.1634377279040548e-016 -0.21987373761452708 -0.24460832791647377
		0.17296420740444113 -0.21987373761452708 -0.17296420740444141
		0.24460832791647377 -0.21987373761452708 2.9479339273952085e-017
		0.17296420740444121 -0.21987373761452708 0.17296420740444121
		0.24332850271956993 1.8337666162230963e-017 -0.24332850271957024
		0.34411846865795453 3.4380925623889702e-018 8.1402160752699158e-017
		0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		5.7574564935786928e-017 -1.7633086496083663e-017 0.34411846865795453
		-0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		-0.34411846865795459 3.438092562388971e-018 6.1547252346455841e-017
		-0.24332850271957004 1.8337666162230945e-017 -0.24332850271956993
		-1.426843426829993e-016 2.4509271620861614e-017 -0.34411846865795453
		0.24332850271956993 1.8337666162230963e-017 -0.24332850271957024
		0.34411846865795453 3.4380925623889702e-018 8.1402160752699158e-017
		0.24332850271956999 -1.1461481037453001e-017 0.24332850271957007
		0.17296420740444121 0.21987373761452716 -0.17296420740444141
		0.2446083279164738 0.21987373761452716 8.6246192739253776e-017
		0.17296420740444124 0.21987373761452716 0.17296420740444127
		2.6005449946897815e-017 0.21987373761452716 0.2446083279164738
		-0.17296420740444124 0.21987373761452716 0.17296420740444127
		-0.24460832791647383 0.21987373761452716 4.2292722589508776e-017
		-0.17296420740444127 0.21987373761452716 -0.17296420740444121
		-8.6503686223723403e-017 0.21987373761452716 -0.2446083279164738
		0.17296420740444121 0.21987373761452716 -0.17296420740444141
		0.2446083279164738 0.21987373761452716 8.6246192739253776e-017
		0.17296420740444124 0.21987373761452716 0.17296420740444127
		0.056094691064845624 0.28059019370092736 -0.056094691064845645
		0.079329872881033561 0.28059019370092736 5.4986991034197806e-017
		0.05609469106484561 0.28059019370092736 0.056094691064845673
		-5.7673944752901357e-018 0.28059019370092736 0.079329872881033589
		-0.056094691064845638 0.28059019370092736 0.056094691064845638
		-0.079329872881033589 0.28059019370092736 1.2329626080145999e-017
		-0.056094691064845617 0.28059019370092736 -0.05609469106484561
		-1.3853022516424581e-017 0.28059019370092736 -0.079329872881033561
		0.056094691064845624 0.28059019370092736 -0.056094691064845645
		0.079329872881033561 0.28059019370092736 5.4986991034197806e-017
		0.05609469106484561 0.28059019370092736 0.056094691064845673
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		4.8821777202007649e-017 0.28059019370092741 -4.7138161739893079e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "ChestJntGDLoc" -p "SpineGDSys";
	setAttr ".t" -type "double3" 0 4.3385160836435848 -0.024604146259503315 ;
	setAttr ".it" no;
createNode locator -n "ChestJntGDLocShape" -p "ChestJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0 0 0 ;
createNode geometryConstraint -n "locator9_geometryConstraint1" -p "ChestJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "curve1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".w0";
createNode pointConstraint -n "locator9_pointConstraint1" -p "ChestJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0.0003283895322936381 0 ;
	setAttr ".rst" -type "double3" 0 3.0003283895322936 0 ;
	setAttr -k on ".w0";
createNode transform -n "RootJntGDCtrl" -p "SpineGDSys";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 9.0000000000000018 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "RootJntGDCtrlShape" -p "RootJntGDCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode transform -n "locator8" -p "RootJntGDCtrl";
createNode locator -n "locatorShape8" -p "locator8";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "Neck1JntGDCtrl" -p "SpineGDSys";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 14.933136936400595 -0.45773066632434523 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "Neck1JntGDCtrlShape" -p "Neck1JntGDCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122493 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884701e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543879
		0.78361162489122382 -4.7982373409884725e-017 0.78361162489122427
		1.1081941875543879 -3.6446300679047916e-032 5.9521325992805861e-016
		0.78361162489122493 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode transform -n "locator7" -p "Neck1JntGDCtrl";
	setAttr ".t" -type "double3" 0 -6 0 ;
	setAttr ".rp" -type "double3" 0 6 0 ;
	setAttr ".sp" -type "double3" 0 6 0 ;
createNode locator -n "locatorShape7" -p "locator7";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" 0 6 0 ;
	setAttr ".los" -type "double3" 0 0 0 ;
createNode transform -n "spineArcCtrlGrp" -p "SpineGDSys";
createNode transform -n "spineArcCtrl" -p "spineArcCtrlGrp";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.2678955017907194 0.43235064778900217 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "spineArcCtrlShape" -p "spineArcCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode transform -n "cluster1Handle" -p "spineArcCtrl";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovv" no;
	setAttr ".t" -type "double3" 0 -3 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 3 0 ;
	setAttr ".sp" -type "double3" 0 3 0 ;
createNode clusterHandle -n "cluster1HandleShape" -p "cluster1Handle";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 0 3 0 ;
createNode parentConstraint -n "spineArcCtrlGrp_parentConstraint" -p "spineArcCtrlGrp";
	addAttr -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "nurbsCircle3W1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0 3.0000000000000009 0 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "HeadGDSys" -p "GDSys";
createNode transform -n "HeadJntGDCtrlGrp" -p "HeadGDSys";
	setAttr ".t" -type "double3" 1.666670093004536e-007 18 0 ;
createNode transform -n "HeadJntGDCtrl" -p "HeadJntGDCtrlGrp";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 -2.3829350673059735 -0.53122756277521743 ;
	setAttr -l on ".tx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "HeadJntGDCtrlShape" -p "HeadJntGDCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".tw" yes;
createNode transform -n "HeadJntGDSphere" -p "HeadJntGDCtrl";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsSurface -n "HeadJntGDSphereShape" -p "HeadJntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		1.6156402231798285e-017 -0.14029509685046371 0.03966493644051676
		-0.028047345532422788 -0.14029509685046371 0.028047345532422809
		-0.039664936440516781 -0.14029509685046371 8.0237183801175256e-018
		-0.028047345532422812 -0.14029509685046371 -0.028047345532422788
		-2.5966610727655634e-017 -0.14029509685046371 -0.039664936440516781
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		2.7922768256789944e-017 -0.10993686880726354 0.12230416395823689
		-0.086482103702220592 -0.10993686880726354 0.086482103702220633
		-0.12230416395823689 -0.10993686880726354 2.260302112878565e-017
		-0.08648210370222062 -0.10993686880726354 -0.086482103702220564
		-5.817188639520274e-017 -0.10993686880726354 -0.12230416395823689
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		2.8787282467893464e-017 -8.8165432480418316e-018 0.17205923432897727
		-0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		-0.1720592343289773 1.7190462811944855e-018 3.077362617322792e-017
		-0.12166425135978502 9.1688330811154709e-018 -0.12166425135978497
		-7.1342171341499651e-017 1.2254635810430807e-017 -0.17205923432897727
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		1.3002724973448907e-017 0.10993686880726358 0.1223041639582369
		-0.08648210370222062 0.10993686880726358 0.086482103702220633
		-0.12230416395823691 0.10993686880726358 2.1146361294754388e-017
		-0.086482103702220633 0.10993686880726358 -0.086482103702220606
		-4.3251843111861702e-017 0.10993686880726358 -0.1223041639582369
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		-2.8836972376450678e-018 0.14029509685046368 0.039664936440516795
		-0.028047345532422819 0.14029509685046368 0.028047345532422819
		-0.039664936440516795 0.14029509685046368 6.1648130400729996e-018
		-0.028047345532422809 0.14029509685046368 -0.028047345532422805
		-6.9265112582122905e-018 0.14029509685046368 -0.039664936440516781
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "LeftEyeJntGDCtrlGrp" -p "HeadJntGDCtrl";
	setAttr ".t" -type "double3" 0.56793389906485769 0.81247639299463259 1.1024384635871038 ;
createNode transform -n "LeftEyeJntGDCtrl" -p "LeftEyeJntGDCtrlGrp";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0.04488408388470029 0.39573386521851478 -0.51679619671447252 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "LeftEyeJntGDCtrlShape" -p "LeftEyeJntGDCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 -0.51846926712011687 1.0692130134157444e-016
		0 0.51846926712011687 1.0692130134157444e-016
		0 0 1.0692130134157444e-016
		0.51846926712011687 0 1.0692130134157444e-016
		-0.51846926712011687 0 1.0692130134157444e-016
		0 0 1.0692130134157444e-016
		0 0 -0.51846926712011765
		0 0 1.0692130134157444e-016
		0 0 0.51846926712011765
		;
createNode transform -n "LeftEyeJntGDSphere" -p "LeftEyeJntGDCtrl";
	setAttr ".r" -type "double3" -0.070967135870683304 0.057295864620036593 -7.0967265748683557e-005 ;
createNode nurbsSurface -n "LeftEyeJntGDSphereShape" -p "LeftEyeJntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		1.6156402231798285e-017 -0.14029509685046371 0.03966493644051676
		-0.028047345532422788 -0.14029509685046371 0.028047345532422809
		-0.039664936440516781 -0.14029509685046371 8.0237183801175256e-018
		-0.028047345532422812 -0.14029509685046371 -0.028047345532422788
		-2.5966610727655634e-017 -0.14029509685046371 -0.039664936440516781
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		2.7922768256789944e-017 -0.10993686880726354 0.12230416395823689
		-0.086482103702220592 -0.10993686880726354 0.086482103702220633
		-0.12230416395823689 -0.10993686880726354 2.260302112878565e-017
		-0.08648210370222062 -0.10993686880726354 -0.086482103702220564
		-5.817188639520274e-017 -0.10993686880726354 -0.12230416395823689
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		2.8787282467893464e-017 -8.8165432480418316e-018 0.17205923432897727
		-0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		-0.1720592343289773 1.7190462811944855e-018 3.077362617322792e-017
		-0.12166425135978502 9.1688330811154709e-018 -0.12166425135978497
		-7.1342171341499651e-017 1.2254635810430807e-017 -0.17205923432897727
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		1.3002724973448907e-017 0.10993686880726358 0.1223041639582369
		-0.08648210370222062 0.10993686880726358 0.086482103702220633
		-0.12230416395823691 0.10993686880726358 2.1146361294754388e-017
		-0.086482103702220633 0.10993686880726358 -0.086482103702220606
		-4.3251843111861702e-017 0.10993686880726358 -0.1223041639582369
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		-2.8836972376450678e-018 0.14029509685046368 0.039664936440516795
		-0.028047345532422819 0.14029509685046368 0.028047345532422819
		-0.039664936440516795 0.14029509685046368 6.1648130400729996e-018
		-0.028047345532422809 0.14029509685046368 -0.028047345532422805
		-6.9265112582122905e-018 0.14029509685046368 -0.039664936440516781
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "HeadEndJntGDCtrlGrp" -p "HeadJntGDCtrl";
	setAttr ".t" -type "double3" 3.3333401793479593e-007 1.9999984658461043 0 ;
createNode transform -n "HeadEndJntGDCtrl" -p "HeadEndJntGDCtrlGrp";
	setAttr -l on ".v";
	setAttr ".t" -type "double3" 0 1.8584209643155676 0 ;
	setAttr -l on ".tx";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode nurbsCurve -n "HeadEndJntGDCtrlShape" -p "HeadEndJntGDCtrl";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		1 8 0 no 3
		9 0 1 2 3 4 5 6 7 8
		9
		0 -0.51846926712011687 1.0692130134157444e-016
		0 0.51846926712011687 1.0692130134157444e-016
		0 0 1.0692130134157444e-016
		0.51846926712011687 0 1.0692130134157444e-016
		-0.51846926712011687 0 1.0692130134157444e-016
		0 0 1.0692130134157444e-016
		0 0 -0.51846926712011765
		0 0 1.0692130134157444e-016
		0 0 0.51846926712011765
		;
createNode transform -n "HeadEndJntGDSphere" -p "HeadEndJntGDCtrl";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -0.070967135870683304 0.057295864620036593 -7.0967265748683557e-005 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode nurbsSurface -n "HeadEndJntGDSphereShape" -p "HeadEndJntGDSphere";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		1.3463383449309761e-017 -0.14029509685046371 -3.5517363963318992e-017
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		1.6156402231798285e-017 -0.14029509685046371 0.03966493644051676
		-0.028047345532422788 -0.14029509685046371 0.028047345532422809
		-0.039664936440516781 -0.14029509685046371 8.0237183801175256e-018
		-0.028047345532422812 -0.14029509685046371 -0.028047345532422788
		-2.5966610727655634e-017 -0.14029509685046371 -0.039664936440516781
		0.028047345532422781 -0.14029509685046371 -0.028047345532422843
		0.039664936440516767 -0.14029509685046371 -8.7277980817432816e-018
		0.028047345532422805 -0.14029509685046371 0.028047345532422788
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		2.7922768256789944e-017 -0.10993686880726354 0.12230416395823689
		-0.086482103702220592 -0.10993686880726354 0.086482103702220633
		-0.12230416395823689 -0.10993686880726354 2.260302112878565e-017
		-0.08648210370222062 -0.10993686880726354 -0.086482103702220564
		-5.817188639520274e-017 -0.10993686880726354 -0.12230416395823689
		0.086482103702220564 -0.10993686880726354 -0.086482103702220703
		0.12230416395823689 -0.10993686880726354 1.4739669636976042e-017
		0.086482103702220606 -0.10993686880726354 0.086482103702220606
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		2.8787282467893464e-017 -8.8165432480418316e-018 0.17205923432897727
		-0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		-0.1720592343289773 1.7190462811944855e-018 3.077362617322792e-017
		-0.12166425135978502 9.1688330811154709e-018 -0.12166425135978497
		-7.1342171341499651e-017 1.2254635810430807e-017 -0.17205923432897727
		0.12166425135978497 9.1688330811154817e-018 -0.12166425135978512
		0.17205923432897727 1.7190462811944851e-018 4.0701080376349579e-017
		0.12166425135978499 -5.7307405187265003e-018 0.12166425135978504
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		1.3002724973448907e-017 0.10993686880726358 0.1223041639582369
		-0.08648210370222062 0.10993686880726358 0.086482103702220633
		-0.12230416395823691 0.10993686880726358 2.1146361294754388e-017
		-0.086482103702220633 0.10993686880726358 -0.086482103702220606
		-4.3251843111861702e-017 0.10993686880726358 -0.1223041639582369
		0.086482103702220606 0.10993686880726358 -0.086482103702220703
		0.1223041639582369 0.10993686880726358 4.3123096369626888e-017
		0.08648210370222062 0.10993686880726358 0.086482103702220633
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		-2.8836972376450678e-018 0.14029509685046368 0.039664936440516795
		-0.028047345532422819 0.14029509685046368 0.028047345532422819
		-0.039664936440516795 0.14029509685046368 6.1648130400729996e-018
		-0.028047345532422809 0.14029509685046368 -0.028047345532422805
		-6.9265112582122905e-018 0.14029509685046368 -0.039664936440516781
		0.028047345532422812 0.14029509685046368 -0.028047345532422822
		0.039664936440516781 0.14029509685046368 2.7493495517098903e-017
		0.028047345532422805 0.14029509685046368 0.028047345532422836
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		2.4410888601003825e-017 0.14029509685046371 -2.356908086994654e-018
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "TongueGDGrp" -p "AllJntGDGrp";
	setAttr ".t" -type "double3" -9.8607613152626476e-032 0 -8.3266726846886741e-017 ;
	setAttr ".r" -type "double3" -1.0120463024388633e-014 -1.2910675921796718e-030 -1.4618446590783568e-014 ;
	setAttr ".rp" -type "double3" 6.7635013432755999e-016 5.2362393809648573 -0.037058767577549029 ;
	setAttr ".sp" -type "double3" 6.7635013432755999e-016 5.2362393809648573 -0.037058767577549029 ;
createNode transform -n "TongueGDCurve" -p "TongueGDGrp";
	setAttr ".rp" -type "double3" 6.7635013432755999e-016 5.2362393809648573 -0.037058767577549029 ;
	setAttr ".sp" -type "double3" 6.7635013432755999e-016 5.2362393809648573 -0.037058767577549029 ;
	setAttr ".it" no;
createNode nurbsCurve -n "TongueGDCurveShape" -p "TongueGDCurve";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr ".ipo" yes;
createNode nurbsCurve -n "TongueGDCurveShapeOriginal" -p "TongueGDCurve";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		6.7635013432756018e-016 5.2362393809648582 -0.037058767577549043
		6.7635013432756018e-016 5.2362393809648582 0.004818940688021767
		-3.1536381377182932e-015 5.2362393809648591 0.046696646747352029
		-3.1536381377182932e-015 5.2362393809648591 0.088574355012922851
		;
createNode transform -n "TongueGDCurveCtrlGrp" -p "TongueGDGrp";
	setAttr ".rp" -type "double3" 6.7635013432755999e-016 5.2362393809648573 -0.037058767577549029 ;
	setAttr ".sp" -type "double3" 6.7635013432755999e-016 5.2362393809648573 -0.037058767577549029 ;
createNode transform -n "TongueGDCurveCtrl1" -p "TongueGDCurveCtrlGrp";
	setAttr ".rp" -type "double3" 6.6613381477509392e-016 5.2362393809648582 -0.037058767577549057 ;
	setAttr ".sp" -type "double3" 6.6613381477509392e-016 5.2362393809648582 -0.037058767577549057 ;
createNode locator -n "TongueGDCurveCtrl1Shape" -p "TongueGDCurveCtrl1";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 17;
	setAttr ".lp" -type "double3" 6.7635013432756018e-016 5.2362393809648582 -0.037058767577549043 ;
	setAttr ".los" -type "double3" 0.02 0.02 0.02 ;
createNode transform -n "TongueGDCurveCtrl2" -p "TongueGDCurveCtrlGrp";
	setAttr ".rp" -type "double3" -2.7755575615628914e-016 5.2362393809648591 0.0048695813740058935 ;
	setAttr ".sp" -type "double3" -2.7755575615628914e-016 5.2362393809648591 0.0048695813740058935 ;
createNode locator -n "TongueGDCurveCtrlShape2" -p "TongueGDCurveCtrl2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".lp" -type "double3" -3.1866884180180398e-016 5.2362393809648591 0.0048695813740059039 ;
	setAttr ".los" -type "double3" 0.02 0.02 0.02 ;
createNode transform -n "TongueGDCurveCtrl3" -p "TongueGDCurveCtrlGrp";
	setAttr ".rp" -type "double3" -2.1649348980190553e-015 5.2362393809645802 0.046776938634318921 ;
	setAttr ".sp" -type "double3" -2.1649348980190553e-015 5.2362393809645802 0.046776938634318921 ;
createNode locator -n "TongueGDCurveCtrlShape3" -p "TongueGDCurveCtrl3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".lp" -type "double3" -2.1639402766325202e-015 5.2362393809645802 0.046776938634318935 ;
	setAttr ".los" -type "double3" 0.02 0.02 0.02 ;
createNode transform -n "TongueGDCurveCtrl4" -p "TongueGDCurveCtrlGrp";
	setAttr ".rp" -type "double3" -3.1086244689504383e-015 5.2362393809656194 0.088574355012918993 ;
	setAttr ".sp" -type "double3" -3.1086244689504383e-015 5.2362393809656194 0.088574355012918993 ;
createNode locator -n "TongueGDCurveCtrlShape4" -p "TongueGDCurveCtrl4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".lp" -type "double3" -3.1536381377180483e-015 5.2362393809656194 0.088574355012918937 ;
	setAttr ".los" -type "double3" 0.02 0.02 0.02 ;
createNode parentConstraint -n "TongueGDCurveCtrlGrp_parentConstraint1" -p "TongueGDCurveCtrlGrp";
	addAttr -ci true -k true -sn "w0" -ln "JawJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.1040146577276071 0.00038565852670924272 9.9113610489118907e-017 ;
	setAttr ".tg[0].tor" -type "double3" -18.954665561276475 89.999999999999957 0 ;
	setAttr ".lr" -type "double3" -1.0120463024388631e-014 -1.2910675921796718e-030 
		-1.4618446590783568e-014 ;
	setAttr ".rst" -type "double3" -1.9721522630525304e-031 0 -2.0816681711721685e-016 ;
	setAttr ".rsrr" -type "double3" -1.0120463024388633e-014 -1.2910675921796718e-030 
		-1.4618446590783568e-014 ;
	setAttr -k on ".w0";
createNode transform -n "TongueJntGDGrp" -p "TongueGDGrp";
createNode joint -n "Tongue1JntGD" -p "TongueJntGDGrp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".smd" 7;
	setAttr ".jo" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".radi" 0.1;
createNode joint -n "Tongue2JntGD" -p "TongueJntGDGrp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".smd" 7;
	setAttr ".jo" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".radi" 0.1;
createNode joint -n "Tongue3JntGD" -p "TongueJntGDGrp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".smd" 7;
	setAttr ".jo" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".radi" 0.1;
createNode joint -n "Tongue4JntGD" -p "TongueJntGDGrp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".smd" 7;
	setAttr ".jo" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".radi" 0.1;
createNode joint -n "Tongue5JntGD" -p "TongueJntGDGrp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".smd" 7;
	setAttr ".jo" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".radi" 0.1;
createNode joint -n "Tongue6JntGD" -p "TongueJntGDGrp";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".smd" 7;
	setAttr ".jo" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".radi" 0.1;
createNode transform -n "LeftFingerGDGrp" -p "AllJntGDGrp";
createNode parentConstraint -n "LeftFingerGDGrp_parentConstraint1" -p "LeftFingerGDGrp";
	addAttr -ci true -k true -sn "w0" -ln "LeftWristJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 179.92902328320949 -0.94270338006564969 0.0011581982274994872 ;
	setAttr ".rst" -type "double3" 2.2719546216707336 4.639790676896709 -0.16675952650879111 ;
	setAttr ".rsrr" -type "double3" 179.92902328320949 -0.9427033800656498 0.0011581982274994872 ;
	setAttr -k on ".w0";
createNode joint -n "LeftIndex1JntGD" -p "LeftFingerGDGrp";
	setAttr ".t" -type "double3" 0.20947849923911832 0.00026052361990469564 -0.20694469200393845 ;
	setAttr ".r" -type "double3" 0 -38.802922552545439 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273293183 -0.94270409142958556 -9.550608876516248e-006 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftIndex2JntGD" -p "LeftIndex1JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftIndex3JntGD" -p "LeftIndex2JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftIndex4JntGD" -p "LeftIndex3JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftIndex5JntGD" -p "LeftIndex4JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftMiddle1JntGD" -p "LeftFingerGDGrp";
	setAttr ".t" -type "double3" 0.20776026829367389 0.0001311686630698361 -0.10252327566180695 ;
	setAttr ".r" -type "double3" 0 -18.925083132812336 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273293183 -0.94270409142958556 -9.550608876516248e-006 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftMiddle2JntGD" -p "LeftMiddle1JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftMiddle3JntGD" -p "LeftMiddle2JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftMiddle4JntGD" -p "LeftMiddle3JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftMiddle5JntGD" -p "LeftMiddle4JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftRing1JntGD" -p "LeftFingerGDGrp";
	setAttr ".t" -type "double3" 0.2060174896078748 -3.4340969179424974e-008 0.0033899714627987632 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273293183 -0.94270409142958556 -9.550608876516248e-006 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftRing2JntGD" -p "LeftRing1JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftRing3JntGD" -p "LeftRing2JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftRing4JntGD" -p "LeftRing3JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftRing5JntGD" -p "LeftRing4JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftPinky1JntGD" -p "LeftFingerGDGrp";
	setAttr ".t" -type "double3" 0.20405476718587501 -0.00013249923423508392 0.11031855906621749 ;
	setAttr ".r" -type "double3" 0 27.454393307232209 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273293183 -0.94270409142958556 -9.550608876516248e-006 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftPinky2JntGD" -p "LeftPinky1JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftPinky3JntGD" -p "LeftPinky2JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftPinky4JntGD" -p "LeftPinky3JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftPinky5JntGD" -p "LeftPinky4JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftThumb1JntGD" -p "LeftFingerGDGrp";
	setAttr ".t" -type "double3" 0.042685850579377238 0.00028925159928760991 -0.23286358426484105 ;
	setAttr ".r" -type "double3" 0 -88.263032023026298 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273293183 -0.94270409142958556 -9.550608876516248e-006 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftThumb2JntGD" -p "LeftThumb1JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftThumb3JntGD" -p "LeftThumb2JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftThumb4JntGD" -p "LeftThumb3JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode joint -n "LeftThumb5JntGD" -p "LeftThumb4JntGD";
	setAttr ".t" -type "double3" 0.18820209878976699 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.1;
createNode scaleConstraint -n "LeftFingerGDGrp_scaleConstraint1" -p "LeftFingerGDGrp";
	addAttr -ci true -k true -sn "w0" -ln "LeftWristJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 3.0506895742178215 3.0506895742178211 3.0506895742178215 ;
	setAttr -k on ".w0";
createNode transform -n "RightFingerGDGrp" -p "AllJntGDGrp";
createNode parentConstraint -n "RightFingerGDGrp_parentConstraint1" -p "RightFingerGDGrp";
	addAttr -ci true -k true -sn "w0" -ln "RightWristJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -0.070976716777359505 360.94270338006356 -0.0011581982272645601 ;
	setAttr ".rst" -type "double3" -2.271949986126514 4.6397882142671119 -0.16675915467737598 ;
	setAttr ".rsrr" -type "double3" -0.070976716777359505 0.94270338006363197 -0.0011581982272646123 ;
	setAttr -k on ".w0";
createNode joint -n "RightIndex1JntGD" -p "RightFingerGDGrp";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273294499 -0.94270409142756784 -9.5506088925508646e-006 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightIndex2JntGD" -p "RightIndex1JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightIndex3JntGD" -p "RightIndex2JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightIndex4JntGD" -p "RightIndex3JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightIndex5JntGD" -p "RightIndex4JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode parentConstraint -n "RightIndex5JntGD_parentConstraint1" -p "RightIndex5JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightIndex5JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.8992910102433314e-006 -6.7689670757431486e-007 
		-3.0657400973410631e-007 ;
	setAttr ".tg[0].tor" -type "double3" -3.3670440179448507e-014 -38.802922552545439 
		-180 ;
	setAttr ".lr" -type "double3" 2.9694142210916405e-014 360 -1.487340499276582e-014 ;
	setAttr ".rst" -type "double3" -0.18820401993432423 8.8817841970012523e-016 2.3580602355188773e-006 ;
	setAttr ".rsrr" -type "double3" 2.9694142210916405e-014 360 -1.487340499276582e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightIndex4JntGD_parentConstraint1" -p "RightIndex4JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightIndex4JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.0755317423338795e-006 -6.768967049097796e-007 
		3.272036140367085e-007 ;
	setAttr ".tg[0].tor" -type "double3" -3.4180598363985608e-014 -38.802922552545439 
		-180 ;
	setAttr ".lr" -type "double3" 2.9694142210916405e-014 360 -1.487340499276582e-014 ;
	setAttr ".rst" -type "double3" -0.18820464657788749 0 1.5787542337886151e-006 ;
	setAttr ".rsrr" -type "double3" 2.9694142210916405e-014 360 -1.4873404992765817e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightIndex3JntGD_parentConstraint1" -p "RightIndex3JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightIndex3JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.0503544949110903e-006 -6.768967049097796e-007 
		-3.9018761277542779e-008 ;
	setAttr ".tg[0].tor" -type "double3" -3.3670440179448494e-014 -38.802922552545418 
		-180 ;
	setAttr ".lr" -type "double3" 2.9694142210916405e-014 360 -1.4873404992765804e-014 ;
	setAttr ".rst" -type "double3" -0.18819685351786708 -8.8817841970012523e-016 -4.6876813981633347e-006 ;
	setAttr ".rsrr" -type "double3" 2.9694142210916405e-014 360 -1.4873404992765804e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightIndex2JntGD_parentConstraint1" -p "RightIndex2JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightIndex2JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.9748227525772108e-006 -6.768967049097796e-007 
		-4.0524113792406169e-007 ;
	setAttr ".tg[0].tor" -type "double3" -3.3925519271717054e-014 -38.802922552545404 
		-180 ;
	setAttr ".lr" -type "double3" 2.9694142210916405e-014 360 -1.4873404992765798e-014 ;
	setAttr ".rst" -type "double3" -0.18820414526303697 -8.8817841970012523e-016 2.2021990349063714e-006 ;
	setAttr ".rsrr" -type "double3" 2.9694142210916405e-014 360 -1.4873404992765798e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightIndex1JntGD_parentConstraint1" -p "RightIndex1JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightIndex1JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 -6.7689670579795802e-007 
		2.8536486132435535e-008 ;
	setAttr ".tg[0].tor" -type "double3" -3.4037116374584531e-014 -38.802922552545404 
		-179.99999999999997 ;
	setAttr ".lr" -type "double3" 3.3933151150672535e-014 321.19707744745455 1.1248611946023731e-014 ;
	setAttr ".rst" -type "double3" -0.20948312854391959 -0.00025873746235927086 0.20694427470076504 ;
	setAttr ".rsrr" -type "double3" 3.3933151150672535e-014 321.19707744745455 1.1248611946023731e-014 ;
	setAttr -k on ".w0";
createNode joint -n "RightMiddle1JntGD" -p "RightFingerGDGrp";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273294499 -0.94270409142756784 -9.5506088925508646e-006 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightMiddle2JntGD" -p "RightMiddle1JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightMiddle3JntGD" -p "RightMiddle2JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightMiddle4JntGD" -p "RightMiddle3JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightMiddle5JntGD" -p "RightMiddle4JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode parentConstraint -n "RightMiddle5JntGD_parentConstraint1" -p "RightMiddle5JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightMiddle5JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.1799534837849706e-006 -6.768967049097796e-007 
		3.3377601299511284e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.794919763850868e-014 -18.925083132812343 
		180 ;
	setAttr ".lr" -type "double3" 2.8430669229979155e-014 360 -1.7165584897010492e-014 ;
	setAttr ".rst" -type "double3" -0.18819405408164913 0 -2.8833126728411429e-006 ;
	setAttr ".rsrr" -type "double3" 2.8430669229979155e-014 360 -1.7165584897010492e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightMiddle4JntGD_parentConstraint1" -p "RightMiddle4JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightMiddle4JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.36503488643325e-006 -6.7689670579795802e-007 
		2.1547803316646075e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.794919763850868e-014 -18.925083132812325 
		-180 ;
	setAttr ".lr" -type "double3" 3.2982149880558639e-014 360 -3.8907643178846089e-015 ;
	setAttr ".rst" -type "double3" -0.18820354594943067 0 2.6540865560864546e-007 ;
	setAttr ".rsrr" -type "double3" 3.2982149880558639e-014 360 -3.8907643178846081e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightMiddle3JntGD_parentConstraint1" -p "RightMiddle3JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightMiddle3JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.9100232588064046e-006 -6.768967049097796e-007 
		-2.8199457005606554e-009 ;
	setAttr ".tg[0].tor" -type "double3" -2.802841220535889e-014 -18.925083132812318 
		-180 ;
	setAttr ".lr" -type "double3" 3.2982149880558639e-014 360 -3.8907643178846042e-015 ;
	setAttr ".rst" -type "double3" -0.18820347427215367 0 4.7446216067115188e-007 ;
	setAttr ".rsrr" -type "double3" 3.2982149880558639e-014 360 -3.8907643178846042e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightMiddle2JntGD_parentConstraint1" -p "RightMiddle2JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightMiddle2JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4550116307354699e-006 -6.768967049097796e-007 
		-1.1792553400251891e-010 ;
	setAttr ".tg[0].tor" -type "double3" -2.8054269810082004e-014 -18.925083132812304 
		180 ;
	setAttr ".lr" -type "double3" 2.8430669229979174e-014 360 -1.7165584897010473e-014 ;
	setAttr ".rst" -type "double3" -0.18820348789408081 -8.8817841970012523e-016 4.3473253530379452e-007 ;
	setAttr ".rsrr" -type "double3" 2.8430669229979174e-014 360 -1.7165584897010477e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightMiddle1JntGD_parentConstraint1" -p "RightMiddle1JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightMiddle1JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 -6.7689670579795802e-007 
		-3.9415905116191308e-008 ;
	setAttr ".tg[0].tor" -type "double3" -2.8080537852975342e-014 -18.92508313281229 
		-179.99999999999997 ;
	setAttr ".lr" -type "double3" 2.7959656534222809e-014 341.07491686718765 2.3444175726782072e-014 ;
	setAttr ".rst" -type "double3" -0.2077648964804899 -0.00012938242138194056 0.10252279041549178 ;
	setAttr ".rsrr" -type "double3" 2.7959656534222809e-014 341.07491686718765 2.3444175726782072e-014 ;
	setAttr -k on ".w0";
createNode joint -n "RightRing1JntGD" -p "RightFingerGDGrp";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273294499 -0.94270409142756784 -9.5506088925508646e-006 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightRing2JntGD" -p "RightRing1JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightRing3JntGD" -p "RightRing2JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightRing4JntGD" -p "RightRing3JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightRing5JntGD" -p "RightRing4JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode parentConstraint -n "RightRing5JntGD_parentConstraint1" -p "RightRing5JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightRing5JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.6048409321456347e-006 -6.7689670757431486e-007 
		-4.7349120993467331e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.6637145457256948e-014 -4.8761489492743545e-014 
		-180 ;
	setAttr ".lr" -type "double3" 3.2461146750243012e-014 360 7.0167092985348791e-015 ;
	setAttr ".rst" -type "double3" -0.18820000000000014 8.8817841970012523e-016 2.7755575615628914e-017 ;
	setAttr ".rsrr" -type "double3" 3.2461146750243012e-014 360 7.0167092985348791e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightRing4JntGD_parentConstraint1" -p "RightRing4JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightRing4JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.7036306990145818e-006 -6.7689670757431486e-007 
		-4.7349121001794003e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.6637145457256954e-014 -3.4846562761340658e-014 
		-180 ;
	setAttr ".lr" -type "double3" 3.2461146750243012e-014 360 7.0167092985348791e-015 ;
	setAttr ".rst" -type "double3" -0.18820999999999977 0 0 ;
	setAttr ".rsrr" -type "double3" 3.2461146750243012e-014 360 7.0167092985348791e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightRing3JntGD_parentConstraint1" -p "RightRing3JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightRing3JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.1975795337378941e-006 -6.7689670757431486e-007 
		-4.7349121012896234e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.6637145457256954e-014 -2.0534066694754825e-014 
		-180 ;
	setAttr ".lr" -type "double3" 3.2461146750243012e-014 360 7.0167092985348791e-015 ;
	setAttr ".rst" -type "double3" -0.18820000000000014 -8.8817841970012523e-016 2.7755575615628914e-017 ;
	setAttr ".rsrr" -type "double3" 3.2461146750243012e-014 360 7.0167092985348791e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightRing2JntGD_parentConstraint1" -p "RightRing2JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightRing2JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.0987897664248578e-006 -6.7689670846249328e-007 
		-4.7349121018447349e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.6637145457256954e-014 -7.8118479689007559e-015 
		-180 ;
	setAttr ".lr" -type "double3" 3.2461146750243012e-014 360 7.0167092985348791e-015 ;
	setAttr ".rst" -type "double3" -0.1881999999999997 0 -2.7755575615628914e-017 ;
	setAttr ".rsrr" -type "double3" 3.2461146750243012e-014 360 7.0167092985348791e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightRing1JntGD_parentConstraint1" -p "RightRing1JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightRing1JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 -6.7689670757431486e-007 
		-4.7349121018447349e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.6537753123461213e-014 5.83834463390587e-014 
		-180 ;
	setAttr ".lr" -type "double3" 2.6457125763817921e-014 359.99999999999994 7.0693768040476046e-015 ;
	setAttr ".rst" -type "double3" -0.20602211065305509 1.8211202812423721e-006 -0.0033908907253331899 ;
	setAttr ".rsrr" -type "double3" 2.6457125763817921e-014 359.99999999999994 7.0693768040476046e-015 ;
	setAttr -k on ".w0";
createNode joint -n "RightPinky1JntGD" -p "RightFingerGDGrp";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273294499 -0.94270409142756784 -9.5506088925508646e-006 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightPinky2JntGD" -p "RightPinky1JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightPinky3JntGD" -p "RightPinky2JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightPinky4JntGD" -p "RightPinky3JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightPinky5JntGD" -p "RightPinky4JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode parentConstraint -n "RightPinky5JntGD_parentConstraint1" -p "RightPinky5JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightPinky5JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.4728315324296091e-006 -6.7689670579795802e-007 
		-3.8231929999632541e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.8673727139382026e-014 27.454393307232241 
		180 ;
	setAttr ".lr" -type "double3" 3.2040311283615289e-014 360 8.7394914365764282e-015 ;
	setAttr ".rst" -type "double3" -0.18819679297535385 -1.7763568394002505e-015 3.7137611726967279e-006 ;
	setAttr ".rsrr" -type "double3" 3.2040311283615289e-014 360 8.7394914365764282e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightPinky4JntGD_parentConstraint1" -p "RightPinky4JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightPinky4JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.947633401946149e-006 -6.7689670757431486e-007 
		4.6698551914303721e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.9569781112487724e-014 27.454393307232248 
		-180 ;
	setAttr ".lr" -type "double3" 2.557031004107919e-014 360 2.1192439739776142e-014 ;
	setAttr ".rst" -type "double3" -0.18820520571391564 0 -1.7840411049574456e-006 ;
	setAttr ".rsrr" -type "double3" 2.5570310041079196e-014 360 2.1192439739776142e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightPinky3JntGD_parentConstraint1" -p "RightPinky3JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightPinky3JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.6809833403594894e-007 -6.7689670757431486e-007 
		3.1629033953040064e-007 ;
	setAttr ".tg[0].tor" -type "double3" -2.956978111248773e-014 27.454393307232259 
		-180 ;
	setAttr ".lr" -type "double3" 2.557031004107919e-014 360 2.1192439739776142e-014 ;
	setAttr ".rst" -type "double3" -0.18820520571391564 -8.8817841970012523e-016 -1.7840411048464233e-006 ;
	setAttr ".rsrr" -type "double3" 2.5570310041079196e-014 360 2.1192439739776142e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightPinky2JntGD_parentConstraint1" -p "RightPinky2JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightPinky2JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.2114367320978943e-006 -6.7689670668613644e-007 
		1.655951587520299e-007 ;
	setAttr ".tg[0].tor" -type "double3" -3.0017808099040576e-014 27.454393307232269 
		179.99999999999997 ;
	setAttr ".lr" -type "double3" 4.3771276250523527e-014 360 -1.3839345074170937e-014 ;
	setAttr ".rst" -type "double3" -0.18819633193293539 8.8817841970012523e-016 2.8263830748054275e-006 ;
	setAttr ".rsrr" -type "double3" 4.3771276250523527e-014 360 -1.3839345074170937e-014 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightPinky1JntGD_parentConstraint1" -p "RightPinky1JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightPinky1JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.2090282013896854e-006 -6.768967049097796e-007 
		1.4899978251214918e-008 ;
	setAttr ".tg[0].tor" -type "double3" -2.9919802195732134e-014 27.454393307232277 
		180 ;
	setAttr ".lr" -type "double3" 2.9803687043098338e-014 27.45439330723222 6.7770642550916804e-015 ;
	setAttr ".rst" -type "double3" -0.20406260486018413 0.00013428540913285048 -0.11031904280073321 ;
	setAttr ".rsrr" -type "double3" 2.9803687043098338e-014 27.45439330723222 6.7770642550916804e-015 ;
	setAttr -k on ".w0";
createNode joint -n "RightThumb1JntGD" -p "RightFingerGDGrp";
	setAttr -l on ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -179.92903273294499 -0.94270409142756784 -9.5506088925508646e-006 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightThumb2JntGD" -p "RightThumb1JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightThumb3JntGD" -p "RightThumb2JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightThumb4JntGD" -p "RightThumb3JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode joint -n "RightThumb5JntGD" -p "RightThumb4JntGD";
	setAttr -l on ".v";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -l on ".radi" 0.1;
createNode parentConstraint -n "RightThumb5JntGD_parentConstraint1" -p "RightThumb5JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightThumb5JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.9961234878351775e-006 -6.7689670668613644e-007 
		-4.9726605833022575e-007 ;
	setAttr ".tg[0].tor" -type "double3" -8.9190610751289685e-013 -88.26303202302627 
		-179.99999999999915 ;
	setAttr ".lr" -type "double3" 8.4727803886254992e-013 360 -6.7822771721383344e-015 ;
	setAttr ".rst" -type "double3" -0.18820133688101459 8.8817841970012523e-016 -4.6042292867198853e-006 ;
	setAttr ".rsrr" -type "double3" 8.7271078487561166e-013 360 -6.0110265844738637e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightThumb4JntGD_parentConstraint1" -p "RightThumb4JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightThumb4JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6290845491772075e-006 -6.768967049097796e-007 
		1.2473304389359896e-007 ;
	setAttr ".tg[0].tor" -type "double3" -8.6567357493898102e-013 -88.263032023026256 
		-179.99999999999915 ;
	setAttr ".lr" -type "double3" 8.4727803886254992e-013 360 -6.7822771721382453e-015 ;
	setAttr ".rst" -type "double3" -0.18820263953319327 8.8817841970012523e-016 5.3608646575220575e-006 ;
	setAttr ".rsrr" -type "double3" 8.7271078487561166e-013 360 -6.0110265844735955e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightThumb3JntGD_parentConstraint1" -p "RightThumb3JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightThumb3JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7457074143200089e-006 -6.7689670402160118e-007 
		-2.5326785396684315e-007 ;
	setAttr ".tg[0].tor" -type "double3" -8.6567357493897395e-013 -88.263032023026241 
		-179.99999999999915 ;
	setAttr ".lr" -type "double3" 8.4727803886254992e-013 360 -6.7822771721381112e-015 ;
	setAttr ".rst" -type "double3" -0.18820133688101437 8.8817841970012523e-016 -4.6042292858317069e-006 ;
	setAttr ".rsrr" -type "double3" 8.7271078487561166e-013 360 -6.011026584473463e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightThumb2JntGD_parentConstraint1" -p "RightThumb2JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightThumb2JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.8795006218041976e-006 -6.7689670402160118e-007 
		3.6873124814595926e-007 ;
	setAttr ".tg[0].tor" -type "double3" -8.6567357493896699e-013 -88.263032023026227 
		-179.99999999999915 ;
	setAttr ".lr" -type "double3" 8.4727803886254992e-013 360 -6.7822771721378406e-015 ;
	setAttr ".rst" -type "double3" -0.18820263953319336 -8.8817841970012523e-016 5.3608646575220575e-006 ;
	setAttr ".rsrr" -type "double3" 8.7271078487561166e-013 360 -6.0110265844732823e-015 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "RightThumb1JntGD_parentConstraint1" -p "RightThumb1JntGD";
	addAttr -ci true -k true -sn "w0" -ln "RightThumb1JntGDLocW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.4952913425811971e-006 -6.768967049097796e-007 
		-9.2696497699940039e-009 ;
	setAttr ".tg[0].tor" -type "double3" -8.7633054129711047e-013 -88.263032023026227 
		-179.99999999999915 ;
	setAttr ".lr" -type "double3" 8.7249445081192351e-013 271.73696797697369 -2.5360822419303315e-014 ;
	setAttr ".rst" -type "double3" -0.042686984443923937 -0.00028746539549029393 0.23286318666712003 ;
	setAttr ".rsrr" -type "double3" 8.7243345788515293e-013 271.73696797697369 2.5589421383729307e-014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "RightFingerGDGrp_scaleConstraint1" -p "RightFingerGDGrp";
	addAttr -ci true -k true -sn "w0" -ln "RightWristJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 3.0506895742178219 3.0506895742178219 3.0506895742178219 ;
	setAttr -k on ".w0";
createNode transform -n "MirrorLocGrp" -p "AllJntGDGrp";
	setAttr -l on -k off ".v" no;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "LeftClavicleJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftClavicleJntGDLocShape" -p "LeftClavicleJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftClavicleJntGDLoc_parentConstraint1" -p "LeftClavicleJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftClavicleJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -179.92903289961302 0.057295908570400074 -9.5493209541103106e-006 ;
	setAttr ".lr" -type "double3" 2.8202581853254691e-015 -1.4930322517089354e-037 6.0664266232748336e-021 ;
	setAttr ".rst" -type "double3" 0.18277178526715909 4.7823191767933713 -0.17168001866716526 ;
	setAttr ".rsrr" -type "double3" 2.8202581853254691e-015 -1.4930322517089354e-037 
		6.0664266232748336e-021 ;
	setAttr -k on ".w0";
createNode transform -n "LeftShoulderJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftShoulderJntGDLocShape" -p "LeftShoulderJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftShoulderJntGDLoc_parentConstraint1" -p "LeftShoulderJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftShoulderJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -179.92903289961302 0.057295908570400074 -9.5493209541102953e-006 ;
	setAttr ".lr" -type "double3" 2.8202581912497144e-015 1.2424041724466859e-017 3.0577300579229787e-034 ;
	setAttr ".rst" -type "double3" 0.49251636929816311 4.6397724625254124 -0.18170445651605999 ;
	setAttr ".rsrr" -type "double3" 2.8202581912497144e-015 1.2424041724466859e-017 
		3.0577300579229787e-034 ;
	setAttr -k on ".w0";
createNode transform -n "LeftElbowJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftElbowJntGDLocShape" -p "LeftElbowJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftElbowJntGDLoc_parentConstraint1" -p "LeftElbowJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftElbowJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -179.92903273293183 -0.94270409142958533 -9.5506089515156623e-006 ;
	setAttr ".lr" -type "double3" 2.2613753890071374e-015 -7.2059442001907923e-016 7.4943645676397689e-014 ;
	setAttr ".rst" -type "double3" 1.3137995401795799 4.6397713083930121 -0.18252574101109348 ;
	setAttr ".rsrr" -type "double3" 2.2613753890071374e-015 -7.2059442001907923e-016 
		7.4943645676397689e-014 ;
	setAttr -k on ".w0";
createNode transform -n "LeftWristJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftWristJntGDLocShape" -p "LeftWristJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftWristJntGDLoc_parentConstraint1" -p "LeftWristJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftWristJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-015 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -179.92903273293183 -0.94270409142958655 -9.5506089055608011e-006 ;
	setAttr ".lr" -type "double3" 5.8492811572046951e-015 5.9635400277440782e-016 2.9039838651377671e-014 ;
	setAttr ".rst" -type "double3" 2.2719546216707331 4.6397906768967072 -0.16675952650879111 ;
	setAttr ".rsrr" -type "double3" 5.8492811572046951e-015 5.9635400277440782e-016 
		2.9039838651377671e-014 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThumb1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftThumb1JntGDLocShape" -p "LeftThumb1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftThumb1JntGDLoc_parentConstraint1" -p "LeftThumb1JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftThumb1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 1.0493013029563526e-013 88.263032023026298 
		-4.8039760553943861e-013 ;
	setAttr ".lr" -type "double3" 6.3242618876172594e-015 -2.6784290929382445e-035 4.8531412986198652e-019 ;
	setAttr ".rst" -type "double3" 2.3108034952913421 4.639790676896709 0.066775009269648578 ;
	setAttr ".rsrr" -type "double3" 6.3242618876172594e-015 -2.6784290929382445e-035 
		4.8531412986198652e-019 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThumb2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftThumb2JntGDLocShape" -p "LeftThumb2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftThumb2JntGDLoc_parentConstraint1" -p "LeftThumb2JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftThumb2JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -1.0493013029563524e-013 88.263032023026298 
		6.4562347318063924e-015 ;
	setAttr ".rst" -type "double3" 2.3165081204993787 4.639790676896709 0.25489063126875061 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThumb3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftThumb3JntGDLocShape" -p "LeftThumb3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftThumb3JntGDLoc_parentConstraint1" -p "LeftThumb3JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftThumb3JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -8.8817841970012523e-016 4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 88.263032023026298 4.9284891537935214e-013 ;
	setAttr ".rst" -type "double3" 2.3222127457074149 4.6397906768967081 0.44300625326785265 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThumb4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftThumb4JntGDLocShape" -p "LeftThumb4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftThumb4JntGDLoc_parentConstraint1" -p "LeftThumb4JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftThumb4JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.1102230246251565e-016 -8.8817841970012523e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.0493013029563524e-013 88.263032023026298 
		-4.7993644591573973e-013 ;
	setAttr ".rst" -type "double3" 2.3279173709154519 4.6397906768967081 0.63112187526695462 ;
	setAttr -k on ".w0";
createNode transform -n "LeftThumb5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftThumb5JntGDLocShape" -p "LeftThumb5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftThumb5JntGDLoc_parentConstraint1" -p "LeftThumb5JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftThumb5JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1102230246251565e-016 0 4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 88.263032023026298 -4.7993644591573983e-013 ;
	setAttr ".rst" -type "double3" 2.3336219961234881 4.639790676896709 0.81923749726605688 ;
	setAttr -k on ".w0";
createNode transform -n "LeftIndex1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftIndex1JntGDLocShape" -p "LeftIndex1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftIndex1JntGDLoc_parentConstraint1" -p "LeftIndex1JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftIndex1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -4.0812654762967913e-015 38.802922552545446 
		-3.7872435013724505e-014 ;
	setAttr ".lr" -type "double3" 6.3241974318343881e-015 6.361109362927032e-015 5.8237695583473517e-019 ;
	setAttr ".rst" -type "double3" 2.478 4.639790676896709 0.043603771463512471 ;
	setAttr ".rsrr" -type "double3" 6.3241974318343881e-015 6.361109362927032e-015 5.8237695583473517e-019 ;
	setAttr -k on ".w0";
createNode transform -n "LeftIndex2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftIndex2JntGDLocShape" -p "LeftIndex2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftIndex2JntGDLoc_parentConstraint1" -p "LeftIndex2JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftIndex2JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -8.1625309525935794e-015 38.802922552545446 
		0 ;
	setAttr ".lr" -type "double3" 0 6.3611093629270335e-015 0 ;
	setAttr ".rst" -type "double3" 2.6246670251772484 4.639790676896709 0.16153940524113655 ;
	setAttr ".rsrr" -type "double3" 0 6.3611093629270335e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftIndex3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftIndex3JntGDLocShape" -p "LeftIndex3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftIndex3JntGDLoc_parentConstraint1" -p "LeftIndex3JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftIndex3JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -4.0812654762967897e-015 38.802922552545454 
		0 ;
	setAttr ".lr" -type "double3" 0 6.3611093629270335e-015 0 ;
	setAttr ".rst" -type "double3" 2.7713340503544956 4.639790676896709 0.27947503901876009 ;
	setAttr ".rsrr" -type "double3" 0 6.3611093629270335e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftIndex4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftIndex4JntGDLocShape" -p "LeftIndex4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftIndex4JntGDLoc_parentConstraint1" -p "LeftIndex4JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftIndex4JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 0 2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 38.802922552545461 1.3003088101335758e-014 ;
	setAttr ".lr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr ".rst" -type "double3" 2.9180010755317434 4.639790676896709 0.39741067279638465 ;
	setAttr ".rsrr" -type "double3" 0 1.2722218725854067e-014 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftIndex5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftIndex5JntGDLocShape" -p "LeftIndex5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftIndex5JntGDLoc_parentConstraint1" -p "LeftIndex5JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftIndex5JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 8.8817841970012523e-016 -2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -8.1625309525935794e-015 38.802922552545454 
		-5.9331294055265011e-015 ;
	setAttr ".lr" -type "double3" 0 6.3611093629270335e-015 0 ;
	setAttr ".rst" -type "double3" 3.0646681007089911 4.6397906768967099 0.51534630657400793 ;
	setAttr ".rsrr" -type "double3" 0 6.3611093629270335e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftMiddle1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftMiddle1JntGDLocShape" -p "LeftMiddle1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftMiddle1JntGDLoc_parentConstraint1" -p "LeftMiddle1JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftMiddle1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -6.7246189806938191e-015 18.92508313281234 
		-1.8130265301412311e-014 ;
	setAttr ".lr" -type "double3" 6.3242300388774886e-015 3.180554681463516e-015 4.8531412986216217e-019 ;
	setAttr ".rst" -type "double3" 2.478 4.639790676896709 -0.06083186058409628 ;
	setAttr ".rsrr" -type "double3" 6.3242300388774886e-015 3.180554681463516e-015 4.8531412986216217e-019 ;
	setAttr -k on ".w0";
createNode transform -n "LeftMiddle2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftMiddle2JntGDLocShape" -p "LeftMiddle2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftMiddle2JntGDLoc_parentConstraint1" -p "LeftMiddle2JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftMiddle2JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 -8.8817841970012523e-016 
		2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -5.0434642355203643e-015 18.92508313281234 
		-2.5298530752593941e-015 ;
	setAttr ".rst" -type "double3" 2.6560285449883709 4.6397906768967081 0.00020802111792419747 ;
	setAttr -k on ".w0";
createNode transform -n "LeftMiddle3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftMiddle3JntGDLocShape" -p "LeftMiddle3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftMiddle3JntGDLoc_parentConstraint1" -p "LeftMiddle3JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftMiddle3JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -3.3623094903469104e-015 18.925083132812336 
		-1.9395191839042003e-014 ;
	setAttr ".lr" -type "double3" 0 -3.1805546814635168e-015 0 ;
	setAttr ".rst" -type "double3" 2.8340570899767421 4.639790676896709 0.061247902819944501 ;
	setAttr ".rsrr" -type "double3" 0 -3.1805546814635168e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftMiddle4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftMiddle4JntGDLocShape" -p "LeftMiddle4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftMiddle4JntGDLoc_parentConstraint1" -p "LeftMiddle4JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftMiddle4JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 0 1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -6.7246189806938191e-015 18.925083132812336 
		-2.5298530752593938e-015 ;
	setAttr ".lr" -type "double3" 0 -3.1805546814635168e-015 0 ;
	setAttr ".rst" -type "double3" 3.0120856349651142 4.639790676896709 0.12228778452196541 ;
	setAttr ".rsrr" -type "double3" 0 -3.1805546814635168e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftMiddle5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftMiddle5JntGDLocShape" -p "LeftMiddle5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftMiddle5JntGDLoc_parentConstraint1" -p "LeftMiddle5JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftMiddle5JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -5.0434642355203651e-015 18.925083132812336 
		-1.2649265376296967e-015 ;
	setAttr ".lr" -type "double3" 0 -3.1805546814635168e-015 0 ;
	setAttr ".rst" -type "double3" 3.1901141799534849 4.639790676896709 0.18332766622398566 ;
	setAttr ".rsrr" -type "double3" 0 -3.1805546814635168e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftRing1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftRing1JntGDLocShape" -p "LeftRing1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftRing1JntGDLoc_parentConstraint1" -p "LeftRing1JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftRing1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 0 -2.7755575615628914e-017 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".lr" -type "double3" 6.324261887617261e-015 -2.6784290929382461e-035 4.8531412986198662e-019 ;
	setAttr ".rst" -type "double3" 2.4780000000000006 4.6397906768967099 -0.16675952650879119 ;
	setAttr ".rsrr" -type "double3" 6.324261887617261e-015 -2.6784290929382461e-035 
		4.8531412986198662e-019 ;
	setAttr -k on ".w0";
createNode transform -n "LeftRing2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftRing2JntGDLocShape" -p "LeftRing2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftRing2JntGDLoc_parentConstraint1" -p "LeftRing2JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftRing2JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 2.6662020987897668 4.6397906768967099 -0.16675952650879117 ;
	setAttr -k on ".w0";
createNode transform -n "LeftRing3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftRing3JntGDLocShape" -p "LeftRing3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftRing3JntGDLoc_parentConstraint1" -p "LeftRing3JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftRing3JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -5.9635400277440935e-015 5.3038779271617681e-016 
		1.4757107958414609e-014 ;
	setAttr ".rst" -type "double3" 2.8544041975795342 4.6397906768967099 -0.16675952650879117 ;
	setAttr -k on ".w0";
createNode transform -n "LeftRing4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftRing4JntGDLocShape" -p "LeftRing4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftRing4JntGDLoc_parentConstraint1" -p "LeftRing4JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftRing4JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -2.7755575615628914e-017 ;
	setAttr ".tg[0].tor" -type "double3" -6.7586786981099735e-015 3.975693351829396e-016 
		-4.4052853873117794e-032 ;
	setAttr ".rst" -type "double3" 3.0426062963693012 4.6397906768967099 -0.16675952650879119 ;
	setAttr -k on ".w0";
createNode transform -n "LeftRing5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftRing5JntGDLocShape" -p "LeftRing5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftRing5JntGDLoc_parentConstraint1" -p "LeftRing5JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftRing5JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -8.8817841970012523e-016 0 ;
	setAttr ".tg[0].tor" -type "double3" -6.3611093629270335e-015 0 0 ;
	setAttr ".rst" -type "double3" 3.2308083951590683 4.639790676896709 -0.16675952650879117 ;
	setAttr -k on ".w0";
createNode transform -n "LeftPinky1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftPinky1JntGDLocShape" -p "LeftPinky1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftPinky1JntGDLoc_parentConstraint1" -p "LeftPinky1JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftPinky1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -8.8817841970012523e-016 1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -7.1684317848455064e-015 -27.454393307232209 
		-2.942645261101871e-014 ;
	setAttr ".lr" -type "double3" 6.3242618876172594e-015 -2.6784290929382445e-035 4.8531412986198652e-019 ;
	setAttr ".rst" -type "double3" 2.4777967909717993 4.6397906768967081 -0.27370601489997959 ;
	setAttr ".rsrr" -type "double3" 6.324230038877487e-015 3.1805546814635152e-015 4.8531412986216207e-019 ;
	setAttr -k on ".w0";
createNode transform -n "LeftPinky2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftPinky2JntGDLocShape" -p "LeftPinky2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftPinky2JntGDLoc_parentConstraint1" -p "LeftPinky2JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftPinky2JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -8.960539731056887e-015 -27.454393307232209 
		-8.9628707770931007e-015 ;
	setAttr ".lr" -type "double3" 0 3.180554681463516e-015 0 ;
	setAttr ".rst" -type "double3" 2.644803211436733 4.639790676896709 -0.36047516559516013 ;
	setAttr ".rsrr" -type "double3" 0 6.361109362927032e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftPinky3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftPinky3JntGDLocShape" -p "LeftPinky3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftPinky3JntGDLoc_parentConstraint1" -p "LeftPinky3JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftPinky3JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 0 -1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -5.3763238386341322e-015 -27.454393307232202 
		7.6671407045550068e-015 ;
	setAttr ".lr" -type "double3" 0 9.5416640443905487e-015 0 ;
	setAttr ".rst" -type "double3" 2.8118096319016672 4.639790676896709 -0.44724431629034084 ;
	setAttr ".rsrr" -type "double3" 0 9.5416640443905487e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftPinky4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftPinky4JntGDLocShape" -p "LeftPinky4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftPinky4JntGDLoc_parentConstraint1" -p "LeftPinky4JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftPinky4JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-016 0 -2.2204460492503131e-016 ;
	setAttr ".tg[0].tor" -type "double3" -8.960539731056887e-015 -27.454393307232209 
		-8.9628707770931007e-015 ;
	setAttr ".lr" -type "double3" 0 3.180554681463516e-015 0 ;
	setAttr ".rst" -type "double3" 2.9788160523666001 4.639790676896709 -0.53401346698552099 ;
	setAttr ".rsrr" -type "double3" 0 6.361109362927032e-015 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftPinky5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftPinky5JntGDLocShape" -p "LeftPinky5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftPinky5JntGDLoc_parentConstraint1" -p "LeftPinky5JntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftPinky5JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.4408920985006262e-016 0 -1.1102230246251565e-016 ;
	setAttr ".tg[0].tor" -type "double3" -5.3763238386341306e-015 -27.454393307232209 
		3.833570352277505e-015 ;
	setAttr ".rst" -type "double3" 3.1458224728315347 4.639790676896709 -0.62078261768070175 ;
	setAttr -k on ".w0";
createNode transform -n "RightClavicleJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightClavicleJntGDLocShape" -p "RightClavicleJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightShoulderJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightShoulderJntGDLocShape" -p "RightShoulderJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightElbowJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightElbowJntGDLocShape" -p "RightElbowJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightWristJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightWristJntGDLocShape" -p "RightWristJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightThumb1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightThumb1JntGDLocShape" -p "RightThumb1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightThumb2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightThumb2JntGDLocShape" -p "RightThumb2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightThumb3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightThumb3JntGDLocShape" -p "RightThumb3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightThumb4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightThumb4JntGDLocShape" -p "RightThumb4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightThumb5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightThumb5JntGDLocShape" -p "RightThumb5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightIndex1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightIndex1JntGDLocShape" -p "RightIndex1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightIndex2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightIndex2JntGDLocShape" -p "RightIndex2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightIndex3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightIndex3JntGDLocShape" -p "RightIndex3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightIndex4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightIndex4JntGDLocShape" -p "RightIndex4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightIndex5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightIndex5JntGDLocShape" -p "RightIndex5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightMiddle1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightMiddle1JntGDLocShape" -p "RightMiddle1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightMiddle2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightMiddle2JntGDLocShape" -p "RightMiddle2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightMiddle3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightMiddle3JntGDLocShape" -p "RightMiddle3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightMiddle4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightMiddle4JntGDLocShape" -p "RightMiddle4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightMiddle5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightMiddle5JntGDLocShape" -p "RightMiddle5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightRing1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightRing1JntGDLocShape" -p "RightRing1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightRing2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightRing2JntGDLocShape" -p "RightRing2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightRing3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightRing3JntGDLocShape" -p "RightRing3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightRing4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightRing4JntGDLocShape" -p "RightRing4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightRing5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightRing5JntGDLocShape" -p "RightRing5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightPinky1JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightPinky1JntGDLocShape" -p "RightPinky1JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightPinky2JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightPinky2JntGDLocShape" -p "RightPinky2JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightPinky3JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightPinky3JntGDLocShape" -p "RightPinky3JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightPinky4JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightPinky4JntGDLocShape" -p "RightPinky4JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightPinky5JntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightPinky5JntGDLocShape" -p "RightPinky5JntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "LeftHipJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftHipJntGDLocShape" -p "LeftHipJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftHipJntGDLoc_parentConstraint1" -p "LeftHipJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftHipJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 1 2.2203333198762426e-016 89.999999999999986 ;
	setAttr ".lr" -type "double3" 4.4139062980501564e-032 -2.8112397289968392e-016 -1.0828501549852137e-049 ;
	setAttr ".rst" -type "double3" 0.26670973576299006 2.9501540543071365 -6.9388939039072284e-018 ;
	setAttr ".rsrr" -type "double3" 4.4139062980501564e-032 -2.8112397289968392e-016 
		-1.0828501549852137e-049 ;
	setAttr -k on ".w0";
createNode transform -n "LeftKneeJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftKneeJntGDLocShape" -p "LeftKneeJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftKneeJntGDLoc_parentConstraint1" -p "LeftKneeJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftKneeJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 2.8937105468568413e-032 1.2850656302884472e-047 
		89.999999999999972 ;
	setAttr ".lr" -type "double3" -4.9696166897867449e-016 0 0 ;
	setAttr ".rst" -type "double3" 0.26670973576299034 1.6391747877093601 0.022883228218011264 ;
	setAttr ".rsrr" -type "double3" -4.9696166897867449e-016 0 0 ;
	setAttr -k on ".w0";
createNode transform -n "LeftAnkleScaleFixJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftAnkleScaleFixJntGDLocShape" -p "LeftAnkleScaleFixJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftAnkleScaleFixJntGDLoc_parentConstraint1" -p "LeftAnkleScaleFixJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftAnkleScaleFixJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 1.3877787807814457e-017 ;
	setAttr ".tg[0].tor" -type "double3" -1.3032113740542545e-016 -5.7874210937136826e-032 
		89.999999999999972 ;
	setAttr ".rst" -type "double3" 0.26670973576299062 0.32799582220429957 0.022883228218011267 ;
	setAttr -k on ".w0";
createNode transform -n "LeftBallJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftBallJntGDLocShape" -p "LeftBallJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftBallJntGDLoc_parentConstraint1" -p "LeftBallJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftBallJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 2.4856784325680822e-022 -1.4322997234005556e-005 ;
	setAttr ".lr" -type "double3" 0 0 -1.9083328088781097e-014 ;
	setAttr ".rst" -type "double3" 0.26670981769694169 0.00019969890728493978 0.40427696905044824 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.9083328088781097e-014 ;
	setAttr -k on ".w0";
createNode transform -n "LeftFootOutJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftFootOutJntGDLocShape" -p "LeftFootOutJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftFootOutJntGDLoc_parentConstraint1" -p "LeftFootOutJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftFootOutJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -2.7755575615628914e-017 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.8166657243550144e-014 ;
	setAttr ".lr" -type "double3" 0 0 -3.816665921077551e-014 ;
	setAttr ".rst" -type "double3" 0.42944575480927843 0.00019973958857764479 0.058584223766861614 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.816665921077551e-014 ;
	setAttr -k on ".w0";
createNode transform -n "LeftToeJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftToeJntGDLocShape" -p "LeftToeJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftToeJntGDLoc_parentConstraint1" -p "LeftToeJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftToeJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.4322997234005559e-005 ;
	setAttr ".lr" -type "double3" 0 0 -3.0332133116374176e-021 ;
	setAttr ".rst" -type "double3" 0.26670981769694191 0.00019969890728493978 0.73207171042671382 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.0332133116374176e-021 ;
	setAttr -k on ".w0";
createNode transform -n "LeftFootInJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftFootInJntGDLocShape" -p "LeftFootInJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftFootInJntGDLoc_parentConstraint1" -p "LeftFootInJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftFootInJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.8166657243550144e-014 ;
	setAttr ".lr" -type "double3" 0 0 -3.816665921077551e-014 ;
	setAttr ".rst" -type "double3" 0.12020233050702375 0.00019966228283630472 0.058584223766861621 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.816665921077551e-014 ;
	setAttr -k on ".w0";
createNode transform -n "LeftHeelJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "LeftHeelJntGDLocShape" -p "LeftHeelJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode parentConstraint -n "LeftHeelJntGDLoc_parentConstraint1" -p "LeftHeelJntGDLoc";
	addAttr -ci true -k true -sn "w0" -ln "LeftHeelJntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -1.0842021724855044e-019 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.8166657243550144e-014 ;
	setAttr ".lr" -type "double3" 0 0 -3.816665921077551e-014 ;
	setAttr ".rst" -type "double3" 0.26670976252600714 0.00019969890727114794 -0.16909304854903734 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.816665921077551e-014 ;
	setAttr -k on ".w0";
createNode transform -n "RightHipJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightHipJntGDLocShape" -p "RightHipJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightKneeJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightKneeJntGDLocShape" -p "RightKneeJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightAnkleScaleFixJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightAnkleScaleFixJntGDLocShape" -p "RightAnkleScaleFixJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightBallJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightBallJntGDLocShape" -p "RightBallJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightFootOutJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightFootOutJntGDLocShape" -p "RightFootOutJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightToeJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightToeJntGDLocShape" -p "RightToeJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightFootInJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightFootInJntGDLocShape" -p "RightFootInJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "RightHeelJntGDLoc" -p "MirrorLocGrp";
createNode locator -n "RightHeelJntGDLocShape" -p "RightHeelJntGDLoc";
	setAttr -k off ".v";
	setAttr ".los" -type "double3" 0.01 0.01 0.01 ;
createNode transform -n "FingerUpHelper" -p "AllJntGDGrp";
createNode transform -n "nurbsPlane1" -p "FingerUpHelper";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
	setAttr ".sp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
createNode nurbsSurface -n "nurbsPlaneShape1" -p "nurbsPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		6 0 0 0 1 1 1
		6 0 0 0 1 1 1
		
		16
		2.3108034952913425 4.7023753607037371 0.066775009269648855
		2.3108034952913425 4.6815137994347271 0.066775009269648855
		2.3108034952913425 4.6606522381657181 0.066775009269648855
		2.3108034952913425 4.639790676896709 0.066775009269648855
		2.3127002979496076 4.7023753607037371 0.12932394085701659
		2.3127002979496076 4.6815137994347271 0.12932394085701659
		2.3127002979496076 4.6606522381657181 0.12932394085701659
		2.3127002979496076 4.639790676896709 0.12932394085701659
		2.3145971006078727 4.7023753607037371 0.19187287244438433
		2.3145971006078727 4.6815137994347271 0.19187287244438433
		2.3145971006078727 4.6606522381657181 0.19187287244438433
		2.3145971006078727 4.639790676896709 0.19187287244438433
		2.3164939032661378 4.7023753607037371 0.25442180403175207
		2.3164939032661378 4.6815137994347271 0.25442180403175207
		2.3164939032661378 4.6606522381657181 0.25442180403175207
		2.3164939032661378 4.639790676896709 0.25442180403175207
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "nurbsPlane1_parentConstraint1" -p "nurbsPlane1";
	addAttr -ci true -k true -sn "w0" -ln "LeftThumb1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5511151231257827e-017 -8.8817841970012523e-016 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.0493013029563526e-013 88.263032023026298 
		-4.8039760553943861e-013 ;
	setAttr ".lr" -type "double3" 6.3242618876172594e-015 -2.6784290929382445e-035 4.8531412986198652e-019 ;
	setAttr ".rsrr" -type "double3" 6.3242618876172594e-015 -2.6784290929382445e-035 
		4.8531412986198652e-019 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "nurbsPlane1_scaleConstraint1" -p "nurbsPlane1";
	addAttr -ci true -k true -sn "w0" -ln "LeftThumb1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "nurbsPlane2" -p "FingerUpHelper";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
	setAttr ".sp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
createNode nurbsSurface -n "nurbsPlaneShape2" -p "nurbsPlane2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		6 0 0 0 1 1 1
		6 0 0 0 1 1 1
		
		16
		2.3108034952913425 4.7023753607037371 0.066775009269648855
		2.3108034952913425 4.6815137994347271 0.066775009269648855
		2.3108034952913425 4.6606522381657181 0.066775009269648855
		2.3108034952913425 4.639790676896709 0.066775009269648855
		2.3127002979496076 4.7023753607037371 0.12932394085701659
		2.3127002979496076 4.6815137994347271 0.12932394085701659
		2.3127002979496076 4.6606522381657181 0.12932394085701659
		2.3127002979496076 4.639790676896709 0.12932394085701659
		2.3145971006078727 4.7023753607037371 0.19187287244438433
		2.3145971006078727 4.6815137994347271 0.19187287244438433
		2.3145971006078727 4.6606522381657181 0.19187287244438433
		2.3145971006078727 4.639790676896709 0.19187287244438433
		2.3164939032661378 4.7023753607037371 0.25442180403175207
		2.3164939032661378 4.6815137994347271 0.25442180403175207
		2.3164939032661378 4.6606522381657181 0.25442180403175207
		2.3164939032661378 4.639790676896709 0.25442180403175207
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "nurbsPlane2_parentConstraint1" -p "nurbsPlane2";
	addAttr -ci true -k true -sn "w0" -ln "LeftIndex1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.7755575615628914e-017 0 4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 2.3000605464089273e-014 89.999999552545461 
		0 ;
	setAttr ".lr" -type "double3" 1.008565774026888e-014 51.197077000000029 7.8732484361681738e-015 ;
	setAttr ".rst" -type "double3" 0.16719650470865766 8.8817841970012523e-016 -0.023171237806136009 ;
	setAttr ".rsrr" -type "double3" 1.0085657740268882e-014 51.197077000000029 7.8732484361681738e-015 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "nurbsPlane2_scaleConstraint1" -p "nurbsPlane2";
	addAttr -ci true -k true -sn "w0" -ln "LeftIndex1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "nurbsPlane3" -p "FingerUpHelper";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
	setAttr ".sp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
createNode nurbsSurface -n "nurbsPlaneShape3" -p "nurbsPlane3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		6 0 0 0 1 1 1
		6 0 0 0 1 1 1
		
		16
		2.3108034952913425 4.7023753607037371 0.066775009269648855
		2.3108034952913425 4.6815137994347271 0.066775009269648855
		2.3108034952913425 4.6606522381657181 0.066775009269648855
		2.3108034952913425 4.639790676896709 0.066775009269648855
		2.3127002979496076 4.7023753607037371 0.12932394085701659
		2.3127002979496076 4.6815137994347271 0.12932394085701659
		2.3127002979496076 4.6606522381657181 0.12932394085701659
		2.3127002979496076 4.639790676896709 0.12932394085701659
		2.3145971006078727 4.7023753607037371 0.19187287244438433
		2.3145971006078727 4.6815137994347271 0.19187287244438433
		2.3145971006078727 4.6606522381657181 0.19187287244438433
		2.3145971006078727 4.639790676896709 0.19187287244438433
		2.3164939032661378 4.7023753607037371 0.25442180403175207
		2.3164939032661378 4.6815137994347271 0.25442180403175207
		2.3164939032661378 4.6606522381657181 0.25442180403175207
		2.3164939032661378 4.639790676896709 0.25442180403175207
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "nurbsPlane3_parentConstraint1" -p "nurbsPlane3";
	addAttr -ci true -k true -sn "w0" -ln "LeftMiddle1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.7144514654701197e-017 0 4.4408920985006262e-016 ;
	setAttr ".tg[0].tor" -type "double3" 1.3959389827605066e-014 89.999999867187668 
		0 ;
	setAttr ".lr" -type "double3" 1.9513606576203229e-014 71.074916734375336 1.8464992981192361e-014 ;
	setAttr ".rst" -type "double3" 0.1671965047086581 8.8817841970012523e-016 -0.12760686985374456 ;
	setAttr ".rsrr" -type "double3" 1.9513606576203229e-014 71.074916734375336 1.8464992981192361e-014 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "nurbsPlane3_scaleConstraint1" -p "nurbsPlane3";
	addAttr -ci true -k true -sn "w0" -ln "LeftMiddle1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "nurbsPlane4" -p "FingerUpHelper";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
	setAttr ".sp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
createNode nurbsSurface -n "nurbsPlaneShape4" -p "nurbsPlane4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		6 0 0 0 1 1 1
		6 0 0 0 1 1 1
		
		16
		2.3108034952913425 4.7023753607037371 0.066775009269648855
		2.3108034952913425 4.6815137994347271 0.066775009269648855
		2.3108034952913425 4.6606522381657181 0.066775009269648855
		2.3108034952913425 4.639790676896709 0.066775009269648855
		2.3127002979496076 4.7023753607037371 0.12932394085701659
		2.3127002979496076 4.6815137994347271 0.12932394085701659
		2.3127002979496076 4.6606522381657181 0.12932394085701659
		2.3127002979496076 4.639790676896709 0.12932394085701659
		2.3145971006078727 4.7023753607037371 0.19187287244438433
		2.3145971006078727 4.6815137994347271 0.19187287244438433
		2.3145971006078727 4.6606522381657181 0.19187287244438433
		2.3145971006078727 4.639790676896709 0.19187287244438433
		2.3164939032661378 4.7023753607037371 0.25442180403175207
		2.3164939032661378 4.6815137994347271 0.25442180403175207
		2.3164939032661378 4.6606522381657181 0.25442180403175207
		2.3164939032661378 4.639790676896709 0.25442180403175207
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "nurbsPlane4_parentConstraint1" -p "nurbsPlane4";
	addAttr -ci true -k true -sn "w0" -ln "LeftRing1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.3306690738754696e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -1.4096913239397696e-030 89.999999999999986 
		0 ;
	setAttr ".lr" -type "double3" -6.0740897464889241e-018 89.999999999999986 0 ;
	setAttr ".rst" -type "double3" 0.16719650470865854 1.7763568394002505e-015 -0.2335345357784398 ;
	setAttr ".rsrr" -type "double3" -6.0740897464889241e-018 89.999999999999986 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "nurbsPlane4_scaleConstraint1" -p "nurbsPlane4";
	addAttr -ci true -k true -sn "w0" -ln "LeftRing1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "nurbsPlane5" -p "FingerUpHelper";
	setAttr -l on -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".rp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
	setAttr ".sp" -type "double3" 2.3108034952913421 4.6397906768967081 0.066775009269648633 ;
createNode nurbsSurface -n "nurbsPlaneShape5" -p "nurbsPlane5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		6 0 0 0 1 1 1
		6 0 0 0 1 1 1
		
		16
		2.3108034952913425 4.7023753607037371 0.066775009269648855
		2.3108034952913425 4.6815137994347271 0.066775009269648855
		2.3108034952913425 4.6606522381657181 0.066775009269648855
		2.3108034952913425 4.639790676896709 0.066775009269648855
		2.3127002979496076 4.7023753607037371 0.12932394085701659
		2.3127002979496076 4.6815137994347271 0.12932394085701659
		2.3127002979496076 4.6606522381657181 0.12932394085701659
		2.3127002979496076 4.639790676896709 0.12932394085701659
		2.3145971006078727 4.7023753607037371 0.19187287244438433
		2.3145971006078727 4.6815137994347271 0.19187287244438433
		2.3145971006078727 4.6606522381657181 0.19187287244438433
		2.3145971006078727 4.639790676896709 0.19187287244438433
		2.3164939032661378 4.7023753607037371 0.25442180403175207
		2.3164939032661378 4.6815137994347271 0.25442180403175207
		2.3164939032661378 4.6606522381657181 0.25442180403175207
		2.3164939032661378 4.639790676896709 0.25442180403175207
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode parentConstraint -n "nurbsPlane5_parentConstraint1" -p "nurbsPlane5";
	addAttr -ci true -k true -sn "w0" -ln "LeftPinky1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.163336342344337e-017 -8.8817841970012523e-016 
		8.8817841970012523e-016 ;
	setAttr ".tg[0].tor" -type "double3" 2.6190268817835087e-014 89.999999692767787 
		0 ;
	setAttr ".lr" -type "double3" 0 117.45439299999998 0 ;
	setAttr ".rst" -type "double3" 0.16699329568045762 0 -0.3404810241696275 ;
	setAttr ".rsrr" -type "double3" 0 117.45439299999997 0 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "nurbsPlane5_scaleConstraint1" -p "nurbsPlane5";
	addAttr -ci true -k true -sn "w0" -ln "LeftPinky1JntGDW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph InputOutput1\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"xdzvzd\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 1 1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph InputOutput1\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"xdzvzd\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 1 1 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode motionPath -n "motionPath1";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear1";
createNode addDoubleLinear -n "addDoubleLinear2";
createNode addDoubleLinear -n "addDoubleLinear3";
createNode motionPath -n "motionPath2";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear4";
createNode addDoubleLinear -n "addDoubleLinear5";
createNode addDoubleLinear -n "addDoubleLinear6";
createNode motionPath -n "motionPath3";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear7";
createNode addDoubleLinear -n "addDoubleLinear8";
createNode addDoubleLinear -n "addDoubleLinear9";
createNode motionPath -n "motionPath4";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear10";
createNode addDoubleLinear -n "addDoubleLinear11";
createNode addDoubleLinear -n "addDoubleLinear12";
createNode motionPath -n "motionPath5";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear13";
createNode addDoubleLinear -n "addDoubleLinear14";
createNode addDoubleLinear -n "addDoubleLinear15";
createNode motionPath -n "motionPath6";
	setAttr -av ".u" 1;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear16";
createNode addDoubleLinear -n "addDoubleLinear17";
createNode addDoubleLinear -n "addDoubleLinear18";
createNode multiplyDivide -n "multiplyDivide1";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4 1 1 ;
createNode multiplyDivide -n "multiplyDivide2";
createNode multiplyDivide -n "multiplyDivide3";
	setAttr ".i2" -type "float3" 2 1 1 ;
createNode multiplyDivide -n "multiplyDivide4";
	setAttr ".i2" -type "float3" 3 1 1 ;
createNode cluster -n "cluster1";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak1";
createNode objectSet -n "cluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[1]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode makeNurbCircle -n "makeNurbCircle1";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode leastSquaresModifier -n "leastSquaresModifier1";
	setAttr -s 2 ".pc";
	setAttr ".pc[0].puv" -type "double3" 1 1 1 ;
	setAttr ".pc[0].pw" 1;
	setAttr ".pc[1].puv" -type "double3" 0 0 1 ;
	setAttr ".pc[1].pw" 1;
createNode makeNurbCircle -n "makeNurbCircle2";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode setRange -n "setRange1";
	setAttr ".m" -type "float3" 0 1 0 ;
createNode plusMinusAverage -n "plusMinusAverage1";
	setAttr -s 2 ".i1";
	setAttr -s 2 ".i1";
createNode makeNurbCircle -n "makeNurbCircle3";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	addAttr -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" yes;
	setAttr -s 28 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "raster use opacity";
	setAttr ".stringOptions[27].value" -type "string" "true";
	setAttr ".stringOptions[27].type" -type "string" "boolean";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	setAttr ".dat" 2;
createNode mentalrayOptions -s -n "miContourPreset";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "Draft";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".fil" 0;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 2;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".shrd" 2;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".ihi" 0;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".shrd" 2;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	setAttr ".ihi" 0;
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".splck" yes;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	setAttr ".ihi" 0;
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	setAttr ".ihi" 0;
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".splck" yes;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "FineTrace";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".splck" yes;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".ihi" 0;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".ray" no;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 1;
	setAttr ".maxr" 1;
	setAttr ".shrd" 2;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".ihi" 0;
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".filw" 1;
	setAttr ".filh" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode FurGlobals -n "defaultFurGlobals";
	addAttr -ci true -sn "cb" -ln "callback" -at "message";
	setAttr ".av" 2;
	setAttr ".pjl" -type "string" "C:/Users/gmkim/Documents/maya/projects/default";
createNode multiplyDivide -n "MirrorHipTX";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "MirrorKneeTX";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode multiplyDivide -n "MirrorAnkelTX";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" -1 1 1 ;
createNode curveInfo -n "TongueJntGDcurveInfo1";
	addAttr -ci true -sn "normalizedScale" -ln "normalizedScale" -at "double";
createNode multiplyDivide -n "TongueJntGDCurve_normalizedScale";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 5 1 1 ;
createNode motionPath -n "TongueMotionPath1";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear19";
createNode addDoubleLinear -n "addDoubleLinear20";
createNode addDoubleLinear -n "addDoubleLinear21";
createNode motionPath -n "TongueMotionPath2";
	setAttr -av ".u" 0.2;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear22";
createNode addDoubleLinear -n "addDoubleLinear23";
createNode addDoubleLinear -n "addDoubleLinear24";
createNode motionPath -n "TongueMotionPath3";
	setAttr ".u" 0.4;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear25";
createNode addDoubleLinear -n "addDoubleLinear26";
createNode addDoubleLinear -n "addDoubleLinear27";
createNode motionPath -n "TongueMotionPath4";
	setAttr ".u" 0.6;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear28";
createNode addDoubleLinear -n "addDoubleLinear29";
createNode addDoubleLinear -n "addDoubleLinear30";
createNode motionPath -n "TongueMotionPath5";
	setAttr ".u" 0.8;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear31";
createNode addDoubleLinear -n "addDoubleLinear32";
createNode addDoubleLinear -n "addDoubleLinear33";
createNode motionPath -n "TongueMotionPath6";
	setAttr ".u" 1;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode addDoubleLinear -n "addDoubleLinear34";
createNode addDoubleLinear -n "addDoubleLinear35";
createNode addDoubleLinear -n "addDoubleLinear36";
createNode leastSquaresModifier -n "leastSquaresModifier2";
	setAttr -s 4 ".pc";
	setAttr ".pc[0].puv" -type "double3" 0 0 1 ;
	setAttr ".pc[0].pw" 1;
	setAttr ".pc[1].puv" -type "double3" 0.33373642176435397 0.33373642176435397 1 ;
	setAttr ".pc[1].pw" 1;
	setAttr ".pc[2].puv" -type "double3" 0.66730576019385601 0.66730576019385601 1 ;
	setAttr ".pc[2].pw" 1;
	setAttr ".pc[3].puv" -type "double3" 1 1 1 ;
	setAttr ".pc[3].pw" 1;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".anf" yes;
createNode decomposeMatrix -n "NoseDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.14195865132196117 -1.7763568394002505e-015 -0.095848165823361614 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
	setAttr ".oqy" 1;
	setAttr ".oqw" 6.123233995736766e-017;
createNode multMatrix -n "NoseMultMatrix";
	setAttr -s 2 ".i";
createNode fourByFourMatrix -n "NoseMirrorMatrix";
	setAttr ".i00" -1;
createNode hyperGraphInfo -n "nodeEditorPanel2Info";
createNode hyperView -n "hyperView2";
	setAttr ".vl" -type "double2" -676.19047619047626 -514.5574647769555 ;
	setAttr ".vh" -type "double2" 877.38095238095252 444.31936953886037 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout2";
	setAttr ".ihi" 0;
	setAttr -s 326 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 100.99002838134766;
	setAttr ".hyp[1].y" -235.71427917480469;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 100.99002838134766;
	setAttr ".hyp[2].y" -78.571426391601562;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 100.99002838134766;
	setAttr ".hyp[3].y" -157.14285278320312;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 298.13287353515625;
	setAttr ".hyp[4].y" -243.67610168457031;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" 889.56146240234375;
	setAttr ".hyp[5].y" 41.698154449462891;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" 298.13287353515625;
	setAttr ".hyp[6].y" -322.24752807617187;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" 1086.704345703125;
	setAttr ".hyp[7].y" -86.533241271972656;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" 1086.704345703125;
	setAttr ".hyp[8].y" 227.75247192382812;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" 692.4185791015625;
	setAttr ".hyp[9].y" -86.533241271972656;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" 1086.704345703125;
	setAttr ".hyp[10].y" -243.67610168457031;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" -293.29568481445312;
	setAttr ".hyp[11].y" 227.75247192382812;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].x" -96.152824401855469;
	setAttr ".hyp[12].y" 357.14285278320312;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].x" -293.29568481445312;
	setAttr ".hyp[13].y" -7.9618134498596191;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].x" 495.2757568359375;
	setAttr ".hyp[14].y" -29.730417251586914;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].x" 495.2757568359375;
	setAttr ".hyp[15].y" -172.58755493164062;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].x" -96.152824401855469;
	setAttr ".hyp[16].y" 71.428573608398438;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].x" -293.29568481445312;
	setAttr ".hyp[17].y" -243.67610168457031;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].x" -293.29568481445312;
	setAttr ".hyp[18].y" -165.10467529296875;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].x" 889.56146240234375;
	setAttr ".hyp[19].y" 184.5552978515625;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].x" 495.2757568359375;
	setAttr ".hyp[20].y" 113.12672424316406;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].x" 889.56146240234375;
	setAttr ".hyp[21].y" 113.12672424316406;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].x" 889.56146240234375;
	setAttr ".hyp[22].y" -29.730417251586914;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].x" 889.56146240234375;
	setAttr ".hyp[23].y" 327.41244506835937;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].x" -293.29568481445312;
	setAttr ".hyp[24].y" 149.18104553222656;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].x" 692.4185791015625;
	setAttr ".hyp[25].y" -243.67610168457031;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].x" 495.2757568359375;
	setAttr ".hyp[26].y" -244.01612854003906;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].x" 100.99002838134766;
	setAttr ".hyp[27].y" 214.28572082519531;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].x" 495.2757568359375;
	setAttr ".hyp[28].y" -101.15898895263672;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].x" -96.152824401855469;
	setAttr ".hyp[29].y" -244.01612854003906;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].x" 298.13287353515625;
	setAttr ".hyp[30].y" -86.533241271972656;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].x" 889.56146240234375;
	setAttr ".hyp[31].y" -172.58755493164062;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].x" 495.2757568359375;
	setAttr ".hyp[32].y" 184.5552978515625;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].x" 889.56146240234375;
	setAttr ".hyp[33].y" 255.98387145996094;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].x" 889.56146240234375;
	setAttr ".hyp[34].y" -101.15898895263672;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].x" 1086.704345703125;
	setAttr ".hyp[35].y" 306.32391357421875;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].x" 692.4185791015625;
	setAttr ".hyp[36].y" 306.32391357421875;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].x" -96.152824401855469;
	setAttr ".hyp[37].y" -101.15898895263672;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].x" -96.152824401855469;
	setAttr ".hyp[38].y" -386.87326049804687;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].x" 495.2757568359375;
	setAttr ".hyp[39].y" -386.87326049804687;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].x" 100.99002838134766;
	setAttr ".hyp[40].y" -386.87326049804687;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].x" 692.4185791015625;
	setAttr ".hyp[41].y" -322.24752807617187;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].x" 1086.704345703125;
	setAttr ".hyp[42].y" 70.609611511230469;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].x" -293.29568481445312;
	setAttr ".hyp[43].y" -86.533241271972656;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].x" 692.4185791015625;
	setAttr ".hyp[44].y" -322.24752807617187;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].x" -96.152824401855469;
	setAttr ".hyp[45].y" 285.71429443359375;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].x" -96.152824401855469;
	setAttr ".hyp[46].y" -315.4447021484375;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].x" 495.2757568359375;
	setAttr ".hyp[47].y" 327.41244506835937;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].x" 692.4185791015625;
	setAttr ".hyp[48].y" 384.89532470703125;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].x" -96.152824401855469;
	setAttr ".hyp[49].y" -172.58755493164062;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].x" 1283.84716796875;
	setAttr ".hyp[50].y" -386.87326049804687;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].x" 1086.704345703125;
	setAttr ".hyp[51].y" -322.24752807617187;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].x" 100.99002838134766;
	setAttr ".hyp[52].y" 357.14285278320312;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].x" 889.56146240234375;
	setAttr ".hyp[53].y" 327.41244506835937;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].x" 495.2757568359375;
	setAttr ".hyp[54].y" 255.98387145996094;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].x" 692.4185791015625;
	setAttr ".hyp[55].y" 149.18104553222656;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].x" 298.13287353515625;
	setAttr ".hyp[56].y" -165.10467529296875;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].x" -293.29568481445312;
	setAttr ".hyp[57].y" 70.609611511230469;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].x" -293.29568481445312;
	setAttr ".hyp[58].y" 384.89532470703125;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].x" 100.99002838134766;
	setAttr ".hyp[59].y" 71.428573608398438;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].x" 298.13287353515625;
	setAttr ".hyp[60].y" 227.75247192382812;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].x" 298.13287353515625;
	setAttr ".hyp[61].y" 70.609611511230469;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].x" 889.56146240234375;
	setAttr ".hyp[62].y" -315.4447021484375;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].x" -293.29568481445312;
	setAttr ".hyp[63].y" -322.24752807617187;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].x" 1086.704345703125;
	setAttr ".hyp[64].y" 149.18104553222656;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].x" 100.99002838134766;
	setAttr ".hyp[65].y" 285.71429443359375;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].x" 1283.84716796875;
	setAttr ".hyp[66].y" -315.4447021484375;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].x" 692.4185791015625;
	setAttr ".hyp[67].y" 70.609611511230469;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].x" 298.13287353515625;
	setAttr ".hyp[68].y" 384.89532470703125;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].x" 889.56146240234375;
	setAttr ".hyp[69].y" -386.87326049804687;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].x" 889.56146240234375;
	setAttr ".hyp[70].y" -244.01612854003906;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].x" 495.2757568359375;
	setAttr ".hyp[71].y" 41.698154449462891;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].x" 1086.704345703125;
	setAttr ".hyp[72].y" 384.89532470703125;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].x" 495.2757568359375;
	setAttr ".hyp[73].y" 327.41244506835937;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].x" 692.4185791015625;
	setAttr ".hyp[74].y" -7.9618134498596191;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].x" -293.29568481445312;
	setAttr ".hyp[75].y" 306.32391357421875;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].x" 298.13287353515625;
	setAttr ".hyp[76].y" 306.32391357421875;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].x" 692.4185791015625;
	setAttr ".hyp[77].y" -165.10467529296875;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].x" 1086.704345703125;
	setAttr ".hyp[78].y" -322.24752807617187;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].x" 298.13287353515625;
	setAttr ".hyp[79].y" 149.18104553222656;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].x" 1086.704345703125;
	setAttr ".hyp[80].y" -7.9618134498596191;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].x" 100.99002838134766;
	setAttr ".hyp[81].y" 142.85714721679687;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].x" -96.152824401855469;
	setAttr ".hyp[82].y" 142.85714721679687;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].x" 692.4185791015625;
	setAttr ".hyp[83].y" 227.75247192382812;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].x" 1086.704345703125;
	setAttr ".hyp[84].y" -165.10467529296875;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].x" -96.152824401855469;
	setAttr ".hyp[85].y" 214.28572082519531;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].x" 298.13287353515625;
	setAttr ".hyp[86].y" -7.9618134498596191;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].x" 495.2757568359375;
	setAttr ".hyp[87].y" -315.4447021484375;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].x" 100.99002838134766;
	setAttr ".hyp[88].y" -36.703258514404297;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].x" 100.99002838134766;
	setAttr ".hyp[89].y" -36.703258514404297;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].x" 100.99002838134766;
	setAttr ".hyp[90].y" -36.703258514404297;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].x" 100.99002838134766;
	setAttr ".hyp[91].y" -36.703258514404297;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].x" 100.99002838134766;
	setAttr ".hyp[92].y" -36.703258514404297;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].x" 2466.704345703125;
	setAttr ".hyp[93].y" 327.41244506835937;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].x" 2466.704345703125;
	setAttr ".hyp[94].y" 41.698154449462891;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].x" 1678.1329345703125;
	setAttr ".hyp[95].y" -101.15898895263672;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].x" 2860.989990234375;
	setAttr ".hyp[96].y" -386.87326049804687;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].x" 2072.418701171875;
	setAttr ".hyp[97].y" 41.698154449462891;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].x" 3058.1328125;
	setAttr ".hyp[98].y" 227.75247192382812;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].x" 2860.989990234375;
	setAttr ".hyp[99].y" 255.98387145996094;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].x" 2860.989990234375;
	setAttr ".hyp[100].y" -101.15898895263672;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].x" 3058.1328125;
	setAttr ".hyp[101].y" 149.18104553222656;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].x" 1678.1329345703125;
	setAttr ".hyp[102].y" -315.4447021484375;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].x" 2072.418701171875;
	setAttr ".hyp[103].y" -315.4447021484375;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].x" 1283.84716796875;
	setAttr ".hyp[104].y" 184.5552978515625;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].x" 1875.2757568359375;
	setAttr ".hyp[105].y" 70.609611511230469;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].x" 2663.84716796875;
	setAttr ".hyp[106].y" -86.533241271972656;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].x" 2663.84716796875;
	setAttr ".hyp[107].y" -243.67610168457031;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].x" 1875.2757568359375;
	setAttr ".hyp[108].y" 149.18104553222656;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].x" 100.99002838134766;
	setAttr ".hyp[109].y" -36.703258514404297;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].x" 2269.5615234375;
	setAttr ".hyp[110].y" -7.9618134498596191;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].x" 2663.84716796875;
	setAttr ".hyp[111].y" 227.75247192382812;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].x" 1283.84716796875;
	setAttr ".hyp[112].y" 113.12672424316406;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].x" 2466.704345703125;
	setAttr ".hyp[113].y" -315.4447021484375;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].x" 2663.84716796875;
	setAttr ".hyp[114].y" -165.10467529296875;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].x" 2466.704345703125;
	setAttr ".hyp[115].y" -29.730417251586914;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].x" 100.99002838134766;
	setAttr ".hyp[116].y" -36.703258514404297;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].x" 1875.2757568359375;
	setAttr ".hyp[117].y" 384.89532470703125;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].x" 2072.418701171875;
	setAttr ".hyp[118].y" 255.98387145996094;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].x" 1678.1329345703125;
	setAttr ".hyp[119].y" -172.58755493164062;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].x" 1678.1329345703125;
	setAttr ".hyp[120].y" 41.698154449462891;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].x" 1480.989990234375;
	setAttr ".hyp[121].y" 384.89532470703125;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].x" 2072.418701171875;
	setAttr ".hyp[122].y" 327.41244506835937;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].x" 2269.5615234375;
	setAttr ".hyp[123].y" 70.609611511230469;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].x" 2860.989990234375;
	setAttr ".hyp[124].y" -172.58755493164062;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].x" 2269.5615234375;
	setAttr ".hyp[125].y" -322.24752807617187;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].x" 1678.1329345703125;
	setAttr ".hyp[126].y" -244.01612854003906;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].x" 2466.704345703125;
	setAttr ".hyp[127].y" 255.98387145996094;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".hyp[128].x" 1283.84716796875;
	setAttr ".hyp[128].y" -244.01612854003906;
	setAttr ".hyp[128].nvs" 1920;
	setAttr ".hyp[129].x" 1875.2757568359375;
	setAttr ".hyp[129].y" 227.75247192382812;
	setAttr ".hyp[129].nvs" 1920;
	setAttr ".hyp[130].x" 2466.704345703125;
	setAttr ".hyp[130].y" 113.12672424316406;
	setAttr ".hyp[130].nvs" 1920;
	setAttr ".hyp[131].x" 1283.84716796875;
	setAttr ".hyp[131].y" 255.98387145996094;
	setAttr ".hyp[131].nvs" 1920;
	setAttr ".hyp[132].x" 2269.5615234375;
	setAttr ".hyp[132].y" 227.75247192382812;
	setAttr ".hyp[132].nvs" 1920;
	setAttr ".hyp[133].x" 1480.989990234375;
	setAttr ".hyp[133].y" -322.24752807617187;
	setAttr ".hyp[133].nvs" 1920;
	setAttr ".hyp[134].x" 2860.989990234375;
	setAttr ".hyp[134].y" 327.41244506835937;
	setAttr ".hyp[134].nvs" 1920;
	setAttr ".hyp[135].x" 1283.84716796875;
	setAttr ".hyp[135].y" -29.730417251586914;
	setAttr ".hyp[135].nvs" 1920;
	setAttr ".hyp[136].x" 2269.5615234375;
	setAttr ".hyp[136].y" -86.533241271972656;
	setAttr ".hyp[136].nvs" 1920;
	setAttr ".hyp[137].x" 1678.1329345703125;
	setAttr ".hyp[137].y" 327.41244506835937;
	setAttr ".hyp[137].nvs" 1920;
	setAttr ".hyp[138].x" 2466.704345703125;
	setAttr ".hyp[138].y" -101.15898895263672;
	setAttr ".hyp[138].nvs" 1920;
	setAttr ".hyp[139].x" 2269.5615234375;
	setAttr ".hyp[139].y" 306.32391357421875;
	setAttr ".hyp[139].nvs" 1920;
	setAttr ".hyp[140].x" 1283.84716796875;
	setAttr ".hyp[140].y" -172.58755493164062;
	setAttr ".hyp[140].nvs" 1920;
	setAttr ".hyp[141].x" 1480.989990234375;
	setAttr ".hyp[141].y" -243.67610168457031;
	setAttr ".hyp[141].nvs" 1920;
	setAttr ".hyp[142].x" 1875.2757568359375;
	setAttr ".hyp[142].y" 306.32391357421875;
	setAttr ".hyp[142].nvs" 1920;
	setAttr ".hyp[143].x" 2269.5615234375;
	setAttr ".hyp[143].y" -165.10467529296875;
	setAttr ".hyp[143].nvs" 1920;
	setAttr ".hyp[144].x" 1678.1329345703125;
	setAttr ".hyp[144].y" 327.41244506835937;
	setAttr ".hyp[144].nvs" 1920;
	setAttr ".hyp[145].x" 2860.989990234375;
	setAttr ".hyp[145].y" -244.01612854003906;
	setAttr ".hyp[145].nvs" 1920;
	setAttr ".hyp[146].x" 2072.418701171875;
	setAttr ".hyp[146].y" -386.87326049804687;
	setAttr ".hyp[146].nvs" 1920;
	setAttr ".hyp[147].x" 2269.5615234375;
	setAttr ".hyp[147].y" -243.67610168457031;
	setAttr ".hyp[147].nvs" 1920;
	setAttr ".hyp[148].x" 1283.84716796875;
	setAttr ".hyp[148].y" 41.698154449462891;
	setAttr ".hyp[148].nvs" 1920;
	setAttr ".hyp[149].x" 2860.989990234375;
	setAttr ".hyp[149].y" -315.4447021484375;
	setAttr ".hyp[149].nvs" 1920;
	setAttr ".hyp[150].x" 1678.1329345703125;
	setAttr ".hyp[150].y" -386.87326049804687;
	setAttr ".hyp[150].nvs" 1920;
	setAttr ".hyp[151].x" 1283.84716796875;
	setAttr ".hyp[151].y" 327.41244506835937;
	setAttr ".hyp[151].nvs" 1920;
	setAttr ".hyp[152].x" 2663.84716796875;
	setAttr ".hyp[152].y" -322.24752807617187;
	setAttr ".hyp[152].nvs" 1920;
	setAttr ".hyp[153].x" 1678.1329345703125;
	setAttr ".hyp[153].y" 255.98387145996094;
	setAttr ".hyp[153].nvs" 1920;
	setAttr ".hyp[154].x" 2860.989990234375;
	setAttr ".hyp[154].y" 113.12672424316406;
	setAttr ".hyp[154].nvs" 1920;
	setAttr ".hyp[155].x" 1875.2757568359375;
	setAttr ".hyp[155].y" -86.533241271972656;
	setAttr ".hyp[155].nvs" 1920;
	setAttr ".hyp[156].x" 100.99002838134766;
	setAttr ".hyp[156].y" -36.703258514404297;
	setAttr ".hyp[156].nvs" 1920;
	setAttr ".hyp[157].x" 2072.418701171875;
	setAttr ".hyp[157].y" -172.58755493164062;
	setAttr ".hyp[157].nvs" 1920;
	setAttr ".hyp[158].x" 1480.989990234375;
	setAttr ".hyp[158].y" -165.10467529296875;
	setAttr ".hyp[158].nvs" 1920;
	setAttr ".hyp[159].x" 2072.418701171875;
	setAttr ".hyp[159].y" -244.01612854003906;
	setAttr ".hyp[159].nvs" 1920;
	setAttr ".hyp[160].x" 3058.1328125;
	setAttr ".hyp[160].y" 306.32391357421875;
	setAttr ".hyp[160].nvs" 1920;
	setAttr ".hyp[161].x" 1678.1329345703125;
	setAttr ".hyp[161].y" 184.5552978515625;
	setAttr ".hyp[161].nvs" 1920;
	setAttr ".hyp[162].x" 2663.84716796875;
	setAttr ".hyp[162].y" 70.609611511230469;
	setAttr ".hyp[162].nvs" 1920;
	setAttr ".hyp[163].x" 2466.704345703125;
	setAttr ".hyp[163].y" -244.01612854003906;
	setAttr ".hyp[163].nvs" 1920;
	setAttr ".hyp[164].x" 1283.84716796875;
	setAttr ".hyp[164].y" -101.15898895263672;
	setAttr ".hyp[164].nvs" 1920;
	setAttr ".hyp[165].x" 1480.989990234375;
	setAttr ".hyp[165].y" -7.9618134498596191;
	setAttr ".hyp[165].nvs" 1920;
	setAttr ".hyp[166].x" 2663.84716796875;
	setAttr ".hyp[166].y" 384.89532470703125;
	setAttr ".hyp[166].nvs" 1920;
	setAttr ".hyp[167].x" 1678.1329345703125;
	setAttr ".hyp[167].y" 113.12672424316406;
	setAttr ".hyp[167].nvs" 1920;
	setAttr ".hyp[168].x" 2072.418701171875;
	setAttr ".hyp[168].y" -101.15898895263672;
	setAttr ".hyp[168].nvs" 1920;
	setAttr ".hyp[169].x" 2466.704345703125;
	setAttr ".hyp[169].y" -172.58755493164062;
	setAttr ".hyp[169].nvs" 1920;
	setAttr ".hyp[170].x" 2860.989990234375;
	setAttr ".hyp[170].y" -29.730417251586914;
	setAttr ".hyp[170].nvs" 1920;
	setAttr ".hyp[171].x" 3058.1328125;
	setAttr ".hyp[171].y" 70.609611511230469;
	setAttr ".hyp[171].nvs" 1920;
	setAttr ".hyp[172].x" 100.99002838134766;
	setAttr ".hyp[172].y" -36.703258514404297;
	setAttr ".hyp[172].nvs" 1920;
	setAttr ".hyp[173].x" 1875.2757568359375;
	setAttr ".hyp[173].y" -322.24752807617187;
	setAttr ".hyp[173].nvs" 1920;
	setAttr ".hyp[174].x" 1875.2757568359375;
	setAttr ".hyp[174].y" -322.24752807617187;
	setAttr ".hyp[174].nvs" 1920;
	setAttr ".hyp[175].x" 2860.989990234375;
	setAttr ".hyp[175].y" 327.41244506835937;
	setAttr ".hyp[175].nvs" 1920;
	setAttr ".hyp[176].x" 1480.989990234375;
	setAttr ".hyp[176].y" 149.18104553222656;
	setAttr ".hyp[176].nvs" 1920;
	setAttr ".hyp[177].x" 2663.84716796875;
	setAttr ".hyp[177].y" 149.18104553222656;
	setAttr ".hyp[177].nvs" 1920;
	setAttr ".hyp[178].x" 2860.989990234375;
	setAttr ".hyp[178].y" 184.5552978515625;
	setAttr ".hyp[178].nvs" 1920;
	setAttr ".hyp[179].x" 1480.989990234375;
	setAttr ".hyp[179].y" -86.533241271972656;
	setAttr ".hyp[179].nvs" 1920;
	setAttr ".hyp[180].x" 3058.1328125;
	setAttr ".hyp[180].y" -7.9618134498596191;
	setAttr ".hyp[180].nvs" 1920;
	setAttr ".hyp[181].x" 1480.989990234375;
	setAttr ".hyp[181].y" 306.32391357421875;
	setAttr ".hyp[181].nvs" 1920;
	setAttr ".hyp[182].x" 1875.2757568359375;
	setAttr ".hyp[182].y" -243.67610168457031;
	setAttr ".hyp[182].nvs" 1920;
	setAttr ".hyp[183].x" 2466.704345703125;
	setAttr ".hyp[183].y" 184.5552978515625;
	setAttr ".hyp[183].nvs" 1920;
	setAttr ".hyp[184].x" 1875.2757568359375;
	setAttr ".hyp[184].y" -165.10467529296875;
	setAttr ".hyp[184].nvs" 1920;
	setAttr ".hyp[185].x" 2663.84716796875;
	setAttr ".hyp[185].y" -7.9618134498596191;
	setAttr ".hyp[185].nvs" 1920;
	setAttr ".hyp[186].x" 2072.418701171875;
	setAttr ".hyp[186].y" -29.730417251586914;
	setAttr ".hyp[186].nvs" 1920;
	setAttr ".hyp[187].x" 2269.5615234375;
	setAttr ".hyp[187].y" -322.24752807617187;
	setAttr ".hyp[187].nvs" 1920;
	setAttr ".hyp[188].x" 1283.84716796875;
	setAttr ".hyp[188].y" 327.41244506835937;
	setAttr ".hyp[188].nvs" 1920;
	setAttr ".hyp[189].x" 2269.5615234375;
	setAttr ".hyp[189].y" 149.18104553222656;
	setAttr ".hyp[189].nvs" 1920;
	setAttr ".hyp[190].x" 3058.1328125;
	setAttr ".hyp[190].y" 384.89532470703125;
	setAttr ".hyp[190].nvs" 1920;
	setAttr ".hyp[191].x" 2663.84716796875;
	setAttr ".hyp[191].y" 306.32391357421875;
	setAttr ".hyp[191].nvs" 1920;
	setAttr ".hyp[192].x" 2860.989990234375;
	setAttr ".hyp[192].y" 41.698154449462891;
	setAttr ".hyp[192].nvs" 1920;
	setAttr ".hyp[193].x" 2466.704345703125;
	setAttr ".hyp[193].y" 327.41244506835937;
	setAttr ".hyp[193].nvs" 1920;
	setAttr ".hyp[194].x" 2466.704345703125;
	setAttr ".hyp[194].y" -386.87326049804687;
	setAttr ".hyp[194].nvs" 1920;
	setAttr ".hyp[195].x" 1875.2757568359375;
	setAttr ".hyp[195].y" -7.9618134498596191;
	setAttr ".hyp[195].nvs" 1920;
	setAttr ".hyp[196].x" 1678.1329345703125;
	setAttr ".hyp[196].y" -29.730417251586914;
	setAttr ".hyp[196].nvs" 1920;
	setAttr ".hyp[197].x" 2663.84716796875;
	setAttr ".hyp[197].y" -322.24752807617187;
	setAttr ".hyp[197].nvs" 1920;
	setAttr ".hyp[198].x" 1480.989990234375;
	setAttr ".hyp[198].y" 70.609611511230469;
	setAttr ".hyp[198].nvs" 1920;
	setAttr ".hyp[199].x" 1480.989990234375;
	setAttr ".hyp[199].y" 227.75247192382812;
	setAttr ".hyp[199].nvs" 1920;
	setAttr ".hyp[200].x" 2072.418701171875;
	setAttr ".hyp[200].y" 327.41244506835937;
	setAttr ".hyp[200].nvs" 1920;
	setAttr ".hyp[201].x" 2072.418701171875;
	setAttr ".hyp[201].y" 113.12672424316406;
	setAttr ".hyp[201].nvs" 1920;
	setAttr ".hyp[202].x" 2269.5615234375;
	setAttr ".hyp[202].y" 384.89532470703125;
	setAttr ".hyp[202].nvs" 1920;
	setAttr ".hyp[203].x" 1480.989990234375;
	setAttr ".hyp[203].y" -322.24752807617187;
	setAttr ".hyp[203].nvs" 1920;
	setAttr ".hyp[204].x" 2072.418701171875;
	setAttr ".hyp[204].y" 184.5552978515625;
	setAttr ".hyp[204].nvs" 1920;
	setAttr ".hyp[205].x" 100.99002838134766;
	setAttr ".hyp[205].y" -36.703258514404297;
	setAttr ".hyp[205].nvs" 1920;
	setAttr ".hyp[206].x" 100.99002838134766;
	setAttr ".hyp[206].y" -36.703258514404297;
	setAttr ".hyp[206].nvs" 1920;
	setAttr ".hyp[207].nvs" 1920;
	setAttr ".hyp[208].x" 3255.275634765625;
	setAttr ".hyp[208].y" 41.698154449462891;
	setAttr ".hyp[208].nvs" 1920;
	setAttr ".hyp[209].x" 3255.275634765625;
	setAttr ".hyp[209].y" -244.01612854003906;
	setAttr ".hyp[209].nvs" 1920;
	setAttr ".hyp[210].x" 3058.1328125;
	setAttr ".hyp[210].y" -165.10467529296875;
	setAttr ".hyp[210].nvs" 1920;
	setAttr ".hyp[211].x" 3255.275634765625;
	setAttr ".hyp[211].y" -101.15898895263672;
	setAttr ".hyp[211].nvs" 1920;
	setAttr ".hyp[212].x" 3058.1328125;
	setAttr ".hyp[212].y" -322.24752807617187;
	setAttr ".hyp[212].nvs" 1920;
	setAttr ".hyp[213].x" 3255.275634765625;
	setAttr ".hyp[213].y" -29.730417251586914;
	setAttr ".hyp[213].nvs" 1920;
	setAttr ".hyp[214].x" 3255.275634765625;
	setAttr ".hyp[214].y" -172.58755493164062;
	setAttr ".hyp[214].nvs" 1920;
	setAttr ".hyp[215].x" 3058.1328125;
	setAttr ".hyp[215].y" -243.67610168457031;
	setAttr ".hyp[215].nvs" 1920;
	setAttr ".hyp[216].x" 3255.275634765625;
	setAttr ".hyp[216].y" 113.12672424316406;
	setAttr ".hyp[216].nvs" 1920;
	setAttr ".hyp[217].x" 3058.1328125;
	setAttr ".hyp[217].y" -322.24752807617187;
	setAttr ".hyp[217].nvs" 1920;
	setAttr ".hyp[218].x" 3255.275634765625;
	setAttr ".hyp[218].y" -315.4447021484375;
	setAttr ".hyp[218].nvs" 1920;
	setAttr ".hyp[219].x" 3255.275634765625;
	setAttr ".hyp[219].y" -386.87326049804687;
	setAttr ".hyp[219].nvs" 1920;
	setAttr ".hyp[220].x" 100.99002838134766;
	setAttr ".hyp[220].y" -36.703258514404297;
	setAttr ".hyp[220].nvs" 1920;
	setAttr ".hyp[221].x" 100.99002838134766;
	setAttr ".hyp[221].y" -36.703258514404297;
	setAttr ".hyp[221].nvs" 1920;
	setAttr ".hyp[222].x" 100.99002838134766;
	setAttr ".hyp[222].y" -36.703258514404297;
	setAttr ".hyp[222].nvs" 1920;
	setAttr ".hyp[223].x" 100.99002838134766;
	setAttr ".hyp[223].y" -36.703258514404297;
	setAttr ".hyp[223].nvs" 1920;
	setAttr ".hyp[224].x" 100.99002838134766;
	setAttr ".hyp[224].y" -36.703258514404297;
	setAttr ".hyp[224].nvs" 1920;
	setAttr ".hyp[225].x" 100.99002838134766;
	setAttr ".hyp[225].y" -36.703258514404297;
	setAttr ".hyp[225].nvs" 1920;
	setAttr ".hyp[226].x" 100.99002838134766;
	setAttr ".hyp[226].y" -36.703258514404297;
	setAttr ".hyp[226].nvs" 1920;
	setAttr ".hyp[227].x" 100.99002838134766;
	setAttr ".hyp[227].y" -36.703258514404297;
	setAttr ".hyp[227].nvs" 1920;
	setAttr ".hyp[228].x" 100.99002838134766;
	setAttr ".hyp[228].y" -36.703258514404297;
	setAttr ".hyp[228].nvs" 1920;
	setAttr ".hyp[229].x" 100.99002838134766;
	setAttr ".hyp[229].y" -36.703258514404297;
	setAttr ".hyp[229].nvs" 1920;
	setAttr ".hyp[230].x" 100.99002838134766;
	setAttr ".hyp[230].y" -36.703258514404297;
	setAttr ".hyp[230].nvs" 1920;
	setAttr ".hyp[231].x" 100.99002838134766;
	setAttr ".hyp[231].y" -36.703258514404297;
	setAttr ".hyp[231].nvs" 1920;
	setAttr ".hyp[232].x" 100.99002838134766;
	setAttr ".hyp[232].y" -36.703258514404297;
	setAttr ".hyp[232].nvs" 1920;
	setAttr ".hyp[233].x" 3058.1328125;
	setAttr ".hyp[233].y" -86.533241271972656;
	setAttr ".hyp[233].nvs" 1920;
	setAttr ".hyp[234].x" 100.99002838134766;
	setAttr ".hyp[234].y" -36.703258514404297;
	setAttr ".hyp[234].nvs" 1920;
	setAttr ".hyp[235].x" 100.99002838134766;
	setAttr ".hyp[235].y" -36.703258514404297;
	setAttr ".hyp[235].nvs" 1920;
	setAttr ".hyp[236].x" 100.99002838134766;
	setAttr ".hyp[236].y" -36.703258514404297;
	setAttr ".hyp[236].nvs" 1920;
	setAttr ".hyp[237].x" 100.99002838134766;
	setAttr ".hyp[237].y" -36.703258514404297;
	setAttr ".hyp[237].nvs" 1920;
	setAttr ".hyp[238].x" 100.99002838134766;
	setAttr ".hyp[238].y" -36.703258514404297;
	setAttr ".hyp[238].nvs" 1920;
	setAttr ".hyp[239].x" 100.99002838134766;
	setAttr ".hyp[239].y" -36.703258514404297;
	setAttr ".hyp[239].nvs" 1920;
	setAttr ".hyp[240].x" 100.99002838134766;
	setAttr ".hyp[240].y" -36.703258514404297;
	setAttr ".hyp[240].nvs" 1920;
	setAttr ".hyp[241].x" 3255.275634765625;
	setAttr ".hyp[241].y" 327.41244506835937;
	setAttr ".hyp[241].nvs" 1920;
	setAttr ".hyp[242].x" 100.99002838134766;
	setAttr ".hyp[242].y" -36.703258514404297;
	setAttr ".hyp[242].nvs" 1920;
	setAttr ".hyp[243].x" 3452.418701171875;
	setAttr ".hyp[243].y" 384.89532470703125;
	setAttr ".hyp[243].nvs" 1920;
	setAttr ".hyp[244].x" 100.99002838134766;
	setAttr ".hyp[244].y" -36.703258514404297;
	setAttr ".hyp[244].nvs" 1920;
	setAttr ".hyp[245].x" 3255.275634765625;
	setAttr ".hyp[245].y" 184.5552978515625;
	setAttr ".hyp[245].nvs" 1920;
	setAttr ".hyp[246].x" 3255.275634765625;
	setAttr ".hyp[246].y" 255.98387145996094;
	setAttr ".hyp[246].nvs" 1920;
	setAttr ".hyp[247].x" 100.99002838134766;
	setAttr ".hyp[247].y" -36.703258514404297;
	setAttr ".hyp[247].nvs" 1920;
	setAttr ".hyp[248].x" 3255.275634765625;
	setAttr ".hyp[248].y" 327.41244506835937;
	setAttr ".hyp[248].nvs" 1920;
	setAttr ".hyp[249].x" 100.99002838134766;
	setAttr ".hyp[249].y" -36.703258514404297;
	setAttr ".hyp[249].nvs" 1920;
	setAttr ".hyp[250].x" 100.99002838134766;
	setAttr ".hyp[250].y" -36.703258514404297;
	setAttr ".hyp[250].nvs" 1920;
	setAttr ".hyp[251].x" 3452.418701171875;
	setAttr ".hyp[251].y" 306.32391357421875;
	setAttr ".hyp[251].nvs" 1920;
	setAttr ".hyp[252].x" 3452.418701171875;
	setAttr ".hyp[252].y" 227.75247192382812;
	setAttr ".hyp[252].nvs" 1920;
	setAttr ".hyp[253].x" 3452.418701171875;
	setAttr ".hyp[253].y" 149.18104553222656;
	setAttr ".hyp[253].nvs" 1920;
	setAttr ".hyp[254].x" 3452.418701171875;
	setAttr ".hyp[254].y" 70.609611511230469;
	setAttr ".hyp[254].nvs" 1920;
	setAttr ".hyp[255].x" 3452.418701171875;
	setAttr ".hyp[255].y" -7.9618134498596191;
	setAttr ".hyp[255].nvs" 1920;
	setAttr ".hyp[256].x" 100.99002838134766;
	setAttr ".hyp[256].y" -36.703258514404297;
	setAttr ".hyp[256].nvs" 1920;
	setAttr ".hyp[257].x" 100.99002838134766;
	setAttr ".hyp[257].y" -36.703258514404297;
	setAttr ".hyp[257].nvs" 1920;
	setAttr ".hyp[258].x" 3452.418701171875;
	setAttr ".hyp[258].y" -86.533241271972656;
	setAttr ".hyp[258].nvs" 1920;
	setAttr ".hyp[259].x" 100.99002838134766;
	setAttr ".hyp[259].y" -36.703258514404297;
	setAttr ".hyp[259].nvs" 1920;
	setAttr ".hyp[260].x" 100.99002838134766;
	setAttr ".hyp[260].y" -36.703258514404297;
	setAttr ".hyp[260].nvs" 1920;
	setAttr ".hyp[261].x" 100.99002838134766;
	setAttr ".hyp[261].y" -36.703258514404297;
	setAttr ".hyp[261].nvs" 1920;
	setAttr ".hyp[262].x" 100.99002838134766;
	setAttr ".hyp[262].y" -36.703258514404297;
	setAttr ".hyp[262].nvs" 1920;
	setAttr ".hyp[263].x" 100.99002838134766;
	setAttr ".hyp[263].y" -36.703258514404297;
	setAttr ".hyp[263].nvs" 1920;
	setAttr ".hyp[264].x" 100.99002838134766;
	setAttr ".hyp[264].y" -36.703258514404297;
	setAttr ".hyp[264].nvs" 1920;
	setAttr ".hyp[265].x" 100.99002838134766;
	setAttr ".hyp[265].y" -36.703258514404297;
	setAttr ".hyp[265].nvs" 1920;
	setAttr ".hyp[266].x" 100.99002838134766;
	setAttr ".hyp[266].y" -36.703258514404297;
	setAttr ".hyp[266].nvs" 1920;
	setAttr ".hyp[267].x" 100.99002838134766;
	setAttr ".hyp[267].y" -36.703258514404297;
	setAttr ".hyp[267].nvs" 1920;
	setAttr ".hyp[268].x" 100.99002838134766;
	setAttr ".hyp[268].y" -36.703258514404297;
	setAttr ".hyp[268].nvs" 1920;
	setAttr ".hyp[269].x" 100.99002838134766;
	setAttr ".hyp[269].y" -36.703258514404297;
	setAttr ".hyp[269].nvs" 1920;
	setAttr ".hyp[270].x" 100.99002838134766;
	setAttr ".hyp[270].y" -36.703258514404297;
	setAttr ".hyp[270].nvs" 1920;
	setAttr ".hyp[271].x" 3452.418701171875;
	setAttr ".hyp[271].y" -165.10467529296875;
	setAttr ".hyp[271].nvs" 1920;
	setAttr ".hyp[272].x" 100.99002838134766;
	setAttr ".hyp[272].y" -36.703258514404297;
	setAttr ".hyp[272].nvs" 1920;
	setAttr ".hyp[273].x" 100.99002838134766;
	setAttr ".hyp[273].y" -36.703258514404297;
	setAttr ".hyp[273].nvs" 1920;
	setAttr ".hyp[274].x" 100.99002838134766;
	setAttr ".hyp[274].y" -36.703258514404297;
	setAttr ".hyp[274].nvs" 1920;
	setAttr ".hyp[275].x" 3452.418701171875;
	setAttr ".hyp[275].y" -243.67610168457031;
	setAttr ".hyp[275].nvs" 1920;
	setAttr ".hyp[276].x" 3452.418701171875;
	setAttr ".hyp[276].y" -322.24752807617187;
	setAttr ".hyp[276].nvs" 1920;
	setAttr ".hyp[277].x" 3452.418701171875;
	setAttr ".hyp[277].y" -322.24752807617187;
	setAttr ".hyp[277].nvs" 1920;
	setAttr ".hyp[278].x" 3649.5615234375;
	setAttr ".hyp[278].y" -386.87326049804687;
	setAttr ".hyp[278].nvs" 1920;
	setAttr ".hyp[279].x" 3649.5615234375;
	setAttr ".hyp[279].y" -315.4447021484375;
	setAttr ".hyp[279].nvs" 1920;
	setAttr ".hyp[280].x" 3649.5615234375;
	setAttr ".hyp[280].y" -244.01612854003906;
	setAttr ".hyp[280].nvs" 1920;
	setAttr ".hyp[281].x" 3649.5615234375;
	setAttr ".hyp[281].y" -172.58755493164062;
	setAttr ".hyp[281].nvs" 1920;
	setAttr ".hyp[282].x" 3649.5615234375;
	setAttr ".hyp[282].y" -101.15898895263672;
	setAttr ".hyp[282].nvs" 1920;
	setAttr ".hyp[283].x" 3649.5615234375;
	setAttr ".hyp[283].y" -29.730417251586914;
	setAttr ".hyp[283].nvs" 1920;
	setAttr ".hyp[284].x" 3649.5615234375;
	setAttr ".hyp[284].y" 41.698154449462891;
	setAttr ".hyp[284].nvs" 1920;
	setAttr ".hyp[285].x" 3649.5615234375;
	setAttr ".hyp[285].y" 113.12672424316406;
	setAttr ".hyp[285].nvs" 1920;
	setAttr ".hyp[286].x" 3649.5615234375;
	setAttr ".hyp[286].y" 184.5552978515625;
	setAttr ".hyp[286].nvs" 1920;
	setAttr ".hyp[287].x" 3649.5615234375;
	setAttr ".hyp[287].y" 255.98387145996094;
	setAttr ".hyp[287].nvs" 1920;
	setAttr ".hyp[288].x" 3649.5615234375;
	setAttr ".hyp[288].y" 327.41244506835937;
	setAttr ".hyp[288].nvs" 1920;
	setAttr ".hyp[289].x" 3649.5615234375;
	setAttr ".hyp[289].y" 327.41244506835937;
	setAttr ".hyp[289].nvs" 1920;
	setAttr ".hyp[290].x" 100.99002838134766;
	setAttr ".hyp[290].y" -36.703258514404297;
	setAttr ".hyp[290].nvs" 1920;
	setAttr ".hyp[291].x" 100.99002838134766;
	setAttr ".hyp[291].y" -36.703258514404297;
	setAttr ".hyp[291].nvs" 1920;
	setAttr ".hyp[292].x" 100.99002838134766;
	setAttr ".hyp[292].y" -36.703258514404297;
	setAttr ".hyp[292].nvs" 1920;
	setAttr ".hyp[293].x" 100.99002838134766;
	setAttr ".hyp[293].y" -36.703258514404297;
	setAttr ".hyp[293].nvs" 1920;
	setAttr ".hyp[294].x" 100.99002838134766;
	setAttr ".hyp[294].y" -36.703258514404297;
	setAttr ".hyp[294].nvs" 1920;
	setAttr ".hyp[295].x" 100.99002838134766;
	setAttr ".hyp[295].y" -36.703258514404297;
	setAttr ".hyp[295].nvs" 1920;
	setAttr ".hyp[296].x" 100.99002838134766;
	setAttr ".hyp[296].y" -36.703258514404297;
	setAttr ".hyp[296].nvs" 1920;
	setAttr ".hyp[297].x" 100.99002838134766;
	setAttr ".hyp[297].y" -36.703258514404297;
	setAttr ".hyp[297].nvs" 1920;
	setAttr ".hyp[298].x" 100.99002838134766;
	setAttr ".hyp[298].y" -36.703258514404297;
	setAttr ".hyp[298].nvs" 1920;
	setAttr ".hyp[299].x" 100.99002838134766;
	setAttr ".hyp[299].y" -36.703258514404297;
	setAttr ".hyp[299].nvs" 1920;
	setAttr ".hyp[300].x" 100.99002838134766;
	setAttr ".hyp[300].y" -36.703258514404297;
	setAttr ".hyp[300].nvs" 1920;
	setAttr ".hyp[301].x" 100.99002838134766;
	setAttr ".hyp[301].y" -36.703258514404297;
	setAttr ".hyp[301].nvs" 1920;
	setAttr ".hyp[302].x" 102.10555267333984;
	setAttr ".hyp[302].y" -314.28570556640625;
	setAttr ".hyp[302].nvs" 1920;
	setAttr ".hyp[303].x" -489.32302856445312;
	setAttr ".hyp[303].y" -388.25094604492187;
	setAttr ".hyp[303].nvs" 1920;
	setAttr ".hyp[304].x" -489.32302856445312;
	setAttr ".hyp[304].y" -245.393798828125;
	setAttr ".hyp[304].nvs" 1920;
	setAttr ".hyp[305].x" -489.32302856445312;
	setAttr ".hyp[305].y" -316.82235717773437;
	setAttr ".hyp[305].nvs" 1920;
	setAttr ".hyp[306].x" -489.32302856445312;
	setAttr ".hyp[306].y" -102.53665924072266;
	setAttr ".hyp[306].nvs" 1920;
	setAttr ".hyp[307].x" -489.32302856445312;
	setAttr ".hyp[307].y" -173.96522521972656;
	setAttr ".hyp[307].nvs" 1920;
	setAttr ".hyp[308].x" -489.32302856445312;
	setAttr ".hyp[308].y" -31.108085632324219;
	setAttr ".hyp[308].nvs" 1920;
	setAttr ".hyp[309].x" -489.32302856445312;
	setAttr ".hyp[309].y" 40.320484161376953;
	setAttr ".hyp[309].nvs" 1920;
	setAttr ".hyp[310].x" -489.32302856445312;
	setAttr ".hyp[310].y" 111.74905395507812;
	setAttr ".hyp[310].nvs" 1920;
	setAttr ".hyp[311].x" -489.32302856445312;
	setAttr ".hyp[311].y" 183.17762756347656;
	setAttr ".hyp[311].nvs" 1920;
	setAttr ".hyp[312].x" -489.32302856445312;
	setAttr ".hyp[312].y" -245.393798828125;
	setAttr ".hyp[312].nvs" 1920;
	setAttr ".hyp[313].x" -489.32302856445312;
	setAttr ".hyp[313].y" -173.96522521972656;
	setAttr ".hyp[313].nvs" 1920;
	setAttr ".hyp[314].x" -489.32302856445312;
	setAttr ".hyp[314].y" -31.108085632324219;
	setAttr ".hyp[314].nvs" 1920;
	setAttr ".hyp[315].x" -489.32302856445312;
	setAttr ".hyp[315].y" 254.606201171875;
	setAttr ".hyp[315].nvs" 1920;
	setAttr ".hyp[316].x" -489.32302856445312;
	setAttr ".hyp[316].y" 326.03475952148437;
	setAttr ".hyp[316].nvs" 1920;
	setAttr ".hyp[317].x" 102.10555267333984;
	setAttr ".hyp[317].y" -37.267181396484375;
	setAttr ".hyp[317].nvs" 1920;
	setAttr ".hyp[318].x" 102.10555267333984;
	setAttr ".hyp[318].y" -37.267181396484375;
	setAttr ".hyp[318].nvs" 1920;
	setAttr ".hyp[319].x" 102.10555267333984;
	setAttr ".hyp[319].y" -37.267181396484375;
	setAttr ".hyp[319].nvs" 1920;
	setAttr ".hyp[320].x" 102.10555267333984;
	setAttr ".hyp[320].y" -37.267181396484375;
	setAttr ".hyp[320].nvs" 1920;
	setAttr ".hyp[321].x" 102.10555267333984;
	setAttr ".hyp[321].y" -37.267181396484375;
	setAttr ".hyp[321].nvs" 1920;
	setAttr ".hyp[322].x" 102.10555267333984;
	setAttr ".hyp[322].y" -37.267181396484375;
	setAttr ".hyp[322].nvs" 1920;
	setAttr ".hyp[323].x" 102.10555267333984;
	setAttr ".hyp[323].y" -37.267181396484375;
	setAttr ".hyp[323].nvs" 1920;
	setAttr ".hyp[324].x" 102.10555267333984;
	setAttr ".hyp[324].y" -37.267181396484375;
	setAttr ".hyp[324].nvs" 1920;
	setAttr ".hyp[325].nvs" 1920;
	setAttr ".anf" yes;
createNode hyperGraphInfo -n "nodeEditorPanel3Info";
createNode hyperView -n "hyperView3";
	setAttr ".vl" -type "double2" -676.44621465183502 -454.72453155275679 ;
	setAttr ".vh" -type "double2" 875.70233676940597 385.1451554892235 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout3";
	setAttr ".ihi" 0;
	setAttr -s 326 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 100.99002838134766;
	setAttr ".hyp[1].y" -235.71427917480469;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 100.99002838134766;
	setAttr ".hyp[2].y" -78.571426391601562;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 100.99002838134766;
	setAttr ".hyp[3].y" -157.14285278320312;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 298.13287353515625;
	setAttr ".hyp[4].y" -243.67610168457031;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" 889.56146240234375;
	setAttr ".hyp[5].y" 41.698154449462891;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" 298.13287353515625;
	setAttr ".hyp[6].y" -322.24752807617187;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" 1086.704345703125;
	setAttr ".hyp[7].y" -86.533241271972656;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].x" 1086.704345703125;
	setAttr ".hyp[8].y" 227.75247192382812;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" 692.4185791015625;
	setAttr ".hyp[9].y" -86.533241271972656;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" 1086.704345703125;
	setAttr ".hyp[10].y" -243.67610168457031;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" -293.29568481445312;
	setAttr ".hyp[11].y" 227.75247192382812;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].x" -96.152824401855469;
	setAttr ".hyp[12].y" 357.14285278320312;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].x" -293.29568481445312;
	setAttr ".hyp[13].y" -7.9618134498596191;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].x" 495.2757568359375;
	setAttr ".hyp[14].y" -29.730417251586914;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].x" 495.2757568359375;
	setAttr ".hyp[15].y" -172.58755493164062;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].x" -96.152824401855469;
	setAttr ".hyp[16].y" 71.428573608398438;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].x" -293.29568481445312;
	setAttr ".hyp[17].y" -243.67610168457031;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].x" -293.29568481445312;
	setAttr ".hyp[18].y" -165.10467529296875;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].x" 889.56146240234375;
	setAttr ".hyp[19].y" 184.5552978515625;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].x" 495.2757568359375;
	setAttr ".hyp[20].y" 113.12672424316406;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].x" 889.56146240234375;
	setAttr ".hyp[21].y" 113.12672424316406;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].x" 889.56146240234375;
	setAttr ".hyp[22].y" -29.730417251586914;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].x" 889.56146240234375;
	setAttr ".hyp[23].y" 327.41244506835937;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].x" -293.29568481445312;
	setAttr ".hyp[24].y" 149.18104553222656;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].x" 692.4185791015625;
	setAttr ".hyp[25].y" -243.67610168457031;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].x" 495.2757568359375;
	setAttr ".hyp[26].y" -244.01612854003906;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].x" 100.99002838134766;
	setAttr ".hyp[27].y" 214.28572082519531;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].x" 495.2757568359375;
	setAttr ".hyp[28].y" -101.15898895263672;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].x" -96.152824401855469;
	setAttr ".hyp[29].y" -244.01612854003906;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].x" 298.13287353515625;
	setAttr ".hyp[30].y" -86.533241271972656;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].x" 889.56146240234375;
	setAttr ".hyp[31].y" -172.58755493164062;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].x" 495.2757568359375;
	setAttr ".hyp[32].y" 184.5552978515625;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].x" 889.56146240234375;
	setAttr ".hyp[33].y" 255.98387145996094;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].x" 889.56146240234375;
	setAttr ".hyp[34].y" -101.15898895263672;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].x" 1086.704345703125;
	setAttr ".hyp[35].y" 306.32391357421875;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].x" 692.4185791015625;
	setAttr ".hyp[36].y" 306.32391357421875;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].x" -96.152824401855469;
	setAttr ".hyp[37].y" -101.15898895263672;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].x" -96.152824401855469;
	setAttr ".hyp[38].y" -386.87326049804687;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].x" 495.2757568359375;
	setAttr ".hyp[39].y" -386.87326049804687;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].x" 100.99002838134766;
	setAttr ".hyp[40].y" -386.87326049804687;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].x" 692.4185791015625;
	setAttr ".hyp[41].y" -322.24752807617187;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].x" 1086.704345703125;
	setAttr ".hyp[42].y" 70.609611511230469;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].x" -293.29568481445312;
	setAttr ".hyp[43].y" -86.533241271972656;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].x" 692.4185791015625;
	setAttr ".hyp[44].y" -322.24752807617187;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].x" -96.152824401855469;
	setAttr ".hyp[45].y" 285.71429443359375;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].x" -96.152824401855469;
	setAttr ".hyp[46].y" -315.4447021484375;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].x" 495.2757568359375;
	setAttr ".hyp[47].y" 327.41244506835937;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].x" 692.4185791015625;
	setAttr ".hyp[48].y" 384.89532470703125;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].x" -96.152824401855469;
	setAttr ".hyp[49].y" -172.58755493164062;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].x" 1283.84716796875;
	setAttr ".hyp[50].y" -386.87326049804687;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].x" 1086.704345703125;
	setAttr ".hyp[51].y" -322.24752807617187;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].x" 100.99002838134766;
	setAttr ".hyp[52].y" 357.14285278320312;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].x" 889.56146240234375;
	setAttr ".hyp[53].y" 327.41244506835937;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].x" 495.2757568359375;
	setAttr ".hyp[54].y" 255.98387145996094;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].x" 692.4185791015625;
	setAttr ".hyp[55].y" 149.18104553222656;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].x" 298.13287353515625;
	setAttr ".hyp[56].y" -165.10467529296875;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].x" -293.29568481445312;
	setAttr ".hyp[57].y" 70.609611511230469;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].x" -293.29568481445312;
	setAttr ".hyp[58].y" 384.89532470703125;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].x" 100.99002838134766;
	setAttr ".hyp[59].y" 71.428573608398438;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].x" 298.13287353515625;
	setAttr ".hyp[60].y" 227.75247192382812;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].x" 298.13287353515625;
	setAttr ".hyp[61].y" 70.609611511230469;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].x" 889.56146240234375;
	setAttr ".hyp[62].y" -315.4447021484375;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].x" -293.29568481445312;
	setAttr ".hyp[63].y" -322.24752807617187;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].x" 1086.704345703125;
	setAttr ".hyp[64].y" 149.18104553222656;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].x" 100.99002838134766;
	setAttr ".hyp[65].y" 285.71429443359375;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].x" 1283.84716796875;
	setAttr ".hyp[66].y" -315.4447021484375;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].x" 692.4185791015625;
	setAttr ".hyp[67].y" 70.609611511230469;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].x" 298.13287353515625;
	setAttr ".hyp[68].y" 384.89532470703125;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].x" 889.56146240234375;
	setAttr ".hyp[69].y" -386.87326049804687;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].x" 889.56146240234375;
	setAttr ".hyp[70].y" -244.01612854003906;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].x" 495.2757568359375;
	setAttr ".hyp[71].y" 41.698154449462891;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].x" 1086.704345703125;
	setAttr ".hyp[72].y" 384.89532470703125;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].x" 495.2757568359375;
	setAttr ".hyp[73].y" 327.41244506835937;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].x" 692.4185791015625;
	setAttr ".hyp[74].y" -7.9618134498596191;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].x" -293.29568481445312;
	setAttr ".hyp[75].y" 306.32391357421875;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].x" 298.13287353515625;
	setAttr ".hyp[76].y" 306.32391357421875;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].x" 692.4185791015625;
	setAttr ".hyp[77].y" -165.10467529296875;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].x" 1086.704345703125;
	setAttr ".hyp[78].y" -322.24752807617187;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].x" 298.13287353515625;
	setAttr ".hyp[79].y" 149.18104553222656;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].x" 1086.704345703125;
	setAttr ".hyp[80].y" -7.9618134498596191;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].x" 100.99002838134766;
	setAttr ".hyp[81].y" 142.85714721679687;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].x" -96.152824401855469;
	setAttr ".hyp[82].y" 142.85714721679687;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].x" 692.4185791015625;
	setAttr ".hyp[83].y" 227.75247192382812;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].x" 1086.704345703125;
	setAttr ".hyp[84].y" -165.10467529296875;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].x" -96.152824401855469;
	setAttr ".hyp[85].y" 214.28572082519531;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].x" 298.13287353515625;
	setAttr ".hyp[86].y" -7.9618134498596191;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].x" 495.2757568359375;
	setAttr ".hyp[87].y" -315.4447021484375;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].x" 100.99002838134766;
	setAttr ".hyp[88].y" -36.703258514404297;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].x" 100.99002838134766;
	setAttr ".hyp[89].y" -36.703258514404297;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].x" 100.99002838134766;
	setAttr ".hyp[90].y" -36.703258514404297;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].x" 100.99002838134766;
	setAttr ".hyp[91].y" -36.703258514404297;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].x" 100.99002838134766;
	setAttr ".hyp[92].y" -36.703258514404297;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].x" 2466.704345703125;
	setAttr ".hyp[93].y" 327.41244506835937;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].x" 2466.704345703125;
	setAttr ".hyp[94].y" 41.698154449462891;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].x" 1678.1329345703125;
	setAttr ".hyp[95].y" -101.15898895263672;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].x" 2860.989990234375;
	setAttr ".hyp[96].y" -386.87326049804687;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].x" 2072.418701171875;
	setAttr ".hyp[97].y" 41.698154449462891;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].x" 3058.1328125;
	setAttr ".hyp[98].y" 227.75247192382812;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].x" 2860.989990234375;
	setAttr ".hyp[99].y" 255.98387145996094;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].x" 2860.989990234375;
	setAttr ".hyp[100].y" -101.15898895263672;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].x" 3058.1328125;
	setAttr ".hyp[101].y" 149.18104553222656;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].x" 1678.1329345703125;
	setAttr ".hyp[102].y" -315.4447021484375;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].x" 2072.418701171875;
	setAttr ".hyp[103].y" -315.4447021484375;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].x" 1283.84716796875;
	setAttr ".hyp[104].y" 184.5552978515625;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].x" 1875.2757568359375;
	setAttr ".hyp[105].y" 70.609611511230469;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].x" 2663.84716796875;
	setAttr ".hyp[106].y" -86.533241271972656;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].x" 2663.84716796875;
	setAttr ".hyp[107].y" -243.67610168457031;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].x" 1875.2757568359375;
	setAttr ".hyp[108].y" 149.18104553222656;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].x" 100.99002838134766;
	setAttr ".hyp[109].y" -36.703258514404297;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].x" 2269.5615234375;
	setAttr ".hyp[110].y" -7.9618134498596191;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].x" 2663.84716796875;
	setAttr ".hyp[111].y" 227.75247192382812;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].x" 1283.84716796875;
	setAttr ".hyp[112].y" 113.12672424316406;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].x" 2466.704345703125;
	setAttr ".hyp[113].y" -315.4447021484375;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].x" 2663.84716796875;
	setAttr ".hyp[114].y" -165.10467529296875;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].x" 2466.704345703125;
	setAttr ".hyp[115].y" -29.730417251586914;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].x" 100.99002838134766;
	setAttr ".hyp[116].y" -36.703258514404297;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].x" 1875.2757568359375;
	setAttr ".hyp[117].y" 384.89532470703125;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".hyp[118].x" 2072.418701171875;
	setAttr ".hyp[118].y" 255.98387145996094;
	setAttr ".hyp[118].nvs" 1920;
	setAttr ".hyp[119].x" 1678.1329345703125;
	setAttr ".hyp[119].y" -172.58755493164062;
	setAttr ".hyp[119].nvs" 1920;
	setAttr ".hyp[120].x" 1678.1329345703125;
	setAttr ".hyp[120].y" 41.698154449462891;
	setAttr ".hyp[120].nvs" 1920;
	setAttr ".hyp[121].x" 1480.989990234375;
	setAttr ".hyp[121].y" 384.89532470703125;
	setAttr ".hyp[121].nvs" 1920;
	setAttr ".hyp[122].x" 2072.418701171875;
	setAttr ".hyp[122].y" 327.41244506835937;
	setAttr ".hyp[122].nvs" 1920;
	setAttr ".hyp[123].x" 2269.5615234375;
	setAttr ".hyp[123].y" 70.609611511230469;
	setAttr ".hyp[123].nvs" 1920;
	setAttr ".hyp[124].x" 2860.989990234375;
	setAttr ".hyp[124].y" -172.58755493164062;
	setAttr ".hyp[124].nvs" 1920;
	setAttr ".hyp[125].x" 2269.5615234375;
	setAttr ".hyp[125].y" -322.24752807617187;
	setAttr ".hyp[125].nvs" 1920;
	setAttr ".hyp[126].x" 1678.1329345703125;
	setAttr ".hyp[126].y" -244.01612854003906;
	setAttr ".hyp[126].nvs" 1920;
	setAttr ".hyp[127].x" 2466.704345703125;
	setAttr ".hyp[127].y" 255.98387145996094;
	setAttr ".hyp[127].nvs" 1920;
	setAttr ".hyp[128].x" 1283.84716796875;
	setAttr ".hyp[128].y" -244.01612854003906;
	setAttr ".hyp[128].nvs" 1920;
	setAttr ".hyp[129].x" 1875.2757568359375;
	setAttr ".hyp[129].y" 227.75247192382812;
	setAttr ".hyp[129].nvs" 1920;
	setAttr ".hyp[130].x" 2466.704345703125;
	setAttr ".hyp[130].y" 113.12672424316406;
	setAttr ".hyp[130].nvs" 1920;
	setAttr ".hyp[131].x" 1283.84716796875;
	setAttr ".hyp[131].y" 255.98387145996094;
	setAttr ".hyp[131].nvs" 1920;
	setAttr ".hyp[132].x" 2269.5615234375;
	setAttr ".hyp[132].y" 227.75247192382812;
	setAttr ".hyp[132].nvs" 1920;
	setAttr ".hyp[133].x" 1480.989990234375;
	setAttr ".hyp[133].y" -322.24752807617187;
	setAttr ".hyp[133].nvs" 1920;
	setAttr ".hyp[134].x" 2860.989990234375;
	setAttr ".hyp[134].y" 327.41244506835937;
	setAttr ".hyp[134].nvs" 1920;
	setAttr ".hyp[135].x" 1283.84716796875;
	setAttr ".hyp[135].y" -29.730417251586914;
	setAttr ".hyp[135].nvs" 1920;
	setAttr ".hyp[136].x" 2269.5615234375;
	setAttr ".hyp[136].y" -86.533241271972656;
	setAttr ".hyp[136].nvs" 1920;
	setAttr ".hyp[137].x" 1678.1329345703125;
	setAttr ".hyp[137].y" 327.41244506835937;
	setAttr ".hyp[137].nvs" 1920;
	setAttr ".hyp[138].x" 2466.704345703125;
	setAttr ".hyp[138].y" -101.15898895263672;
	setAttr ".hyp[138].nvs" 1920;
	setAttr ".hyp[139].x" 2269.5615234375;
	setAttr ".hyp[139].y" 306.32391357421875;
	setAttr ".hyp[139].nvs" 1920;
	setAttr ".hyp[140].x" 1283.84716796875;
	setAttr ".hyp[140].y" -172.58755493164062;
	setAttr ".hyp[140].nvs" 1920;
	setAttr ".hyp[141].x" 1480.989990234375;
	setAttr ".hyp[141].y" -243.67610168457031;
	setAttr ".hyp[141].nvs" 1920;
	setAttr ".hyp[142].x" 1875.2757568359375;
	setAttr ".hyp[142].y" 306.32391357421875;
	setAttr ".hyp[142].nvs" 1920;
	setAttr ".hyp[143].x" 2269.5615234375;
	setAttr ".hyp[143].y" -165.10467529296875;
	setAttr ".hyp[143].nvs" 1920;
	setAttr ".hyp[144].x" 1678.1329345703125;
	setAttr ".hyp[144].y" 327.41244506835937;
	setAttr ".hyp[144].nvs" 1920;
	setAttr ".hyp[145].x" 2860.989990234375;
	setAttr ".hyp[145].y" -244.01612854003906;
	setAttr ".hyp[145].nvs" 1920;
	setAttr ".hyp[146].x" 2072.418701171875;
	setAttr ".hyp[146].y" -386.87326049804687;
	setAttr ".hyp[146].nvs" 1920;
	setAttr ".hyp[147].x" 2269.5615234375;
	setAttr ".hyp[147].y" -243.67610168457031;
	setAttr ".hyp[147].nvs" 1920;
	setAttr ".hyp[148].x" 1283.84716796875;
	setAttr ".hyp[148].y" 41.698154449462891;
	setAttr ".hyp[148].nvs" 1920;
	setAttr ".hyp[149].x" 2860.989990234375;
	setAttr ".hyp[149].y" -315.4447021484375;
	setAttr ".hyp[149].nvs" 1920;
	setAttr ".hyp[150].x" 1678.1329345703125;
	setAttr ".hyp[150].y" -386.87326049804687;
	setAttr ".hyp[150].nvs" 1920;
	setAttr ".hyp[151].x" 1283.84716796875;
	setAttr ".hyp[151].y" 327.41244506835937;
	setAttr ".hyp[151].nvs" 1920;
	setAttr ".hyp[152].x" 2663.84716796875;
	setAttr ".hyp[152].y" -322.24752807617187;
	setAttr ".hyp[152].nvs" 1920;
	setAttr ".hyp[153].x" 1678.1329345703125;
	setAttr ".hyp[153].y" 255.98387145996094;
	setAttr ".hyp[153].nvs" 1920;
	setAttr ".hyp[154].x" 2860.989990234375;
	setAttr ".hyp[154].y" 113.12672424316406;
	setAttr ".hyp[154].nvs" 1920;
	setAttr ".hyp[155].x" 1875.2757568359375;
	setAttr ".hyp[155].y" -86.533241271972656;
	setAttr ".hyp[155].nvs" 1920;
	setAttr ".hyp[156].x" 100.99002838134766;
	setAttr ".hyp[156].y" -36.703258514404297;
	setAttr ".hyp[156].nvs" 1920;
	setAttr ".hyp[157].x" 2072.418701171875;
	setAttr ".hyp[157].y" -172.58755493164062;
	setAttr ".hyp[157].nvs" 1920;
	setAttr ".hyp[158].x" 1480.989990234375;
	setAttr ".hyp[158].y" -165.10467529296875;
	setAttr ".hyp[158].nvs" 1920;
	setAttr ".hyp[159].x" 2072.418701171875;
	setAttr ".hyp[159].y" -244.01612854003906;
	setAttr ".hyp[159].nvs" 1920;
	setAttr ".hyp[160].x" 3058.1328125;
	setAttr ".hyp[160].y" 306.32391357421875;
	setAttr ".hyp[160].nvs" 1920;
	setAttr ".hyp[161].x" 1678.1329345703125;
	setAttr ".hyp[161].y" 184.5552978515625;
	setAttr ".hyp[161].nvs" 1920;
	setAttr ".hyp[162].x" 2663.84716796875;
	setAttr ".hyp[162].y" 70.609611511230469;
	setAttr ".hyp[162].nvs" 1920;
	setAttr ".hyp[163].x" 2466.704345703125;
	setAttr ".hyp[163].y" -244.01612854003906;
	setAttr ".hyp[163].nvs" 1920;
	setAttr ".hyp[164].x" 1283.84716796875;
	setAttr ".hyp[164].y" -101.15898895263672;
	setAttr ".hyp[164].nvs" 1920;
	setAttr ".hyp[165].x" 1480.989990234375;
	setAttr ".hyp[165].y" -7.9618134498596191;
	setAttr ".hyp[165].nvs" 1920;
	setAttr ".hyp[166].x" 2663.84716796875;
	setAttr ".hyp[166].y" 384.89532470703125;
	setAttr ".hyp[166].nvs" 1920;
	setAttr ".hyp[167].x" 1678.1329345703125;
	setAttr ".hyp[167].y" 113.12672424316406;
	setAttr ".hyp[167].nvs" 1920;
	setAttr ".hyp[168].x" 2072.418701171875;
	setAttr ".hyp[168].y" -101.15898895263672;
	setAttr ".hyp[168].nvs" 1920;
	setAttr ".hyp[169].x" 2466.704345703125;
	setAttr ".hyp[169].y" -172.58755493164062;
	setAttr ".hyp[169].nvs" 1920;
	setAttr ".hyp[170].x" 2860.989990234375;
	setAttr ".hyp[170].y" -29.730417251586914;
	setAttr ".hyp[170].nvs" 1920;
	setAttr ".hyp[171].x" 3058.1328125;
	setAttr ".hyp[171].y" 70.609611511230469;
	setAttr ".hyp[171].nvs" 1920;
	setAttr ".hyp[172].x" 100.99002838134766;
	setAttr ".hyp[172].y" -36.703258514404297;
	setAttr ".hyp[172].nvs" 1920;
	setAttr ".hyp[173].x" 1875.2757568359375;
	setAttr ".hyp[173].y" -322.24752807617187;
	setAttr ".hyp[173].nvs" 1920;
	setAttr ".hyp[174].x" 1875.2757568359375;
	setAttr ".hyp[174].y" -322.24752807617187;
	setAttr ".hyp[174].nvs" 1920;
	setAttr ".hyp[175].x" 2860.989990234375;
	setAttr ".hyp[175].y" 327.41244506835937;
	setAttr ".hyp[175].nvs" 1920;
	setAttr ".hyp[176].x" 1480.989990234375;
	setAttr ".hyp[176].y" 149.18104553222656;
	setAttr ".hyp[176].nvs" 1920;
	setAttr ".hyp[177].x" 2663.84716796875;
	setAttr ".hyp[177].y" 149.18104553222656;
	setAttr ".hyp[177].nvs" 1920;
	setAttr ".hyp[178].x" 2860.989990234375;
	setAttr ".hyp[178].y" 184.5552978515625;
	setAttr ".hyp[178].nvs" 1920;
	setAttr ".hyp[179].x" 1480.989990234375;
	setAttr ".hyp[179].y" -86.533241271972656;
	setAttr ".hyp[179].nvs" 1920;
	setAttr ".hyp[180].x" 3058.1328125;
	setAttr ".hyp[180].y" -7.9618134498596191;
	setAttr ".hyp[180].nvs" 1920;
	setAttr ".hyp[181].x" 1480.989990234375;
	setAttr ".hyp[181].y" 306.32391357421875;
	setAttr ".hyp[181].nvs" 1920;
	setAttr ".hyp[182].x" 1875.2757568359375;
	setAttr ".hyp[182].y" -243.67610168457031;
	setAttr ".hyp[182].nvs" 1920;
	setAttr ".hyp[183].x" 2466.704345703125;
	setAttr ".hyp[183].y" 184.5552978515625;
	setAttr ".hyp[183].nvs" 1920;
	setAttr ".hyp[184].x" 1875.2757568359375;
	setAttr ".hyp[184].y" -165.10467529296875;
	setAttr ".hyp[184].nvs" 1920;
	setAttr ".hyp[185].x" 2663.84716796875;
	setAttr ".hyp[185].y" -7.9618134498596191;
	setAttr ".hyp[185].nvs" 1920;
	setAttr ".hyp[186].x" 2072.418701171875;
	setAttr ".hyp[186].y" -29.730417251586914;
	setAttr ".hyp[186].nvs" 1920;
	setAttr ".hyp[187].x" 2269.5615234375;
	setAttr ".hyp[187].y" -322.24752807617187;
	setAttr ".hyp[187].nvs" 1920;
	setAttr ".hyp[188].x" 1283.84716796875;
	setAttr ".hyp[188].y" 327.41244506835937;
	setAttr ".hyp[188].nvs" 1920;
	setAttr ".hyp[189].x" 2269.5615234375;
	setAttr ".hyp[189].y" 149.18104553222656;
	setAttr ".hyp[189].nvs" 1920;
	setAttr ".hyp[190].x" 3058.1328125;
	setAttr ".hyp[190].y" 384.89532470703125;
	setAttr ".hyp[190].nvs" 1920;
	setAttr ".hyp[191].x" 2663.84716796875;
	setAttr ".hyp[191].y" 306.32391357421875;
	setAttr ".hyp[191].nvs" 1920;
	setAttr ".hyp[192].x" 2860.989990234375;
	setAttr ".hyp[192].y" 41.698154449462891;
	setAttr ".hyp[192].nvs" 1920;
	setAttr ".hyp[193].x" 2466.704345703125;
	setAttr ".hyp[193].y" 327.41244506835937;
	setAttr ".hyp[193].nvs" 1920;
	setAttr ".hyp[194].x" 2466.704345703125;
	setAttr ".hyp[194].y" -386.87326049804687;
	setAttr ".hyp[194].nvs" 1920;
	setAttr ".hyp[195].x" 1875.2757568359375;
	setAttr ".hyp[195].y" -7.9618134498596191;
	setAttr ".hyp[195].nvs" 1920;
	setAttr ".hyp[196].x" 1678.1329345703125;
	setAttr ".hyp[196].y" -29.730417251586914;
	setAttr ".hyp[196].nvs" 1920;
	setAttr ".hyp[197].x" 2663.84716796875;
	setAttr ".hyp[197].y" -322.24752807617187;
	setAttr ".hyp[197].nvs" 1920;
	setAttr ".hyp[198].x" 1480.989990234375;
	setAttr ".hyp[198].y" 70.609611511230469;
	setAttr ".hyp[198].nvs" 1920;
	setAttr ".hyp[199].x" 1480.989990234375;
	setAttr ".hyp[199].y" 227.75247192382812;
	setAttr ".hyp[199].nvs" 1920;
	setAttr ".hyp[200].x" 2072.418701171875;
	setAttr ".hyp[200].y" 327.41244506835937;
	setAttr ".hyp[200].nvs" 1920;
	setAttr ".hyp[201].x" 2072.418701171875;
	setAttr ".hyp[201].y" 113.12672424316406;
	setAttr ".hyp[201].nvs" 1920;
	setAttr ".hyp[202].x" 2269.5615234375;
	setAttr ".hyp[202].y" 384.89532470703125;
	setAttr ".hyp[202].nvs" 1920;
	setAttr ".hyp[203].x" 1480.989990234375;
	setAttr ".hyp[203].y" -322.24752807617187;
	setAttr ".hyp[203].nvs" 1920;
	setAttr ".hyp[204].x" 2072.418701171875;
	setAttr ".hyp[204].y" 184.5552978515625;
	setAttr ".hyp[204].nvs" 1920;
	setAttr ".hyp[205].x" 100.99002838134766;
	setAttr ".hyp[205].y" -36.703258514404297;
	setAttr ".hyp[205].nvs" 1920;
	setAttr ".hyp[206].x" 100.99002838134766;
	setAttr ".hyp[206].y" -36.703258514404297;
	setAttr ".hyp[206].nvs" 1920;
	setAttr ".hyp[207].nvs" 1920;
	setAttr ".hyp[208].x" 3255.275634765625;
	setAttr ".hyp[208].y" 41.698154449462891;
	setAttr ".hyp[208].nvs" 1920;
	setAttr ".hyp[209].x" 3255.275634765625;
	setAttr ".hyp[209].y" -244.01612854003906;
	setAttr ".hyp[209].nvs" 1920;
	setAttr ".hyp[210].x" 3058.1328125;
	setAttr ".hyp[210].y" -165.10467529296875;
	setAttr ".hyp[210].nvs" 1920;
	setAttr ".hyp[211].x" 3255.275634765625;
	setAttr ".hyp[211].y" -101.15898895263672;
	setAttr ".hyp[211].nvs" 1920;
	setAttr ".hyp[212].x" 3058.1328125;
	setAttr ".hyp[212].y" -322.24752807617187;
	setAttr ".hyp[212].nvs" 1920;
	setAttr ".hyp[213].x" 3255.275634765625;
	setAttr ".hyp[213].y" -29.730417251586914;
	setAttr ".hyp[213].nvs" 1920;
	setAttr ".hyp[214].x" 3255.275634765625;
	setAttr ".hyp[214].y" -172.58755493164062;
	setAttr ".hyp[214].nvs" 1920;
	setAttr ".hyp[215].x" 3058.1328125;
	setAttr ".hyp[215].y" -243.67610168457031;
	setAttr ".hyp[215].nvs" 1920;
	setAttr ".hyp[216].x" 3255.275634765625;
	setAttr ".hyp[216].y" 113.12672424316406;
	setAttr ".hyp[216].nvs" 1920;
	setAttr ".hyp[217].x" 3058.1328125;
	setAttr ".hyp[217].y" -322.24752807617187;
	setAttr ".hyp[217].nvs" 1920;
	setAttr ".hyp[218].x" 3255.275634765625;
	setAttr ".hyp[218].y" -315.4447021484375;
	setAttr ".hyp[218].nvs" 1920;
	setAttr ".hyp[219].x" 3255.275634765625;
	setAttr ".hyp[219].y" -386.87326049804687;
	setAttr ".hyp[219].nvs" 1920;
	setAttr ".hyp[220].x" 100.99002838134766;
	setAttr ".hyp[220].y" -36.703258514404297;
	setAttr ".hyp[220].nvs" 1920;
	setAttr ".hyp[221].x" 100.99002838134766;
	setAttr ".hyp[221].y" -36.703258514404297;
	setAttr ".hyp[221].nvs" 1920;
	setAttr ".hyp[222].x" 100.99002838134766;
	setAttr ".hyp[222].y" -36.703258514404297;
	setAttr ".hyp[222].nvs" 1920;
	setAttr ".hyp[223].x" 100.99002838134766;
	setAttr ".hyp[223].y" -36.703258514404297;
	setAttr ".hyp[223].nvs" 1920;
	setAttr ".hyp[224].x" 100.99002838134766;
	setAttr ".hyp[224].y" -36.703258514404297;
	setAttr ".hyp[224].nvs" 1920;
	setAttr ".hyp[225].x" 100.99002838134766;
	setAttr ".hyp[225].y" -36.703258514404297;
	setAttr ".hyp[225].nvs" 1920;
	setAttr ".hyp[226].x" 100.99002838134766;
	setAttr ".hyp[226].y" -36.703258514404297;
	setAttr ".hyp[226].nvs" 1920;
	setAttr ".hyp[227].x" 100.99002838134766;
	setAttr ".hyp[227].y" -36.703258514404297;
	setAttr ".hyp[227].nvs" 1920;
	setAttr ".hyp[228].x" 100.99002838134766;
	setAttr ".hyp[228].y" -36.703258514404297;
	setAttr ".hyp[228].nvs" 1920;
	setAttr ".hyp[229].x" 100.99002838134766;
	setAttr ".hyp[229].y" -36.703258514404297;
	setAttr ".hyp[229].nvs" 1920;
	setAttr ".hyp[230].x" 100.99002838134766;
	setAttr ".hyp[230].y" -36.703258514404297;
	setAttr ".hyp[230].nvs" 1920;
	setAttr ".hyp[231].x" 100.99002838134766;
	setAttr ".hyp[231].y" -36.703258514404297;
	setAttr ".hyp[231].nvs" 1920;
	setAttr ".hyp[232].x" 100.99002838134766;
	setAttr ".hyp[232].y" -36.703258514404297;
	setAttr ".hyp[232].nvs" 1920;
	setAttr ".hyp[233].x" 3058.1328125;
	setAttr ".hyp[233].y" -86.533241271972656;
	setAttr ".hyp[233].nvs" 1920;
	setAttr ".hyp[234].x" 100.99002838134766;
	setAttr ".hyp[234].y" -36.703258514404297;
	setAttr ".hyp[234].nvs" 1920;
	setAttr ".hyp[235].x" 100.99002838134766;
	setAttr ".hyp[235].y" -36.703258514404297;
	setAttr ".hyp[235].nvs" 1920;
	setAttr ".hyp[236].x" 100.99002838134766;
	setAttr ".hyp[236].y" -36.703258514404297;
	setAttr ".hyp[236].nvs" 1920;
	setAttr ".hyp[237].x" 100.99002838134766;
	setAttr ".hyp[237].y" -36.703258514404297;
	setAttr ".hyp[237].nvs" 1920;
	setAttr ".hyp[238].x" 100.99002838134766;
	setAttr ".hyp[238].y" -36.703258514404297;
	setAttr ".hyp[238].nvs" 1920;
	setAttr ".hyp[239].x" 100.99002838134766;
	setAttr ".hyp[239].y" -36.703258514404297;
	setAttr ".hyp[239].nvs" 1920;
	setAttr ".hyp[240].x" 100.99002838134766;
	setAttr ".hyp[240].y" -36.703258514404297;
	setAttr ".hyp[240].nvs" 1920;
	setAttr ".hyp[241].x" 3255.275634765625;
	setAttr ".hyp[241].y" 327.41244506835937;
	setAttr ".hyp[241].nvs" 1920;
	setAttr ".hyp[242].x" 100.99002838134766;
	setAttr ".hyp[242].y" -36.703258514404297;
	setAttr ".hyp[242].nvs" 1920;
	setAttr ".hyp[243].x" 3452.418701171875;
	setAttr ".hyp[243].y" 384.89532470703125;
	setAttr ".hyp[243].nvs" 1920;
	setAttr ".hyp[244].x" 100.99002838134766;
	setAttr ".hyp[244].y" -36.703258514404297;
	setAttr ".hyp[244].nvs" 1920;
	setAttr ".hyp[245].x" 3255.275634765625;
	setAttr ".hyp[245].y" 184.5552978515625;
	setAttr ".hyp[245].nvs" 1920;
	setAttr ".hyp[246].x" 3255.275634765625;
	setAttr ".hyp[246].y" 255.98387145996094;
	setAttr ".hyp[246].nvs" 1920;
	setAttr ".hyp[247].x" 100.99002838134766;
	setAttr ".hyp[247].y" -36.703258514404297;
	setAttr ".hyp[247].nvs" 1920;
	setAttr ".hyp[248].x" 3255.275634765625;
	setAttr ".hyp[248].y" 327.41244506835937;
	setAttr ".hyp[248].nvs" 1920;
	setAttr ".hyp[249].x" 100.99002838134766;
	setAttr ".hyp[249].y" -36.703258514404297;
	setAttr ".hyp[249].nvs" 1920;
	setAttr ".hyp[250].x" 100.99002838134766;
	setAttr ".hyp[250].y" -36.703258514404297;
	setAttr ".hyp[250].nvs" 1920;
	setAttr ".hyp[251].x" 3452.418701171875;
	setAttr ".hyp[251].y" 306.32391357421875;
	setAttr ".hyp[251].nvs" 1920;
	setAttr ".hyp[252].x" 3452.418701171875;
	setAttr ".hyp[252].y" 227.75247192382812;
	setAttr ".hyp[252].nvs" 1920;
	setAttr ".hyp[253].x" 3452.418701171875;
	setAttr ".hyp[253].y" 149.18104553222656;
	setAttr ".hyp[253].nvs" 1920;
	setAttr ".hyp[254].x" 3452.418701171875;
	setAttr ".hyp[254].y" 70.609611511230469;
	setAttr ".hyp[254].nvs" 1920;
	setAttr ".hyp[255].x" 3452.418701171875;
	setAttr ".hyp[255].y" -7.9618134498596191;
	setAttr ".hyp[255].nvs" 1920;
	setAttr ".hyp[256].x" 100.99002838134766;
	setAttr ".hyp[256].y" -36.703258514404297;
	setAttr ".hyp[256].nvs" 1920;
	setAttr ".hyp[257].x" 100.99002838134766;
	setAttr ".hyp[257].y" -36.703258514404297;
	setAttr ".hyp[257].nvs" 1920;
	setAttr ".hyp[258].x" 3452.418701171875;
	setAttr ".hyp[258].y" -86.533241271972656;
	setAttr ".hyp[258].nvs" 1920;
	setAttr ".hyp[259].x" 100.99002838134766;
	setAttr ".hyp[259].y" -36.703258514404297;
	setAttr ".hyp[259].nvs" 1920;
	setAttr ".hyp[260].x" 100.99002838134766;
	setAttr ".hyp[260].y" -36.703258514404297;
	setAttr ".hyp[260].nvs" 1920;
	setAttr ".hyp[261].x" 100.99002838134766;
	setAttr ".hyp[261].y" -36.703258514404297;
	setAttr ".hyp[261].nvs" 1920;
	setAttr ".hyp[262].x" 100.99002838134766;
	setAttr ".hyp[262].y" -36.703258514404297;
	setAttr ".hyp[262].nvs" 1920;
	setAttr ".hyp[263].x" 100.99002838134766;
	setAttr ".hyp[263].y" -36.703258514404297;
	setAttr ".hyp[263].nvs" 1920;
	setAttr ".hyp[264].x" 100.99002838134766;
	setAttr ".hyp[264].y" -36.703258514404297;
	setAttr ".hyp[264].nvs" 1920;
	setAttr ".hyp[265].x" 100.99002838134766;
	setAttr ".hyp[265].y" -36.703258514404297;
	setAttr ".hyp[265].nvs" 1920;
	setAttr ".hyp[266].x" 100.99002838134766;
	setAttr ".hyp[266].y" -36.703258514404297;
	setAttr ".hyp[266].nvs" 1920;
	setAttr ".hyp[267].x" 100.99002838134766;
	setAttr ".hyp[267].y" -36.703258514404297;
	setAttr ".hyp[267].nvs" 1920;
	setAttr ".hyp[268].x" 100.99002838134766;
	setAttr ".hyp[268].y" -36.703258514404297;
	setAttr ".hyp[268].nvs" 1920;
	setAttr ".hyp[269].x" 100.99002838134766;
	setAttr ".hyp[269].y" -36.703258514404297;
	setAttr ".hyp[269].nvs" 1920;
	setAttr ".hyp[270].x" 100.99002838134766;
	setAttr ".hyp[270].y" -36.703258514404297;
	setAttr ".hyp[270].nvs" 1920;
	setAttr ".hyp[271].x" 3452.418701171875;
	setAttr ".hyp[271].y" -165.10467529296875;
	setAttr ".hyp[271].nvs" 1920;
	setAttr ".hyp[272].x" 100.99002838134766;
	setAttr ".hyp[272].y" -36.703258514404297;
	setAttr ".hyp[272].nvs" 1920;
	setAttr ".hyp[273].x" 100.99002838134766;
	setAttr ".hyp[273].y" -36.703258514404297;
	setAttr ".hyp[273].nvs" 1920;
	setAttr ".hyp[274].x" 100.99002838134766;
	setAttr ".hyp[274].y" -36.703258514404297;
	setAttr ".hyp[274].nvs" 1920;
	setAttr ".hyp[275].x" 3452.418701171875;
	setAttr ".hyp[275].y" -243.67610168457031;
	setAttr ".hyp[275].nvs" 1920;
	setAttr ".hyp[276].x" 3452.418701171875;
	setAttr ".hyp[276].y" -322.24752807617187;
	setAttr ".hyp[276].nvs" 1920;
	setAttr ".hyp[277].x" 3452.418701171875;
	setAttr ".hyp[277].y" -322.24752807617187;
	setAttr ".hyp[277].nvs" 1920;
	setAttr ".hyp[278].x" 3649.5615234375;
	setAttr ".hyp[278].y" -386.87326049804687;
	setAttr ".hyp[278].nvs" 1920;
	setAttr ".hyp[279].x" 3649.5615234375;
	setAttr ".hyp[279].y" -315.4447021484375;
	setAttr ".hyp[279].nvs" 1920;
	setAttr ".hyp[280].x" 3649.5615234375;
	setAttr ".hyp[280].y" -244.01612854003906;
	setAttr ".hyp[280].nvs" 1920;
	setAttr ".hyp[281].x" 3649.5615234375;
	setAttr ".hyp[281].y" -172.58755493164062;
	setAttr ".hyp[281].nvs" 1920;
	setAttr ".hyp[282].x" 3649.5615234375;
	setAttr ".hyp[282].y" -101.15898895263672;
	setAttr ".hyp[282].nvs" 1920;
	setAttr ".hyp[283].x" 3649.5615234375;
	setAttr ".hyp[283].y" -29.730417251586914;
	setAttr ".hyp[283].nvs" 1920;
	setAttr ".hyp[284].x" 3649.5615234375;
	setAttr ".hyp[284].y" 41.698154449462891;
	setAttr ".hyp[284].nvs" 1920;
	setAttr ".hyp[285].x" 3649.5615234375;
	setAttr ".hyp[285].y" 113.12672424316406;
	setAttr ".hyp[285].nvs" 1920;
	setAttr ".hyp[286].x" 3649.5615234375;
	setAttr ".hyp[286].y" 184.5552978515625;
	setAttr ".hyp[286].nvs" 1920;
	setAttr ".hyp[287].x" 3649.5615234375;
	setAttr ".hyp[287].y" 255.98387145996094;
	setAttr ".hyp[287].nvs" 1920;
	setAttr ".hyp[288].x" 3649.5615234375;
	setAttr ".hyp[288].y" 327.41244506835937;
	setAttr ".hyp[288].nvs" 1920;
	setAttr ".hyp[289].x" 3649.5615234375;
	setAttr ".hyp[289].y" 327.41244506835937;
	setAttr ".hyp[289].nvs" 1920;
	setAttr ".hyp[290].x" 100.99002838134766;
	setAttr ".hyp[290].y" -36.703258514404297;
	setAttr ".hyp[290].nvs" 1920;
	setAttr ".hyp[291].x" 100.99002838134766;
	setAttr ".hyp[291].y" -36.703258514404297;
	setAttr ".hyp[291].nvs" 1920;
	setAttr ".hyp[292].x" 100.99002838134766;
	setAttr ".hyp[292].y" -36.703258514404297;
	setAttr ".hyp[292].nvs" 1920;
	setAttr ".hyp[293].x" 100.99002838134766;
	setAttr ".hyp[293].y" -36.703258514404297;
	setAttr ".hyp[293].nvs" 1920;
	setAttr ".hyp[294].x" 100.99002838134766;
	setAttr ".hyp[294].y" -36.703258514404297;
	setAttr ".hyp[294].nvs" 1920;
	setAttr ".hyp[295].x" 100.99002838134766;
	setAttr ".hyp[295].y" -36.703258514404297;
	setAttr ".hyp[295].nvs" 1920;
	setAttr ".hyp[296].x" 100.99002838134766;
	setAttr ".hyp[296].y" -36.703258514404297;
	setAttr ".hyp[296].nvs" 1920;
	setAttr ".hyp[297].x" 100.99002838134766;
	setAttr ".hyp[297].y" -36.703258514404297;
	setAttr ".hyp[297].nvs" 1920;
	setAttr ".hyp[298].x" 100.99002838134766;
	setAttr ".hyp[298].y" -36.703258514404297;
	setAttr ".hyp[298].nvs" 1920;
	setAttr ".hyp[299].x" 100.99002838134766;
	setAttr ".hyp[299].y" -36.703258514404297;
	setAttr ".hyp[299].nvs" 1920;
	setAttr ".hyp[300].x" 100.99002838134766;
	setAttr ".hyp[300].y" -36.703258514404297;
	setAttr ".hyp[300].nvs" 1920;
	setAttr ".hyp[301].x" 100.99002838134766;
	setAttr ".hyp[301].y" -36.703258514404297;
	setAttr ".hyp[301].nvs" 1920;
	setAttr ".hyp[302].x" 102.10555267333984;
	setAttr ".hyp[302].y" -314.28570556640625;
	setAttr ".hyp[302].nvs" 1920;
	setAttr ".hyp[303].x" -489.32302856445312;
	setAttr ".hyp[303].y" -388.25094604492187;
	setAttr ".hyp[303].nvs" 1920;
	setAttr ".hyp[304].x" -489.32302856445312;
	setAttr ".hyp[304].y" -245.393798828125;
	setAttr ".hyp[304].nvs" 1920;
	setAttr ".hyp[305].x" -489.32302856445312;
	setAttr ".hyp[305].y" -316.82235717773437;
	setAttr ".hyp[305].nvs" 1920;
	setAttr ".hyp[306].x" -489.32302856445312;
	setAttr ".hyp[306].y" -102.53665924072266;
	setAttr ".hyp[306].nvs" 1920;
	setAttr ".hyp[307].x" -489.32302856445312;
	setAttr ".hyp[307].y" -173.96522521972656;
	setAttr ".hyp[307].nvs" 1920;
	setAttr ".hyp[308].x" -489.32302856445312;
	setAttr ".hyp[308].y" -31.108085632324219;
	setAttr ".hyp[308].nvs" 1920;
	setAttr ".hyp[309].x" -489.32302856445312;
	setAttr ".hyp[309].y" 40.320484161376953;
	setAttr ".hyp[309].nvs" 1920;
	setAttr ".hyp[310].x" -489.32302856445312;
	setAttr ".hyp[310].y" 111.74905395507812;
	setAttr ".hyp[310].nvs" 1920;
	setAttr ".hyp[311].x" -489.32302856445312;
	setAttr ".hyp[311].y" 183.17762756347656;
	setAttr ".hyp[311].nvs" 1920;
	setAttr ".hyp[312].x" -489.32302856445312;
	setAttr ".hyp[312].y" -245.393798828125;
	setAttr ".hyp[312].nvs" 1920;
	setAttr ".hyp[313].x" -489.32302856445312;
	setAttr ".hyp[313].y" -173.96522521972656;
	setAttr ".hyp[313].nvs" 1920;
	setAttr ".hyp[314].x" -489.32302856445312;
	setAttr ".hyp[314].y" -31.108085632324219;
	setAttr ".hyp[314].nvs" 1920;
	setAttr ".hyp[315].x" -489.32302856445312;
	setAttr ".hyp[315].y" 254.606201171875;
	setAttr ".hyp[315].nvs" 1920;
	setAttr ".hyp[316].x" -489.32302856445312;
	setAttr ".hyp[316].y" 326.03475952148437;
	setAttr ".hyp[316].nvs" 1920;
	setAttr ".hyp[317].x" 102.10555267333984;
	setAttr ".hyp[317].y" -37.267181396484375;
	setAttr ".hyp[317].nvs" 1920;
	setAttr ".hyp[318].x" 102.10555267333984;
	setAttr ".hyp[318].y" -37.267181396484375;
	setAttr ".hyp[318].nvs" 1920;
	setAttr ".hyp[319].x" 102.10555267333984;
	setAttr ".hyp[319].y" -37.267181396484375;
	setAttr ".hyp[319].nvs" 1920;
	setAttr ".hyp[320].x" 102.10555267333984;
	setAttr ".hyp[320].y" -37.267181396484375;
	setAttr ".hyp[320].nvs" 1920;
	setAttr ".hyp[321].x" 102.10555267333984;
	setAttr ".hyp[321].y" -37.267181396484375;
	setAttr ".hyp[321].nvs" 1920;
	setAttr ".hyp[322].x" 102.10555267333984;
	setAttr ".hyp[322].y" -37.267181396484375;
	setAttr ".hyp[322].nvs" 1920;
	setAttr ".hyp[323].x" 102.10555267333984;
	setAttr ".hyp[323].y" -37.267181396484375;
	setAttr ".hyp[323].nvs" 1920;
	setAttr ".hyp[324].x" 102.10555267333984;
	setAttr ".hyp[324].y" -37.267181396484375;
	setAttr ".hyp[324].nvs" 1920;
	setAttr ".hyp[325].nvs" 1920;
	setAttr ".anf" yes;
createNode hyperGraphInfo -n "nodeEditorPanel4Info";
createNode hyperView -n "hyperView4";
	setAttr ".vl" -type "double2" -4.127164075106994 -446.24387618661382 ;
	setAttr ".vh" -type "double2" 1024.683769623821 135.336362407434 ;
	setAttr ".dag" no;
createNode hyperLayout -n "hyperLayout4";
	setAttr ".ihi" 0;
	setAttr -s 35 ".hyp";
	setAttr ".hyp[0].x" 1.4285714626312256;
	setAttr ".hyp[0].y" -72.857139587402344;
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].x" 1031.4285888671875;
	setAttr ".hyp[1].y" -220;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].x" 241.42857360839844;
	setAttr ".hyp[2].y" -144.28572082519531;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].x" 481.42855834960937;
	setAttr ".hyp[3].y" -144.28572082519531;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].x" 721.4285888671875;
	setAttr ".hyp[4].y" -144.28572082519531;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].x" -2.8571429252624512;
	setAttr ".hyp[5].y" -177.14285278320312;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].x" 512.0816650390625;
	setAttr ".hyp[6].y" -301.42855834960937;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].x" 512.0816650390625;
	setAttr ".hyp[7].y" -222.85714721679687;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].x" 906.36737060546875;
	setAttr ".hyp[9].y" -1.4285714626312256;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].x" 709.2244873046875;
	setAttr ".hyp[10].y" 56.764934539794922;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].x" 906.36737060546875;
	setAttr ".hyp[11].y" -306.99343872070312;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].x" 906.36737060546875;
	setAttr ".hyp[12].y" -378.4219970703125;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].x" 709.2244873046875;
	setAttr ".hyp[13].y" -222.85714721679687;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].x" 1103.51025390625;
	setAttr ".hyp[14].y" 135.33636474609375;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].x" 1103.51025390625;
	setAttr ".hyp[15].y" 56.764934539794922;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].x" 709.2244873046875;
	setAttr ".hyp[16].y" -21.806495666503906;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].x" 906.36737060546875;
	setAttr ".hyp[17].y" 70;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].x" 906.36737060546875;
	setAttr ".hyp[18].y" -72.857139587402344;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].x" 709.2244873046875;
	setAttr ".hyp[19].y" -301.42855834960937;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].x" 906.36737060546875;
	setAttr ".hyp[20].y" 70;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].x" 314.93878173828125;
	setAttr ".hyp[21].y" -1.4285714626312256;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].x" 314.93878173828125;
	setAttr ".hyp[22].y" -378.4219970703125;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].x" 314.93878173828125;
	setAttr ".hyp[23].y" -306.99343872070312;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].x" 314.93878173828125;
	setAttr ".hyp[24].y" -72.857139587402344;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].x" 314.93878173828125;
	setAttr ".hyp[25].y" -235.56486511230469;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].x" 314.93878173828125;
	setAttr ".hyp[26].y" 70;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].x" 117.79593658447266;
	setAttr ".hyp[27].y" 135.33636474609375;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].x" 117.79593658447266;
	setAttr ".hyp[28].y" -255.71427917480469;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].x" 117.79593658447266;
	setAttr ".hyp[29].y" -334.28570556640625;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].x" 512.0816650390625;
	setAttr ".hyp[30].y" -378.4219970703125;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].x" 512.0816650390625;
	setAttr ".hyp[31].y" -72.857139587402344;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].x" 512.0816650390625;
	setAttr ".hyp[32].y" -1.4285714626312256;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].x" 512.0816650390625;
	setAttr ".hyp[33].y" 70;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].x" 709.2244873046875;
	setAttr ".hyp[34].y" 135.33636474609375;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".anf" yes;
createNode fourByFourMatrix -n "MirrorMatrix";
	setAttr ".i00" -1;
createNode multMatrix -n "ClavicleJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ClavicleJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.18277178526715909 4.7823191767933713 -0.17168001866716526 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "ShoulderJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ShoulderJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.49251636929816311 4.6397724625254124 -0.18170445651605999 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "ElbowJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ElbowJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -1.3137995401795799 4.6397713083930121 -0.18252574101109348 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "WristJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "WristJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.2719546216707331 4.6397906768967072 -0.16675952650879111 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Thumb1JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Thumb1JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.3108034952913421 4.639790676896709 0.066775009269648578 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Thumb2JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Thumb2JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.3165081204993787 4.639790676896709 0.25489063126875061 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Thumb3JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Thumb3JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.3222127457074149 4.6397906768967081 0.44300625326785265 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Thumb4JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Thumb4JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.3279173709154519 4.6397906768967081 0.63112187526695462 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Thumb5JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Thumb5JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.3336219961234881 4.639790676896709 0.81923749726605688 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Index1JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Index1JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.478 4.639790676896709 0.043603771463512471 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Index2JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Index2JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.6246670251772484 4.639790676896709 0.16153940524113655 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Index3JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Index3JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.7713340503544956 4.639790676896709 0.27947503901876009 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Index4JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Index4JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.9180010755317434 4.639790676896709 0.39741067279638465 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Index5JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Index5JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -3.0646681007089911 4.6397906768967099 0.51534630657400793 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Middle1JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Middle1JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.478 4.639790676896709 -0.06083186058409628 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Middle2JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Middle2JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.6560285449883709 4.6397906768967081 0.00020802111792419747 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Middle3JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Middle3JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.8340570899767421 4.639790676896709 0.061247902819944501 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Middle4JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Middle4JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -3.0120856349651142 4.639790676896709 0.12228778452196541 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Middle5JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Middle5JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -3.1901141799534849 4.639790676896709 0.18332766622398566 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Ring1JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Ring1JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.4780000000000006 4.6397906768967099 -0.16675952650879119 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Ring2JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Ring2JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.6662020987897668 4.6397906768967099 -0.16675952650879117 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Ring3JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Ring3JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.8544041975795342 4.6397906768967099 -0.16675952650879117 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Ring4JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Ring4JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -3.0426062963693012 4.6397906768967099 -0.16675952650879119 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Ring5JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Ring5JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -3.2308083951590683 4.639790676896709 -0.16675952650879117 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Pinky1JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Pinky1JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.4777967909717993 4.6397906768967081 -0.27370601489997959 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Pinky2JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Pinky2JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.644803211436733 4.639790676896709 -0.36047516559516013 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Pinky3JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Pinky3JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.8118096319016672 4.639790676896709 -0.44724431629034084 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Pinky4JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Pinky4JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -2.9788160523666001 4.639790676896709 -0.53401346698552099 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "Pinky5JntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "Pinky5JntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -3.1458224728315347 4.639790676896709 -0.62078261768070175 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "HipJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "HipJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.26670973576299006 2.9501540543071365 -6.9388939039072284e-018 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "KneeJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "KneeJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.26670973576299034 1.6391747877093601 0.022883228218011264 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "AnkleScaleFixJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "AnkleScaleFixJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.26670973576299062 0.32799582220429957 0.022883228218011267 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "BallJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "BallJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.26670981769694169 0.00019969890728493978 0.40427696905044824 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "FootOutJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FootOutJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.42944575480927843 0.00019973958857764479 0.058584223766861614 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "ToeJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "ToeJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.26670981769694191 0.00019969890728493978 0.73207171042671382 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "FootInJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "FootInJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.12020233050702375 0.00019966228283630472 0.058584223766861621 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode multMatrix -n "HeelJntGDMultMatrix";
	setAttr -s 2 ".i";
createNode decomposeMatrix -n "HeelJntGDDecomposeMatrix";
	setAttr ".ot" -type "double3" -0.26670976252600714 0.00019969890727114794 -0.16909304854903734 ;
	setAttr ".or" -type "double3" 0 180 0 ;
	setAttr ".os" -type "double3" 1 1 -1 ;
createNode lambert -n "lambert2";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode script -n "xgenGlobals";
	setAttr ".a" -type "string" "import maya.cmds as cmds\nif cmds.about(batch=True):\n\txgg.Playblast=False\nelse:\n\txgui.createDescriptionEditor(False).setGlobals( previewSel=0, previewMode=0, clearSel=0, clearMode=0, playblast=1, clearCache=0, autoCreateMR=1 )";
	setAttr ".stp" 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr -av ".unw" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -k on ".an";
	setAttr -k on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -k on ".mico";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -k on ".micr";
	setAttr -k on ".micg";
	setAttr -k on ".micb";
	setAttr -cb on ".mica";
	setAttr -av -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".s";
select -ne :lambert1;
	setAttr ".c" -type "float3" 1 0 0 ;
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 87 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -av ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av ".outf";
	setAttr -k on ".gama";
	setAttr -k on ".an";
	setAttr -k on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep" 1;
	setAttr -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -k on ".pff";
	setAttr -k on ".peie";
	setAttr -k on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w" 640;
	setAttr -av ".h" 480;
	setAttr -av ".pa";
	setAttr -av ".al";
	setAttr -av ".dar" 1.3333332538604736;
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -av -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -av -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -av -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -av -k on ".fir";
	setAttr -k on ".aap";
	setAttr -av -k on ".gh";
	setAttr -cb on ".sd";
connectAttr "JntGDCtrl.sx" "JntGDCtrl.Sphere_Scale" -l on;
connectAttr "LeftAnkleJntGD_orientConstraint1.crx" "LeftAnkleJntGD.rx" -l on;
connectAttr "LeftAnkleJntGD_pointConstraint1.ctx" "LeftAnkleJntGD.tx" -l on;
connectAttr "LeftAnkleJntGD_pointConstraint1.cty" "LeftAnkleJntGD.ty" -l on;
connectAttr "LeftAnkleJntGD_pointConstraint1.ctz" "LeftAnkleJntGD.tz" -l on;
connectAttr "LeftAnkleJntGD.s" "LeftBallJntGD.is";
connectAttr "LeftBallJntGD.s" "LeftToeJntGD.is";
connectAttr "LeftBallJntGD.s" "LeftFootInJntGD.is";
connectAttr "LeftBallJntGD.s" "LeftFootOutJntGD.is";
connectAttr "LeftBallJntGD.s" "LeftHeelJntGD.is";
connectAttr "LeftAnkleJntGD.pim" "LeftAnkleJntGD_pointConstraint1.cpim";
connectAttr "LeftAnkleJntGD.rp" "LeftAnkleJntGD_pointConstraint1.crp";
connectAttr "LeftAnkleJntGD.rpt" "LeftAnkleJntGD_pointConstraint1.crt";
connectAttr "LeftAnkleScaleFixJntGD.t" "LeftAnkleJntGD_pointConstraint1.tg[0].tt"
		;
connectAttr "LeftAnkleScaleFixJntGD.rp" "LeftAnkleJntGD_pointConstraint1.tg[0].trp"
		;
connectAttr "LeftAnkleScaleFixJntGD.rpt" "LeftAnkleJntGD_pointConstraint1.tg[0].trt"
		;
connectAttr "LeftAnkleScaleFixJntGD.pm" "LeftAnkleJntGD_pointConstraint1.tg[0].tpm"
		;
connectAttr "LeftAnkleJntGD_pointConstraint1.w0" "LeftAnkleJntGD_pointConstraint1.tg[0].tw"
		;
connectAttr "LeftAnkleJntGD.ro" "LeftAnkleJntGD_orientConstraint1.cro";
connectAttr "LeftAnkleJntGD.pim" "LeftAnkleJntGD_orientConstraint1.cpim";
connectAttr "LeftAnkleJntGD.jo" "LeftAnkleJntGD_orientConstraint1.cjo";
connectAttr "LeftHipJntGD.r" "LeftAnkleJntGD_orientConstraint1.tg[0].tr";
connectAttr "LeftHipJntGD.ro" "LeftAnkleJntGD_orientConstraint1.tg[0].tro";
connectAttr "LeftHipJntGD.pm" "LeftAnkleJntGD_orientConstraint1.tg[0].tpm";
connectAttr "LeftHipJntGD.jo" "LeftAnkleJntGD_orientConstraint1.tg[0].tjo";
connectAttr "LeftAnkleJntGD_orientConstraint1.w0" "LeftAnkleJntGD_orientConstraint1.tg[0].tw"
		;
connectAttr "LeftClavicleJntGD.s" "LeftShoulderJntGD.is";
connectAttr "LeftShoulderJntGD.s" "LeftElbowJntGD.is";
connectAttr "LeftElbowJntGD.s" "LeftWristJntGD.is";
connectAttr "RootJntGD_parentConstraint1.ctx" "RootJntGD.tx";
connectAttr "RootJntGD_parentConstraint1.cty" "RootJntGD.ty";
connectAttr "RootJntGD_parentConstraint1.ctz" "RootJntGD.tz";
connectAttr "RootJntGD_parentConstraint1.crx" "RootJntGD.rx";
connectAttr "RootJntGD_parentConstraint1.cry" "RootJntGD.ry";
connectAttr "RootJntGD_parentConstraint1.crz" "RootJntGD.rz";
connectAttr "RootJntGD.s" "Spine1JntGD.is";
connectAttr "Spine1JntGD_parentConstraint1.ctx" "Spine1JntGD.tx";
connectAttr "Spine1JntGD_parentConstraint1.cty" "Spine1JntGD.ty";
connectAttr "Spine1JntGD_parentConstraint1.ctz" "Spine1JntGD.tz";
connectAttr "Spine1JntGD_parentConstraint1.crx" "Spine1JntGD.rx";
connectAttr "Spine1JntGD_parentConstraint1.cry" "Spine1JntGD.ry";
connectAttr "Spine1JntGD_parentConstraint1.crz" "Spine1JntGD.rz";
connectAttr "Spine1JntGD.s" "Spine2JntGD.is";
connectAttr "Spine2JntGD_parentConstraint1.ctx" "Spine2JntGD.tx";
connectAttr "Spine2JntGD_parentConstraint1.cty" "Spine2JntGD.ty";
connectAttr "Spine2JntGD_parentConstraint1.ctz" "Spine2JntGD.tz";
connectAttr "Spine2JntGD_parentConstraint1.crx" "Spine2JntGD.rx";
connectAttr "Spine2JntGD_parentConstraint1.cry" "Spine2JntGD.ry";
connectAttr "Spine2JntGD_parentConstraint1.crz" "Spine2JntGD.rz";
connectAttr "Spine2JntGD.s" "Spine3JntGD.is";
connectAttr "Spine3JntGD_parentConstraint1.ctx" "Spine3JntGD.tx";
connectAttr "Spine3JntGD_parentConstraint1.cty" "Spine3JntGD.ty";
connectAttr "Spine3JntGD_parentConstraint1.ctz" "Spine3JntGD.tz";
connectAttr "Spine3JntGD_parentConstraint1.crx" "Spine3JntGD.rx";
connectAttr "Spine3JntGD_parentConstraint1.cry" "Spine3JntGD.ry";
connectAttr "Spine3JntGD_parentConstraint1.crz" "Spine3JntGD.rz";
connectAttr "Spine3JntGD.s" "Spine4JntGD.is";
connectAttr "Spine4JntGD_parentConstraint1.ctx" "Spine4JntGD.tx";
connectAttr "Spine4JntGD_parentConstraint1.cty" "Spine4JntGD.ty";
connectAttr "Spine4JntGD_parentConstraint1.ctz" "Spine4JntGD.tz";
connectAttr "Spine4JntGD_parentConstraint1.crx" "Spine4JntGD.rx";
connectAttr "Spine4JntGD_parentConstraint1.cry" "Spine4JntGD.ry";
connectAttr "Spine4JntGD_parentConstraint1.crz" "Spine4JntGD.rz";
connectAttr "Spine4JntGD.s" "Neck1JntGD.is";
connectAttr "Neck1JntGD_parentConstraint1.ctx" "Neck1JntGD.tx";
connectAttr "Neck1JntGD_parentConstraint1.cty" "Neck1JntGD.ty";
connectAttr "Neck1JntGD_parentConstraint1.ctz" "Neck1JntGD.tz";
connectAttr "Neck1JntGD_parentConstraint1.crx" "Neck1JntGD.rx";
connectAttr "Neck1JntGD_parentConstraint1.cry" "Neck1JntGD.ry";
connectAttr "Neck1JntGD_parentConstraint1.crz" "Neck1JntGD.rz";
connectAttr "Neck1JntGD.ro" "Neck1JntGD_parentConstraint1.cro";
connectAttr "Neck1JntGD.pim" "Neck1JntGD_parentConstraint1.cpim";
connectAttr "Neck1JntGD.rp" "Neck1JntGD_parentConstraint1.crp";
connectAttr "Neck1JntGD.rpt" "Neck1JntGD_parentConstraint1.crt";
connectAttr "Neck1JntGD.jo" "Neck1JntGD_parentConstraint1.cjo";
connectAttr "Neck1JntGDSphere.t" "Neck1JntGD_parentConstraint1.tg[0].tt";
connectAttr "Neck1JntGDSphere.rp" "Neck1JntGD_parentConstraint1.tg[0].trp";
connectAttr "Neck1JntGDSphere.rpt" "Neck1JntGD_parentConstraint1.tg[0].trt";
connectAttr "Neck1JntGDSphere.r" "Neck1JntGD_parentConstraint1.tg[0].tr";
connectAttr "Neck1JntGDSphere.ro" "Neck1JntGD_parentConstraint1.tg[0].tro";
connectAttr "Neck1JntGDSphere.s" "Neck1JntGD_parentConstraint1.tg[0].ts";
connectAttr "Neck1JntGDSphere.pm" "Neck1JntGD_parentConstraint1.tg[0].tpm";
connectAttr "Neck1JntGD_parentConstraint1.w0" "Neck1JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "Neck1JntGD.s" "HeadJntGD.is";
connectAttr "HeadJntGD_parentConstraint1.ctx" "HeadJntGD.tx";
connectAttr "HeadJntGD_parentConstraint1.cty" "HeadJntGD.ty";
connectAttr "HeadJntGD_parentConstraint1.ctz" "HeadJntGD.tz";
connectAttr "HeadJntGD_parentConstraint1.crx" "HeadJntGD.rx";
connectAttr "HeadJntGD_parentConstraint1.cry" "HeadJntGD.ry";
connectAttr "HeadJntGD_parentConstraint1.crz" "HeadJntGD.rz";
connectAttr "HeadJntGD.s" "HeadEndJntGD.is";
connectAttr "HeadEndJntGD_parentConstraint1.ctx" "HeadEndJntGD.tx";
connectAttr "HeadEndJntGD_parentConstraint1.cty" "HeadEndJntGD.ty";
connectAttr "HeadEndJntGD_parentConstraint1.ctz" "HeadEndJntGD.tz";
connectAttr "HeadEndJntGD_parentConstraint1.crx" "HeadEndJntGD.rx";
connectAttr "HeadEndJntGD_parentConstraint1.cry" "HeadEndJntGD.ry";
connectAttr "HeadEndJntGD_parentConstraint1.crz" "HeadEndJntGD.rz";
connectAttr "HeadEndJntGD.ro" "HeadEndJntGD_parentConstraint1.cro";
connectAttr "HeadEndJntGD.pim" "HeadEndJntGD_parentConstraint1.cpim";
connectAttr "HeadEndJntGD.rp" "HeadEndJntGD_parentConstraint1.crp";
connectAttr "HeadEndJntGD.rpt" "HeadEndJntGD_parentConstraint1.crt";
connectAttr "HeadEndJntGD.jo" "HeadEndJntGD_parentConstraint1.cjo";
connectAttr "HeadEndJntGDCtrl.t" "HeadEndJntGD_parentConstraint1.tg[0].tt";
connectAttr "HeadEndJntGDCtrl.rp" "HeadEndJntGD_parentConstraint1.tg[0].trp";
connectAttr "HeadEndJntGDCtrl.rpt" "HeadEndJntGD_parentConstraint1.tg[0].trt";
connectAttr "HeadEndJntGDCtrl.r" "HeadEndJntGD_parentConstraint1.tg[0].tr";
connectAttr "HeadEndJntGDCtrl.ro" "HeadEndJntGD_parentConstraint1.tg[0].tro";
connectAttr "HeadEndJntGDCtrl.s" "HeadEndJntGD_parentConstraint1.tg[0].ts";
connectAttr "HeadEndJntGDCtrl.pm" "HeadEndJntGD_parentConstraint1.tg[0].tpm";
connectAttr "HeadEndJntGD_parentConstraint1.w0" "HeadEndJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "HeadJntGD.s" "LeftEyeJntGD.is";
connectAttr "LeftEyeJntGD_parentConstraint1.ctx" "LeftEyeJntGD.tx";
connectAttr "LeftEyeJntGD_parentConstraint1.cty" "LeftEyeJntGD.ty";
connectAttr "LeftEyeJntGD_parentConstraint1.ctz" "LeftEyeJntGD.tz";
connectAttr "LeftEyeJntGD_parentConstraint1.crx" "LeftEyeJntGD.rx";
connectAttr "LeftEyeJntGD_parentConstraint1.cry" "LeftEyeJntGD.ry";
connectAttr "LeftEyeJntGD_parentConstraint1.crz" "LeftEyeJntGD.rz";
connectAttr "LeftEyeJntGD.ro" "LeftEyeJntGD_parentConstraint1.cro";
connectAttr "LeftEyeJntGD.pim" "LeftEyeJntGD_parentConstraint1.cpim";
connectAttr "LeftEyeJntGD.rp" "LeftEyeJntGD_parentConstraint1.crp";
connectAttr "LeftEyeJntGD.rpt" "LeftEyeJntGD_parentConstraint1.crt";
connectAttr "LeftEyeJntGD.jo" "LeftEyeJntGD_parentConstraint1.cjo";
connectAttr "LeftEyeJntGDCtrl.t" "LeftEyeJntGD_parentConstraint1.tg[0].tt";
connectAttr "LeftEyeJntGDCtrl.rp" "LeftEyeJntGD_parentConstraint1.tg[0].trp";
connectAttr "LeftEyeJntGDCtrl.rpt" "LeftEyeJntGD_parentConstraint1.tg[0].trt";
connectAttr "LeftEyeJntGDCtrl.r" "LeftEyeJntGD_parentConstraint1.tg[0].tr";
connectAttr "LeftEyeJntGDCtrl.ro" "LeftEyeJntGD_parentConstraint1.tg[0].tro";
connectAttr "LeftEyeJntGDCtrl.s" "LeftEyeJntGD_parentConstraint1.tg[0].ts";
connectAttr "LeftEyeJntGDCtrl.pm" "LeftEyeJntGD_parentConstraint1.tg[0].tpm";
connectAttr "LeftEyeJntGD_parentConstraint1.w0" "LeftEyeJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "HeadJntGD.ro" "HeadJntGD_parentConstraint1.cro";
connectAttr "HeadJntGD.pim" "HeadJntGD_parentConstraint1.cpim";
connectAttr "HeadJntGD.rp" "HeadJntGD_parentConstraint1.crp";
connectAttr "HeadJntGD.rpt" "HeadJntGD_parentConstraint1.crt";
connectAttr "HeadJntGD.jo" "HeadJntGD_parentConstraint1.cjo";
connectAttr "HeadJntGDCtrl.t" "HeadJntGD_parentConstraint1.tg[0].tt";
connectAttr "HeadJntGDCtrl.rp" "HeadJntGD_parentConstraint1.tg[0].trp";
connectAttr "HeadJntGDCtrl.rpt" "HeadJntGD_parentConstraint1.tg[0].trt";
connectAttr "HeadJntGDCtrl.r" "HeadJntGD_parentConstraint1.tg[0].tr";
connectAttr "HeadJntGDCtrl.ro" "HeadJntGD_parentConstraint1.tg[0].tro";
connectAttr "HeadJntGDCtrl.s" "HeadJntGD_parentConstraint1.tg[0].ts";
connectAttr "HeadJntGDCtrl.pm" "HeadJntGD_parentConstraint1.tg[0].tpm";
connectAttr "HeadJntGD_parentConstraint1.w0" "HeadJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "JawJntGD.s" "JawEndJntGD.is";
connectAttr "JawJntGD.s" "LowerTeethJntGD.is";
connectAttr "LowerTeethJntGD.s" "LowerTeethEndJntGD.is";
connectAttr "UpperTeethJntGD.s" "UpperTeethEndJntGD.is";
connectAttr "NoseRootJntGD.s" "LeftNoseJntGD.is";
connectAttr "NoseDecomposeMatrix.ot" "RightNoseJntGD.t";
connectAttr "NoseDecomposeMatrix.or" "RightNoseJntGD.r";
connectAttr "NoseRootJntGD.s" "NoseJntGD.is";
connectAttr "Spine4JntGD.ro" "Spine4JntGD_parentConstraint1.cro";
connectAttr "Spine4JntGD.pim" "Spine4JntGD_parentConstraint1.cpim";
connectAttr "Spine4JntGD.rp" "Spine4JntGD_parentConstraint1.crp";
connectAttr "Spine4JntGD.rpt" "Spine4JntGD_parentConstraint1.crt";
connectAttr "Spine4JntGD.jo" "Spine4JntGD_parentConstraint1.cjo";
connectAttr "Spine4JntGDSphere.t" "Spine4JntGD_parentConstraint1.tg[0].tt";
connectAttr "Spine4JntGDSphere.rp" "Spine4JntGD_parentConstraint1.tg[0].trp";
connectAttr "Spine4JntGDSphere.rpt" "Spine4JntGD_parentConstraint1.tg[0].trt";
connectAttr "Spine4JntGDSphere.r" "Spine4JntGD_parentConstraint1.tg[0].tr";
connectAttr "Spine4JntGDSphere.ro" "Spine4JntGD_parentConstraint1.tg[0].tro";
connectAttr "Spine4JntGDSphere.s" "Spine4JntGD_parentConstraint1.tg[0].ts";
connectAttr "Spine4JntGDSphere.pm" "Spine4JntGD_parentConstraint1.tg[0].tpm";
connectAttr "Spine4JntGD_parentConstraint1.w0" "Spine4JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine3JntGD.ro" "Spine3JntGD_parentConstraint1.cro";
connectAttr "Spine3JntGD.pim" "Spine3JntGD_parentConstraint1.cpim";
connectAttr "Spine3JntGD.rp" "Spine3JntGD_parentConstraint1.crp";
connectAttr "Spine3JntGD.rpt" "Spine3JntGD_parentConstraint1.crt";
connectAttr "Spine3JntGD.jo" "Spine3JntGD_parentConstraint1.cjo";
connectAttr "Spine3JntGDSphere.t" "Spine3JntGD_parentConstraint1.tg[0].tt";
connectAttr "Spine3JntGDSphere.rp" "Spine3JntGD_parentConstraint1.tg[0].trp";
connectAttr "Spine3JntGDSphere.rpt" "Spine3JntGD_parentConstraint1.tg[0].trt";
connectAttr "Spine3JntGDSphere.r" "Spine3JntGD_parentConstraint1.tg[0].tr";
connectAttr "Spine3JntGDSphere.ro" "Spine3JntGD_parentConstraint1.tg[0].tro";
connectAttr "Spine3JntGDSphere.s" "Spine3JntGD_parentConstraint1.tg[0].ts";
connectAttr "Spine3JntGDSphere.pm" "Spine3JntGD_parentConstraint1.tg[0].tpm";
connectAttr "Spine3JntGD_parentConstraint1.w0" "Spine3JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine2JntGD.ro" "Spine2JntGD_parentConstraint1.cro";
connectAttr "Spine2JntGD.pim" "Spine2JntGD_parentConstraint1.cpim";
connectAttr "Spine2JntGD.rp" "Spine2JntGD_parentConstraint1.crp";
connectAttr "Spine2JntGD.rpt" "Spine2JntGD_parentConstraint1.crt";
connectAttr "Spine2JntGD.jo" "Spine2JntGD_parentConstraint1.cjo";
connectAttr "Spine2JntGDSphere.t" "Spine2JntGD_parentConstraint1.tg[0].tt";
connectAttr "Spine2JntGDSphere.rp" "Spine2JntGD_parentConstraint1.tg[0].trp";
connectAttr "Spine2JntGDSphere.rpt" "Spine2JntGD_parentConstraint1.tg[0].trt";
connectAttr "Spine2JntGDSphere.r" "Spine2JntGD_parentConstraint1.tg[0].tr";
connectAttr "Spine2JntGDSphere.ro" "Spine2JntGD_parentConstraint1.tg[0].tro";
connectAttr "Spine2JntGDSphere.s" "Spine2JntGD_parentConstraint1.tg[0].ts";
connectAttr "Spine2JntGDSphere.pm" "Spine2JntGD_parentConstraint1.tg[0].tpm";
connectAttr "Spine2JntGD_parentConstraint1.w0" "Spine2JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "Spine1JntGD.ro" "Spine1JntGD_parentConstraint1.cro";
connectAttr "Spine1JntGD.pim" "Spine1JntGD_parentConstraint1.cpim";
connectAttr "Spine1JntGD.rp" "Spine1JntGD_parentConstraint1.crp";
connectAttr "Spine1JntGD.rpt" "Spine1JntGD_parentConstraint1.crt";
connectAttr "Spine1JntGD.jo" "Spine1JntGD_parentConstraint1.cjo";
connectAttr "Spine1JntGDSphere.t" "Spine1JntGD_parentConstraint1.tg[0].tt";
connectAttr "Spine1JntGDSphere.rp" "Spine1JntGD_parentConstraint1.tg[0].trp";
connectAttr "Spine1JntGDSphere.rpt" "Spine1JntGD_parentConstraint1.tg[0].trt";
connectAttr "Spine1JntGDSphere.r" "Spine1JntGD_parentConstraint1.tg[0].tr";
connectAttr "Spine1JntGDSphere.ro" "Spine1JntGD_parentConstraint1.tg[0].tro";
connectAttr "Spine1JntGDSphere.s" "Spine1JntGD_parentConstraint1.tg[0].ts";
connectAttr "Spine1JntGDSphere.pm" "Spine1JntGD_parentConstraint1.tg[0].tpm";
connectAttr "Spine1JntGD_parentConstraint1.w0" "Spine1JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RootJntGD.ro" "RootJntGD_parentConstraint1.cro";
connectAttr "RootJntGD.pim" "RootJntGD_parentConstraint1.cpim";
connectAttr "RootJntGD.rp" "RootJntGD_parentConstraint1.crp";
connectAttr "RootJntGD.rpt" "RootJntGD_parentConstraint1.crt";
connectAttr "RootJntGD.jo" "RootJntGD_parentConstraint1.cjo";
connectAttr "RootJntGDSphere.t" "RootJntGD_parentConstraint1.tg[0].tt";
connectAttr "RootJntGDSphere.rp" "RootJntGD_parentConstraint1.tg[0].trp";
connectAttr "RootJntGDSphere.rpt" "RootJntGD_parentConstraint1.tg[0].trt";
connectAttr "RootJntGDSphere.r" "RootJntGD_parentConstraint1.tg[0].tr";
connectAttr "RootJntGDSphere.ro" "RootJntGD_parentConstraint1.tg[0].tro";
connectAttr "RootJntGDSphere.s" "RootJntGD_parentConstraint1.tg[0].ts";
connectAttr "RootJntGDSphere.pm" "RootJntGD_parentConstraint1.tg[0].tpm";
connectAttr "RootJntGD_parentConstraint1.w0" "RootJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightAnkleJntGD_orientConstraint1.crx" "RightAnkleJntGD.rx" -l on;
connectAttr "RightAnkleJntGD_pointConstraint1.ctx" "RightAnkleJntGD.tx" -l on;
connectAttr "RightAnkleJntGD_pointConstraint1.cty" "RightAnkleJntGD.ty" -l on;
connectAttr "RightAnkleJntGD_pointConstraint1.ctz" "RightAnkleJntGD.tz" -l on;
connectAttr "RightAnkleJntGD.pim" "RightAnkleJntGD_pointConstraint1.cpim";
connectAttr "RightAnkleJntGD.rp" "RightAnkleJntGD_pointConstraint1.crp";
connectAttr "RightAnkleJntGD.rpt" "RightAnkleJntGD_pointConstraint1.crt";
connectAttr "RightAnkleScaleFixJntGD.t" "RightAnkleJntGD_pointConstraint1.tg[0].tt"
		;
connectAttr "RightAnkleScaleFixJntGD.rp" "RightAnkleJntGD_pointConstraint1.tg[0].trp"
		;
connectAttr "RightAnkleScaleFixJntGD.rpt" "RightAnkleJntGD_pointConstraint1.tg[0].trt"
		;
connectAttr "RightAnkleScaleFixJntGD.pm" "RightAnkleJntGD_pointConstraint1.tg[0].tpm"
		;
connectAttr "RightAnkleJntGD_pointConstraint1.w0" "RightAnkleJntGD_pointConstraint1.tg[0].tw"
		;
connectAttr "RightAnkleJntGD.ro" "RightAnkleJntGD_orientConstraint1.cro";
connectAttr "RightAnkleJntGD.pim" "RightAnkleJntGD_orientConstraint1.cpim";
connectAttr "RightAnkleJntGD.jo" "RightAnkleJntGD_orientConstraint1.cjo";
connectAttr "RightHipJntGD.r" "RightAnkleJntGD_orientConstraint1.tg[0].tr";
connectAttr "RightHipJntGD.ro" "RightAnkleJntGD_orientConstraint1.tg[0].tro";
connectAttr "RightHipJntGD.pm" "RightAnkleJntGD_orientConstraint1.tg[0].tpm";
connectAttr "RightHipJntGD.jo" "RightAnkleJntGD_orientConstraint1.tg[0].tjo";
connectAttr "RightAnkleJntGD_orientConstraint1.w0" "RightAnkleJntGD_orientConstraint1.tg[0].tw"
		;
connectAttr "conGrp_parentConstraint1.ctx" "conGrp.tx";
connectAttr "conGrp_parentConstraint1.cty" "conGrp.ty";
connectAttr "conGrp_parentConstraint1.ctz" "conGrp.tz";
connectAttr "conGrp_parentConstraint1.crx" "conGrp.rx";
connectAttr "conGrp_parentConstraint1.cry" "conGrp.ry";
connectAttr "conGrp_parentConstraint1.crz" "conGrp.rz";
connectAttr "RightAnkleJntGD.s" "RightBallJntGD.is";
connectAttr "RightToeJntGD_parentConstraint1.crx" "RightToeJntGD.rx" -l on;
connectAttr "RightToeJntGD_parentConstraint1.cry" "RightToeJntGD.ry" -l on;
connectAttr "RightToeJntGD_parentConstraint1.crz" "RightToeJntGD.rz" -l on;
connectAttr "RightBallJntGD.s" "RightToeJntGD.is";
connectAttr "RightToeJntGD_parentConstraint1.ctx" "RightToeJntGD.tx" -l on;
connectAttr "RightToeJntGD_parentConstraint1.cty" "RightToeJntGD.ty" -l on;
connectAttr "RightToeJntGD_parentConstraint1.ctz" "RightToeJntGD.tz" -l on;
connectAttr "RightToeJntGD.ro" "RightToeJntGD_parentConstraint1.cro";
connectAttr "RightToeJntGD.pim" "RightToeJntGD_parentConstraint1.cpim";
connectAttr "RightToeJntGD.rp" "RightToeJntGD_parentConstraint1.crp";
connectAttr "RightToeJntGD.rpt" "RightToeJntGD_parentConstraint1.crt";
connectAttr "RightToeJntGD.jo" "RightToeJntGD_parentConstraint1.cjo";
connectAttr "RightToeJntGDLoc.t" "RightToeJntGD_parentConstraint1.tg[0].tt";
connectAttr "RightToeJntGDLoc.rp" "RightToeJntGD_parentConstraint1.tg[0].trp";
connectAttr "RightToeJntGDLoc.rpt" "RightToeJntGD_parentConstraint1.tg[0].trt";
connectAttr "RightToeJntGDLoc.r" "RightToeJntGD_parentConstraint1.tg[0].tr";
connectAttr "RightToeJntGDLoc.ro" "RightToeJntGD_parentConstraint1.tg[0].tro";
connectAttr "RightToeJntGDLoc.s" "RightToeJntGD_parentConstraint1.tg[0].ts";
connectAttr "RightToeJntGDLoc.pm" "RightToeJntGD_parentConstraint1.tg[0].tpm";
connectAttr "RightToeJntGD_parentConstraint1.w0" "RightToeJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightFootInJntGD_parentConstraint1.crx" "RightFootInJntGD.rx" -l on
		;
connectAttr "RightFootInJntGD_parentConstraint1.cry" "RightFootInJntGD.ry" -l on
		;
connectAttr "RightFootInJntGD_parentConstraint1.crz" "RightFootInJntGD.rz" -l on
		;
connectAttr "RightBallJntGD.s" "RightFootInJntGD.is";
connectAttr "RightFootInJntGD_parentConstraint1.ctx" "RightFootInJntGD.tx" -l on
		;
connectAttr "RightFootInJntGD_parentConstraint1.cty" "RightFootInJntGD.ty" -l on
		;
connectAttr "RightFootInJntGD_parentConstraint1.ctz" "RightFootInJntGD.tz" -l on
		;
connectAttr "RightFootInJntGD.ro" "RightFootInJntGD_parentConstraint1.cro";
connectAttr "RightFootInJntGD.pim" "RightFootInJntGD_parentConstraint1.cpim";
connectAttr "RightFootInJntGD.rp" "RightFootInJntGD_parentConstraint1.crp";
connectAttr "RightFootInJntGD.rpt" "RightFootInJntGD_parentConstraint1.crt";
connectAttr "RightFootInJntGD.jo" "RightFootInJntGD_parentConstraint1.cjo";
connectAttr "RightFootInJntGDLoc.t" "RightFootInJntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightFootInJntGDLoc.rp" "RightFootInJntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightFootInJntGDLoc.rpt" "RightFootInJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightFootInJntGDLoc.r" "RightFootInJntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightFootInJntGDLoc.ro" "RightFootInJntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightFootInJntGDLoc.s" "RightFootInJntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightFootInJntGDLoc.pm" "RightFootInJntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightFootInJntGD_parentConstraint1.w0" "RightFootInJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightFootOutJntGD_parentConstraint1.crx" "RightFootOutJntGD.rx" -l on
		;
connectAttr "RightFootOutJntGD_parentConstraint1.cry" "RightFootOutJntGD.ry" -l on
		;
connectAttr "RightFootOutJntGD_parentConstraint1.crz" "RightFootOutJntGD.rz" -l on
		;
connectAttr "RightBallJntGD.s" "RightFootOutJntGD.is";
connectAttr "RightFootOutJntGD_parentConstraint1.ctx" "RightFootOutJntGD.tx" -l on
		;
connectAttr "RightFootOutJntGD_parentConstraint1.cty" "RightFootOutJntGD.ty" -l on
		;
connectAttr "RightFootOutJntGD_parentConstraint1.ctz" "RightFootOutJntGD.tz" -l on
		;
connectAttr "RightFootOutJntGD.ro" "RightFootOutJntGD_parentConstraint1.cro";
connectAttr "RightFootOutJntGD.pim" "RightFootOutJntGD_parentConstraint1.cpim";
connectAttr "RightFootOutJntGD.rp" "RightFootOutJntGD_parentConstraint1.crp";
connectAttr "RightFootOutJntGD.rpt" "RightFootOutJntGD_parentConstraint1.crt";
connectAttr "RightFootOutJntGD.jo" "RightFootOutJntGD_parentConstraint1.cjo";
connectAttr "RightFootOutJntGDLoc.t" "RightFootOutJntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightFootOutJntGDLoc.rp" "RightFootOutJntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightFootOutJntGDLoc.rpt" "RightFootOutJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightFootOutJntGDLoc.r" "RightFootOutJntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightFootOutJntGDLoc.ro" "RightFootOutJntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightFootOutJntGDLoc.s" "RightFootOutJntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightFootOutJntGDLoc.pm" "RightFootOutJntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightFootOutJntGD_parentConstraint1.w0" "RightFootOutJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightHeelJntGD_parentConstraint1.crx" "RightHeelJntGD.rx" -l on;
connectAttr "RightHeelJntGD_parentConstraint1.cry" "RightHeelJntGD.ry" -l on;
connectAttr "RightHeelJntGD_parentConstraint1.crz" "RightHeelJntGD.rz" -l on;
connectAttr "RightBallJntGD.s" "RightHeelJntGD.is";
connectAttr "RightHeelJntGD_parentConstraint1.ctx" "RightHeelJntGD.tx" -l on;
connectAttr "RightHeelJntGD_parentConstraint1.cty" "RightHeelJntGD.ty" -l on;
connectAttr "RightHeelJntGD_parentConstraint1.ctz" "RightHeelJntGD.tz" -l on;
connectAttr "RightHeelJntGD.ro" "RightHeelJntGD_parentConstraint1.cro";
connectAttr "RightHeelJntGD.pim" "RightHeelJntGD_parentConstraint1.cpim";
connectAttr "RightHeelJntGD.rp" "RightHeelJntGD_parentConstraint1.crp";
connectAttr "RightHeelJntGD.rpt" "RightHeelJntGD_parentConstraint1.crt";
connectAttr "RightHeelJntGD.jo" "RightHeelJntGD_parentConstraint1.cjo";
connectAttr "RightHeelJntGDLoc.t" "RightHeelJntGD_parentConstraint1.tg[0].tt";
connectAttr "RightHeelJntGDLoc.rp" "RightHeelJntGD_parentConstraint1.tg[0].trp";
connectAttr "RightHeelJntGDLoc.rpt" "RightHeelJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightHeelJntGDLoc.r" "RightHeelJntGD_parentConstraint1.tg[0].tr";
connectAttr "RightHeelJntGDLoc.ro" "RightHeelJntGD_parentConstraint1.tg[0].tro";
connectAttr "RightHeelJntGDLoc.s" "RightHeelJntGD_parentConstraint1.tg[0].ts";
connectAttr "RightHeelJntGDLoc.pm" "RightHeelJntGD_parentConstraint1.tg[0].tpm";
connectAttr "RightHeelJntGD_parentConstraint1.w0" "RightHeelJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "conGrp.ro" "conGrp_parentConstraint1.cro";
connectAttr "conGrp.pim" "conGrp_parentConstraint1.cpim";
connectAttr "conGrp.rp" "conGrp_parentConstraint1.crp";
connectAttr "conGrp.rpt" "conGrp_parentConstraint1.crt";
connectAttr "RightBallJntGDLoc.t" "conGrp_parentConstraint1.tg[0].tt";
connectAttr "RightBallJntGDLoc.rp" "conGrp_parentConstraint1.tg[0].trp";
connectAttr "RightBallJntGDLoc.rpt" "conGrp_parentConstraint1.tg[0].trt";
connectAttr "RightBallJntGDLoc.r" "conGrp_parentConstraint1.tg[0].tr";
connectAttr "RightBallJntGDLoc.ro" "conGrp_parentConstraint1.tg[0].tro";
connectAttr "RightBallJntGDLoc.s" "conGrp_parentConstraint1.tg[0].ts";
connectAttr "RightBallJntGDLoc.pm" "conGrp_parentConstraint1.tg[0].tpm";
connectAttr "conGrp_parentConstraint1.w0" "conGrp_parentConstraint1.tg[0].tw";
connectAttr "LeftHipJntGDGrp_parentConstraint1.ctx" "LeftHipJntGDGrp.tx";
connectAttr "LeftHipJntGDGrp_parentConstraint1.cty" "LeftHipJntGDGrp.ty";
connectAttr "LeftHipJntGDGrp_parentConstraint1.ctz" "LeftHipJntGDGrp.tz";
connectAttr "LeftHipJntGDGrp_parentConstraint1.crx" "LeftHipJntGDGrp.rx";
connectAttr "LeftHipJntGDGrp_parentConstraint1.cry" "LeftHipJntGDGrp.ry";
connectAttr "LeftHipJntGDGrp_parentConstraint1.crz" "LeftHipJntGDGrp.rz";
connectAttr "LeftHipJntGD.s" "LeftKneeJntGD.is";
connectAttr "LeftKneeJntGD.s" "LeftAnkleScaleFixJntGD.is";
connectAttr "LeftHipJntGDGrp.ro" "LeftHipJntGDGrp_parentConstraint1.cro";
connectAttr "LeftHipJntGDGrp.pim" "LeftHipJntGDGrp_parentConstraint1.cpim";
connectAttr "LeftHipJntGDGrp.rp" "LeftHipJntGDGrp_parentConstraint1.crp";
connectAttr "LeftHipJntGDGrp.rpt" "LeftHipJntGDGrp_parentConstraint1.crt";
connectAttr "RootJntGDCtrl.t" "LeftHipJntGDGrp_parentConstraint1.tg[0].tt";
connectAttr "RootJntGDCtrl.rp" "LeftHipJntGDGrp_parentConstraint1.tg[0].trp";
connectAttr "RootJntGDCtrl.rpt" "LeftHipJntGDGrp_parentConstraint1.tg[0].trt";
connectAttr "RootJntGDCtrl.r" "LeftHipJntGDGrp_parentConstraint1.tg[0].tr";
connectAttr "RootJntGDCtrl.ro" "LeftHipJntGDGrp_parentConstraint1.tg[0].tro";
connectAttr "RootJntGDCtrl.s" "LeftHipJntGDGrp_parentConstraint1.tg[0].ts";
connectAttr "RootJntGDCtrl.pm" "LeftHipJntGDGrp_parentConstraint1.tg[0].tpm";
connectAttr "LeftHipJntGDGrp_parentConstraint1.w0" "LeftHipJntGDGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "RightHipJntGDGrp_parentConstraint1.ctx" "RightHipJntGDGrp.tx";
connectAttr "RightHipJntGDGrp_parentConstraint1.cty" "RightHipJntGDGrp.ty";
connectAttr "RightHipJntGDGrp_parentConstraint1.ctz" "RightHipJntGDGrp.tz";
connectAttr "RightHipJntGDGrp_parentConstraint1.crx" "RightHipJntGDGrp.rx";
connectAttr "RightHipJntGDGrp_parentConstraint1.cry" "RightHipJntGDGrp.ry";
connectAttr "RightHipJntGDGrp_parentConstraint1.crz" "RightHipJntGDGrp.rz";
connectAttr "RightHipJntGD_parentConstraint1.crx" "RightHipJntGD.rx" -l on;
connectAttr "RightHipJntGD_parentConstraint1.cry" "RightHipJntGD.ry" -l on;
connectAttr "RightHipJntGD_parentConstraint1.crz" "RightHipJntGD.rz" -l on;
connectAttr "RightHipJntGD_parentConstraint1.ctx" "RightHipJntGD.tx" -l on;
connectAttr "RightHipJntGD_parentConstraint1.cty" "RightHipJntGD.ty" -l on;
connectAttr "RightHipJntGD_parentConstraint1.ctz" "RightHipJntGD.tz" -l on;
connectAttr "RightKneeJntGD_parentConstraint1.cty" "RightKneeJntGD.ty" -l on;
connectAttr "RightKneeJntGD_parentConstraint1.ctz" "RightKneeJntGD.tz" -l on;
connectAttr "RightKneeJntGD_parentConstraint1.ctx" "RightKneeJntGD.tx" -l on;
connectAttr "RightHipJntGD.s" "RightKneeJntGD.is";
connectAttr "RightKneeJntGD_parentConstraint1.crx" "RightKneeJntGD.rx" -l on;
connectAttr "RightKneeJntGD_parentConstraint1.cry" "RightKneeJntGD.ry" -l on;
connectAttr "RightKneeJntGD_parentConstraint1.crz" "RightKneeJntGD.rz" -l on;
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.cty" "RightAnkleScaleFixJntGD.ty"
		 -l on;
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.ctz" "RightAnkleScaleFixJntGD.tz"
		 -l on;
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.ctx" "RightAnkleScaleFixJntGD.tx"
		 -l on;
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.crx" "RightAnkleScaleFixJntGD.rx"
		 -l on;
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.cry" "RightAnkleScaleFixJntGD.ry"
		 -l on;
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.crz" "RightAnkleScaleFixJntGD.rz"
		 -l on;
connectAttr "RightKneeJntGD.s" "RightAnkleScaleFixJntGD.is";
connectAttr "RightAnkleScaleFixJntGD.ro" "RightAnkleScaleFixJntGD_parentConstraint1.cro"
		;
connectAttr "RightAnkleScaleFixJntGD.pim" "RightAnkleScaleFixJntGD_parentConstraint1.cpim"
		;
connectAttr "RightAnkleScaleFixJntGD.rp" "RightAnkleScaleFixJntGD_parentConstraint1.crp"
		;
connectAttr "RightAnkleScaleFixJntGD.rpt" "RightAnkleScaleFixJntGD_parentConstraint1.crt"
		;
connectAttr "RightAnkleScaleFixJntGD.jo" "RightAnkleScaleFixJntGD_parentConstraint1.cjo"
		;
connectAttr "RightAnkleScaleFixJntGDLoc.t" "RightAnkleScaleFixJntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightAnkleScaleFixJntGDLoc.rp" "RightAnkleScaleFixJntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightAnkleScaleFixJntGDLoc.rpt" "RightAnkleScaleFixJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightAnkleScaleFixJntGDLoc.r" "RightAnkleScaleFixJntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightAnkleScaleFixJntGDLoc.ro" "RightAnkleScaleFixJntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightAnkleScaleFixJntGDLoc.s" "RightAnkleScaleFixJntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightAnkleScaleFixJntGDLoc.pm" "RightAnkleScaleFixJntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.w0" "RightAnkleScaleFixJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightKneeJntGD.ro" "RightKneeJntGD_parentConstraint1.cro";
connectAttr "RightKneeJntGD.pim" "RightKneeJntGD_parentConstraint1.cpim";
connectAttr "RightKneeJntGD.rp" "RightKneeJntGD_parentConstraint1.crp";
connectAttr "RightKneeJntGD.rpt" "RightKneeJntGD_parentConstraint1.crt";
connectAttr "RightKneeJntGD.jo" "RightKneeJntGD_parentConstraint1.cjo";
connectAttr "RightKneeJntGDLoc.t" "RightKneeJntGD_parentConstraint1.tg[0].tt";
connectAttr "RightKneeJntGDLoc.rp" "RightKneeJntGD_parentConstraint1.tg[0].trp";
connectAttr "RightKneeJntGDLoc.rpt" "RightKneeJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightKneeJntGDLoc.r" "RightKneeJntGD_parentConstraint1.tg[0].tr";
connectAttr "RightKneeJntGDLoc.ro" "RightKneeJntGD_parentConstraint1.tg[0].tro";
connectAttr "RightKneeJntGDLoc.s" "RightKneeJntGD_parentConstraint1.tg[0].ts";
connectAttr "RightKneeJntGDLoc.pm" "RightKneeJntGD_parentConstraint1.tg[0].tpm";
connectAttr "RightKneeJntGD_parentConstraint1.w0" "RightKneeJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightHipJntGD.ro" "RightHipJntGD_parentConstraint1.cro";
connectAttr "RightHipJntGD.pim" "RightHipJntGD_parentConstraint1.cpim";
connectAttr "RightHipJntGD.rp" "RightHipJntGD_parentConstraint1.crp";
connectAttr "RightHipJntGD.rpt" "RightHipJntGD_parentConstraint1.crt";
connectAttr "RightHipJntGD.jo" "RightHipJntGD_parentConstraint1.cjo";
connectAttr "RightHipJntGDLoc.t" "RightHipJntGD_parentConstraint1.tg[0].tt";
connectAttr "RightHipJntGDLoc.rp" "RightHipJntGD_parentConstraint1.tg[0].trp";
connectAttr "RightHipJntGDLoc.rpt" "RightHipJntGD_parentConstraint1.tg[0].trt";
connectAttr "RightHipJntGDLoc.r" "RightHipJntGD_parentConstraint1.tg[0].tr";
connectAttr "RightHipJntGDLoc.ro" "RightHipJntGD_parentConstraint1.tg[0].tro";
connectAttr "RightHipJntGDLoc.s" "RightHipJntGD_parentConstraint1.tg[0].ts";
connectAttr "RightHipJntGDLoc.pm" "RightHipJntGD_parentConstraint1.tg[0].tpm";
connectAttr "RightHipJntGD_parentConstraint1.w0" "RightHipJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightHipJntGDGrp.ro" "RightHipJntGDGrp_parentConstraint1.cro";
connectAttr "RightHipJntGDGrp.pim" "RightHipJntGDGrp_parentConstraint1.cpim";
connectAttr "RightHipJntGDGrp.rp" "RightHipJntGDGrp_parentConstraint1.crp";
connectAttr "RightHipJntGDGrp.rpt" "RightHipJntGDGrp_parentConstraint1.crt";
connectAttr "RootJntGDCtrl.t" "RightHipJntGDGrp_parentConstraint1.tg[0].tt";
connectAttr "RootJntGDCtrl.rp" "RightHipJntGDGrp_parentConstraint1.tg[0].trp";
connectAttr "RootJntGDCtrl.rpt" "RightHipJntGDGrp_parentConstraint1.tg[0].trt";
connectAttr "RootJntGDCtrl.r" "RightHipJntGDGrp_parentConstraint1.tg[0].tr";
connectAttr "RootJntGDCtrl.ro" "RightHipJntGDGrp_parentConstraint1.tg[0].tro";
connectAttr "RootJntGDCtrl.s" "RightHipJntGDGrp_parentConstraint1.tg[0].ts";
connectAttr "RootJntGDCtrl.pm" "RightHipJntGDGrp_parentConstraint1.tg[0].tpm";
connectAttr "RightHipJntGDGrp_parentConstraint1.w0" "RightHipJntGDGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "RightClavicleJntGD_parentConstraint1.ctx" "RightClavicleJntGD.tx" -l
		 on;
connectAttr "RightClavicleJntGD_parentConstraint1.cty" "RightClavicleJntGD.ty" -l
		 on;
connectAttr "RightClavicleJntGD_parentConstraint1.ctz" "RightClavicleJntGD.tz" -l
		 on;
connectAttr "RightClavicleJntGD_parentConstraint1.crx" "RightClavicleJntGD.rx" -l
		 on;
connectAttr "RightClavicleJntGD_parentConstraint1.cry" "RightClavicleJntGD.ry" -l
		 on;
connectAttr "RightClavicleJntGD_parentConstraint1.crz" "RightClavicleJntGD.rz" -l
		 on;
connectAttr "RightClavicleJntGD.s" "RightShoulderJntGD.is";
connectAttr "RightShoulderJntGD_parentConstraint1.ctx" "RightShoulderJntGD.tx" -l
		 on;
connectAttr "RightShoulderJntGD_parentConstraint1.cty" "RightShoulderJntGD.ty" -l
		 on;
connectAttr "RightShoulderJntGD_parentConstraint1.ctz" "RightShoulderJntGD.tz" -l
		 on;
connectAttr "RightShoulderJntGD_parentConstraint1.crx" "RightShoulderJntGD.rx" -l
		 on;
connectAttr "RightShoulderJntGD_parentConstraint1.cry" "RightShoulderJntGD.ry" -l
		 on;
connectAttr "RightShoulderJntGD_parentConstraint1.crz" "RightShoulderJntGD.rz" -l
		 on;
connectAttr "RightElbowJntGD_parentConstraint1.cty" "RightElbowJntGD.ty" -l on;
connectAttr "RightElbowJntGD_parentConstraint1.ctz" "RightElbowJntGD.tz" -l on;
connectAttr "RightElbowJntGD_parentConstraint1.ctx" "RightElbowJntGD.tx" -l on;
connectAttr "RightElbowJntGD_parentConstraint1.crx" "RightElbowJntGD.rx" -l on;
connectAttr "RightElbowJntGD_parentConstraint1.crz" "RightElbowJntGD.rz" -l on;
connectAttr "RightElbowJntGD_parentConstraint1.cry" "RightElbowJntGD.ry" -l on;
connectAttr "RightShoulderJntGD.s" "RightElbowJntGD.is";
connectAttr "RightWristJntGD_parentConstraint1.cty" "RightWristJntGD.ty" -l on;
connectAttr "RightWristJntGD_parentConstraint1.ctz" "RightWristJntGD.tz" -l on;
connectAttr "RightWristJntGD_parentConstraint1.ctx" "RightWristJntGD.tx" -l on;
connectAttr "RightElbowJntGD.s" "RightWristJntGD.is";
connectAttr "RightWristJntGD_parentConstraint1.crx" "RightWristJntGD.rx" -l on;
connectAttr "RightWristJntGD_parentConstraint1.cry" "RightWristJntGD.ry" -l on;
connectAttr "RightWristJntGD_parentConstraint1.crz" "RightWristJntGD.rz" -l on;
connectAttr "RightWristJntGD.ro" "RightWristJntGD_parentConstraint1.cro";
connectAttr "RightWristJntGD.pim" "RightWristJntGD_parentConstraint1.cpim";
connectAttr "RightWristJntGD.rp" "RightWristJntGD_parentConstraint1.crp";
connectAttr "RightWristJntGD.rpt" "RightWristJntGD_parentConstraint1.crt";
connectAttr "RightWristJntGD.jo" "RightWristJntGD_parentConstraint1.cjo";
connectAttr "RightWristJntGDLoc.t" "RightWristJntGD_parentConstraint1.tg[0].tt";
connectAttr "RightWristJntGDLoc.rp" "RightWristJntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightWristJntGDLoc.rpt" "RightWristJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightWristJntGDLoc.r" "RightWristJntGD_parentConstraint1.tg[0].tr";
connectAttr "RightWristJntGDLoc.ro" "RightWristJntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightWristJntGDLoc.s" "RightWristJntGD_parentConstraint1.tg[0].ts";
connectAttr "RightWristJntGDLoc.pm" "RightWristJntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightWristJntGD_parentConstraint1.w0" "RightWristJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightElbowJntGD.ro" "RightElbowJntGD_parentConstraint1.cro";
connectAttr "RightElbowJntGD.pim" "RightElbowJntGD_parentConstraint1.cpim";
connectAttr "RightElbowJntGD.rp" "RightElbowJntGD_parentConstraint1.crp";
connectAttr "RightElbowJntGD.rpt" "RightElbowJntGD_parentConstraint1.crt";
connectAttr "RightElbowJntGD.jo" "RightElbowJntGD_parentConstraint1.cjo";
connectAttr "RightElbowJntGDLoc.t" "RightElbowJntGD_parentConstraint1.tg[0].tt";
connectAttr "RightElbowJntGDLoc.rp" "RightElbowJntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightElbowJntGDLoc.rpt" "RightElbowJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightElbowJntGDLoc.r" "RightElbowJntGD_parentConstraint1.tg[0].tr";
connectAttr "RightElbowJntGDLoc.ro" "RightElbowJntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightElbowJntGDLoc.s" "RightElbowJntGD_parentConstraint1.tg[0].ts";
connectAttr "RightElbowJntGDLoc.pm" "RightElbowJntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightElbowJntGD_parentConstraint1.w0" "RightElbowJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightShoulderJntGD.ro" "RightShoulderJntGD_parentConstraint1.cro";
connectAttr "RightShoulderJntGD.pim" "RightShoulderJntGD_parentConstraint1.cpim"
		;
connectAttr "RightShoulderJntGD.rp" "RightShoulderJntGD_parentConstraint1.crp";
connectAttr "RightShoulderJntGD.rpt" "RightShoulderJntGD_parentConstraint1.crt";
connectAttr "RightShoulderJntGD.jo" "RightShoulderJntGD_parentConstraint1.cjo";
connectAttr "RightShoulderJntGDLoc.t" "RightShoulderJntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightShoulderJntGDLoc.rp" "RightShoulderJntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightShoulderJntGDLoc.rpt" "RightShoulderJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightShoulderJntGDLoc.r" "RightShoulderJntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightShoulderJntGDLoc.ro" "RightShoulderJntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightShoulderJntGDLoc.s" "RightShoulderJntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightShoulderJntGDLoc.pm" "RightShoulderJntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightShoulderJntGD_parentConstraint1.w0" "RightShoulderJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightClavicleJntGD.ro" "RightClavicleJntGD_parentConstraint1.cro";
connectAttr "RightClavicleJntGD.pim" "RightClavicleJntGD_parentConstraint1.cpim"
		;
connectAttr "RightClavicleJntGD.rp" "RightClavicleJntGD_parentConstraint1.crp";
connectAttr "RightClavicleJntGD.rpt" "RightClavicleJntGD_parentConstraint1.crt";
connectAttr "RightClavicleJntGD.jo" "RightClavicleJntGD_parentConstraint1.cjo";
connectAttr "RightClavicleJntGDLoc.t" "RightClavicleJntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightClavicleJntGDLoc.rp" "RightClavicleJntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightClavicleJntGDLoc.rpt" "RightClavicleJntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightClavicleJntGDLoc.r" "RightClavicleJntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightClavicleJntGDLoc.ro" "RightClavicleJntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightClavicleJntGDLoc.s" "RightClavicleJntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightClavicleJntGDLoc.pm" "RightClavicleJntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightClavicleJntGD_parentConstraint1.w0" "RightClavicleJntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "leastSquaresModifier1.ono" "SpineCurveGDShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "SpineCurveGDShape.twl";
connectAttr "cluster1GroupId.id" "SpineCurveGDShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "SpineCurveGDShape.iog.og[0].gco";
connectAttr "groupId2.id" "SpineCurveGDShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "SpineCurveGDShape.iog.og[1].gco";
connectAttr "cluster1.og[0]" "SpineCurveGDShape1Original.cr";
connectAttr "addDoubleLinear1.o" "RootJntGDLoc.tx";
connectAttr "addDoubleLinear2.o" "RootJntGDLoc.ty";
connectAttr "addDoubleLinear3.o" "RootJntGDLoc.tz";
connectAttr "motionPath1.msg" "RootJntGDLoc.sml";
connectAttr "motionPath1.rx" "RootJntGDLoc.rx";
connectAttr "motionPath1.ry" "RootJntGDLoc.ry";
connectAttr "motionPath1.rz" "RootJntGDLoc.rz";
connectAttr "motionPath1.ro" "RootJntGDLoc.ro";
connectAttr "JntGDCtrl.Sphere_Scale" "RootJntGDSphere.sx" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "RootJntGDSphere.sy" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "RootJntGDSphere.sz" -l on;
connectAttr "addDoubleLinear4.o" "Spine1JntGDLoc.tx";
connectAttr "addDoubleLinear5.o" "Spine1JntGDLoc.ty";
connectAttr "addDoubleLinear6.o" "Spine1JntGDLoc.tz";
connectAttr "motionPath2.msg" "Spine1JntGDLoc.sml";
connectAttr "motionPath2.rx" "Spine1JntGDLoc.rx";
connectAttr "motionPath2.ry" "Spine1JntGDLoc.ry";
connectAttr "motionPath2.rz" "Spine1JntGDLoc.rz";
connectAttr "motionPath2.ro" "Spine1JntGDLoc.ro";
connectAttr "JntGDCtrl.Sphere_Scale" "Spine1JntGDSphere.sx" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Spine1JntGDSphere.sy" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Spine1JntGDSphere.sz" -l on;
connectAttr "addDoubleLinear7.o" "Spine2JntGDLoc.tx";
connectAttr "addDoubleLinear8.o" "Spine2JntGDLoc.ty";
connectAttr "addDoubleLinear9.o" "Spine2JntGDLoc.tz";
connectAttr "motionPath3.msg" "Spine2JntGDLoc.sml";
connectAttr "motionPath3.rx" "Spine2JntGDLoc.rx";
connectAttr "motionPath3.ry" "Spine2JntGDLoc.ry";
connectAttr "motionPath3.rz" "Spine2JntGDLoc.rz";
connectAttr "motionPath3.ro" "Spine2JntGDLoc.ro";
connectAttr "JntGDCtrl.Sphere_Scale" "Spine2JntGDSphere.sx" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Spine2JntGDSphere.sy" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Spine2JntGDSphere.sz" -l on;
connectAttr "addDoubleLinear10.o" "Spine3JntGDLoc.tx";
connectAttr "addDoubleLinear11.o" "Spine3JntGDLoc.ty";
connectAttr "addDoubleLinear12.o" "Spine3JntGDLoc.tz";
connectAttr "motionPath4.msg" "Spine3JntGDLoc.sml";
connectAttr "motionPath4.rx" "Spine3JntGDLoc.rx";
connectAttr "motionPath4.ry" "Spine3JntGDLoc.ry";
connectAttr "motionPath4.rz" "Spine3JntGDLoc.rz";
connectAttr "motionPath4.ro" "Spine3JntGDLoc.ro";
connectAttr "JntGDCtrl.Sphere_Scale" "Spine3JntGDSphere.sx" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Spine3JntGDSphere.sy" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Spine3JntGDSphere.sz" -l on;
connectAttr "addDoubleLinear13.o" "Spine4JntGDLoc.tx";
connectAttr "addDoubleLinear14.o" "Spine4JntGDLoc.ty";
connectAttr "addDoubleLinear15.o" "Spine4JntGDLoc.tz";
connectAttr "motionPath5.msg" "Spine4JntGDLoc.sml";
connectAttr "motionPath5.rx" "Spine4JntGDLoc.rx";
connectAttr "motionPath5.ry" "Spine4JntGDLoc.ry";
connectAttr "motionPath5.rz" "Spine4JntGDLoc.rz";
connectAttr "motionPath5.ro" "Spine4JntGDLoc.ro";
connectAttr "JntGDCtrl.Sphere_Scale" "Spine4JntGDSphere.sx" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Spine4JntGDSphere.sz" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Spine4JntGDSphere.sy" -l on;
connectAttr "addDoubleLinear16.o" "Neck1JntGDLoc.tx";
connectAttr "addDoubleLinear17.o" "Neck1JntGDLoc.ty";
connectAttr "addDoubleLinear18.o" "Neck1JntGDLoc.tz";
connectAttr "motionPath6.msg" "Neck1JntGDLoc.sml";
connectAttr "motionPath6.rx" "Neck1JntGDLoc.rx";
connectAttr "motionPath6.ry" "Neck1JntGDLoc.ry";
connectAttr "motionPath6.rz" "Neck1JntGDLoc.rz";
connectAttr "motionPath6.ro" "Neck1JntGDLoc.ro";
connectAttr "JntGDCtrl.Sphere_Scale" "Neck1JntGDSphere.sx" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Neck1JntGDSphere.sy" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "Neck1JntGDSphere.sz" -l on;
connectAttr "locator9_geometryConstraint1.cgm" "ChestJntGDLoc.g";
connectAttr "locator9_pointConstraint1.cty" "ChestJntGDLoc.ty";
connectAttr "ChestJntGDLoc.pim" "locator9_geometryConstraint1.cpim";
connectAttr "SpineCurveGDShape.ws" "locator9_geometryConstraint1.tg[0].tgm";
connectAttr "locator9_geometryConstraint1.w0" "locator9_geometryConstraint1.tg[0].tw"
		;
connectAttr "ChestJntGDLoc.pim" "locator9_pointConstraint1.cpim";
connectAttr "ChestJntGDLoc.rp" "locator9_pointConstraint1.crp";
connectAttr "ChestJntGDLoc.rpt" "locator9_pointConstraint1.crt";
connectAttr "spineArcCtrl.t" "locator9_pointConstraint1.tg[0].tt";
connectAttr "spineArcCtrl.rp" "locator9_pointConstraint1.tg[0].trp";
connectAttr "spineArcCtrl.rpt" "locator9_pointConstraint1.tg[0].trt";
connectAttr "spineArcCtrl.pm" "locator9_pointConstraint1.tg[0].tpm";
connectAttr "locator9_pointConstraint1.w0" "locator9_pointConstraint1.tg[0].tw";
connectAttr "makeNurbCircle2.oc" "RootJntGDCtrlShape.cr";
connectAttr "spineArcCtrlGrp_parentConstraint.ctx" "spineArcCtrlGrp.tx";
connectAttr "spineArcCtrlGrp_parentConstraint.cty" "spineArcCtrlGrp.ty";
connectAttr "spineArcCtrlGrp_parentConstraint.ctz" "spineArcCtrlGrp.tz";
connectAttr "spineArcCtrlGrp_parentConstraint.crx" "spineArcCtrlGrp.rx";
connectAttr "spineArcCtrlGrp_parentConstraint.cry" "spineArcCtrlGrp.ry";
connectAttr "spineArcCtrlGrp_parentConstraint.crz" "spineArcCtrlGrp.rz";
connectAttr "makeNurbCircle1.oc" "spineArcCtrlShape.cr";
connectAttr "spineArcCtrlGrp.ro" "spineArcCtrlGrp_parentConstraint.cro";
connectAttr "spineArcCtrlGrp.pim" "spineArcCtrlGrp_parentConstraint.cpim";
connectAttr "spineArcCtrlGrp.rp" "spineArcCtrlGrp_parentConstraint.crp";
connectAttr "spineArcCtrlGrp.rpt" "spineArcCtrlGrp_parentConstraint.crt";
connectAttr "RootJntGDCtrl.t" "spineArcCtrlGrp_parentConstraint.tg[0].tt";
connectAttr "RootJntGDCtrl.rp" "spineArcCtrlGrp_parentConstraint.tg[0].trp";
connectAttr "RootJntGDCtrl.rpt" "spineArcCtrlGrp_parentConstraint.tg[0].trt";
connectAttr "RootJntGDCtrl.r" "spineArcCtrlGrp_parentConstraint.tg[0].tr";
connectAttr "RootJntGDCtrl.ro" "spineArcCtrlGrp_parentConstraint.tg[0].tro";
connectAttr "RootJntGDCtrl.s" "spineArcCtrlGrp_parentConstraint.tg[0].ts";
connectAttr "RootJntGDCtrl.pm" "spineArcCtrlGrp_parentConstraint.tg[0].tpm";
connectAttr "spineArcCtrlGrp_parentConstraint.w0" "spineArcCtrlGrp_parentConstraint.tg[0].tw"
		;
connectAttr "Neck1JntGDCtrl.t" "spineArcCtrlGrp_parentConstraint.tg[1].tt";
connectAttr "Neck1JntGDCtrl.rp" "spineArcCtrlGrp_parentConstraint.tg[1].trp";
connectAttr "Neck1JntGDCtrl.rpt" "spineArcCtrlGrp_parentConstraint.tg[1].trt";
connectAttr "Neck1JntGDCtrl.r" "spineArcCtrlGrp_parentConstraint.tg[1].tr";
connectAttr "Neck1JntGDCtrl.ro" "spineArcCtrlGrp_parentConstraint.tg[1].tro";
connectAttr "Neck1JntGDCtrl.s" "spineArcCtrlGrp_parentConstraint.tg[1].ts";
connectAttr "Neck1JntGDCtrl.pm" "spineArcCtrlGrp_parentConstraint.tg[1].tpm";
connectAttr "spineArcCtrlGrp_parentConstraint.w1" "spineArcCtrlGrp_parentConstraint.tg[1].tw"
		;
connectAttr "makeNurbCircle3.oc" "HeadJntGDCtrlShape.cr";
connectAttr "JntGDCtrl.Sphere_Scale" "HeadJntGDSphere.sx" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "HeadJntGDSphere.sy" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "HeadJntGDSphere.sz" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "HeadEndJntGDSphere.sx" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "HeadEndJntGDSphere.sy" -l on;
connectAttr "JntGDCtrl.Sphere_Scale" "HeadEndJntGDSphere.sz" -l on;
connectAttr "leastSquaresModifier2.ono" "TongueGDCurveShape.cr";
connectAttr "TongueGDCurveCtrlGrp_parentConstraint1.ctx" "TongueGDCurveCtrlGrp.tx"
		;
connectAttr "TongueGDCurveCtrlGrp_parentConstraint1.cty" "TongueGDCurveCtrlGrp.ty"
		;
connectAttr "TongueGDCurveCtrlGrp_parentConstraint1.ctz" "TongueGDCurveCtrlGrp.tz"
		;
connectAttr "TongueGDCurveCtrlGrp_parentConstraint1.crx" "TongueGDCurveCtrlGrp.rx"
		;
connectAttr "TongueGDCurveCtrlGrp_parentConstraint1.cry" "TongueGDCurveCtrlGrp.ry"
		;
connectAttr "TongueGDCurveCtrlGrp_parentConstraint1.crz" "TongueGDCurveCtrlGrp.rz"
		;
connectAttr "TongueGDCurveCtrlGrp.ro" "TongueGDCurveCtrlGrp_parentConstraint1.cro"
		;
connectAttr "TongueGDCurveCtrlGrp.pim" "TongueGDCurveCtrlGrp_parentConstraint1.cpim"
		;
connectAttr "TongueGDCurveCtrlGrp.rp" "TongueGDCurveCtrlGrp_parentConstraint1.crp"
		;
connectAttr "TongueGDCurveCtrlGrp.rpt" "TongueGDCurveCtrlGrp_parentConstraint1.crt"
		;
connectAttr "JawJntGD.t" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].tt";
connectAttr "JawJntGD.rp" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].trp";
connectAttr "JawJntGD.rpt" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].trt";
connectAttr "JawJntGD.r" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].tr";
connectAttr "JawJntGD.ro" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].tro";
connectAttr "JawJntGD.s" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].ts";
connectAttr "JawJntGD.pm" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].tpm";
connectAttr "JawJntGD.jo" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].tjo";
connectAttr "TongueGDCurveCtrlGrp_parentConstraint1.w0" "TongueGDCurveCtrlGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "addDoubleLinear19.o" "Tongue1JntGD.tx";
connectAttr "addDoubleLinear20.o" "Tongue1JntGD.ty";
connectAttr "addDoubleLinear21.o" "Tongue1JntGD.tz";
connectAttr "TongueMotionPath1.msg" "Tongue1JntGD.sml";
connectAttr "TongueMotionPath1.rx" "Tongue1JntGD.rx";
connectAttr "TongueMotionPath1.ry" "Tongue1JntGD.ry";
connectAttr "TongueMotionPath1.rz" "Tongue1JntGD.rz";
connectAttr "TongueMotionPath1.ro" "Tongue1JntGD.ro";
connectAttr "addDoubleLinear22.o" "Tongue2JntGD.tx";
connectAttr "addDoubleLinear23.o" "Tongue2JntGD.ty";
connectAttr "addDoubleLinear24.o" "Tongue2JntGD.tz";
connectAttr "TongueMotionPath2.msg" "Tongue2JntGD.sml";
connectAttr "TongueMotionPath2.rx" "Tongue2JntGD.rx";
connectAttr "TongueMotionPath2.ry" "Tongue2JntGD.ry";
connectAttr "TongueMotionPath2.rz" "Tongue2JntGD.rz";
connectAttr "TongueMotionPath2.ro" "Tongue2JntGD.ro";
connectAttr "addDoubleLinear25.o" "Tongue3JntGD.tx";
connectAttr "addDoubleLinear26.o" "Tongue3JntGD.ty";
connectAttr "addDoubleLinear27.o" "Tongue3JntGD.tz";
connectAttr "TongueMotionPath3.msg" "Tongue3JntGD.sml";
connectAttr "TongueMotionPath3.rx" "Tongue3JntGD.rx";
connectAttr "TongueMotionPath3.ry" "Tongue3JntGD.ry";
connectAttr "TongueMotionPath3.rz" "Tongue3JntGD.rz";
connectAttr "TongueMotionPath3.ro" "Tongue3JntGD.ro";
connectAttr "addDoubleLinear28.o" "Tongue4JntGD.tx";
connectAttr "addDoubleLinear29.o" "Tongue4JntGD.ty";
connectAttr "addDoubleLinear30.o" "Tongue4JntGD.tz";
connectAttr "TongueMotionPath4.msg" "Tongue4JntGD.sml";
connectAttr "TongueMotionPath4.rx" "Tongue4JntGD.rx";
connectAttr "TongueMotionPath4.ry" "Tongue4JntGD.ry";
connectAttr "TongueMotionPath4.rz" "Tongue4JntGD.rz";
connectAttr "TongueMotionPath4.ro" "Tongue4JntGD.ro";
connectAttr "addDoubleLinear31.o" "Tongue5JntGD.tx";
connectAttr "addDoubleLinear32.o" "Tongue5JntGD.ty";
connectAttr "addDoubleLinear33.o" "Tongue5JntGD.tz";
connectAttr "TongueMotionPath5.msg" "Tongue5JntGD.sml";
connectAttr "TongueMotionPath5.rx" "Tongue5JntGD.rx";
connectAttr "TongueMotionPath5.ry" "Tongue5JntGD.ry";
connectAttr "TongueMotionPath5.rz" "Tongue5JntGD.rz";
connectAttr "TongueMotionPath5.ro" "Tongue5JntGD.ro";
connectAttr "addDoubleLinear34.o" "Tongue6JntGD.tx";
connectAttr "addDoubleLinear35.o" "Tongue6JntGD.ty";
connectAttr "addDoubleLinear36.o" "Tongue6JntGD.tz";
connectAttr "TongueMotionPath6.msg" "Tongue6JntGD.sml";
connectAttr "TongueMotionPath6.rx" "Tongue6JntGD.rx";
connectAttr "TongueMotionPath6.ry" "Tongue6JntGD.ry";
connectAttr "TongueMotionPath6.rz" "Tongue6JntGD.rz";
connectAttr "TongueMotionPath6.ro" "Tongue6JntGD.ro";
connectAttr "LeftFingerGDGrp_parentConstraint1.ctx" "LeftFingerGDGrp.tx";
connectAttr "LeftFingerGDGrp_parentConstraint1.cty" "LeftFingerGDGrp.ty";
connectAttr "LeftFingerGDGrp_parentConstraint1.ctz" "LeftFingerGDGrp.tz";
connectAttr "LeftFingerGDGrp_parentConstraint1.crx" "LeftFingerGDGrp.rx";
connectAttr "LeftFingerGDGrp_parentConstraint1.cry" "LeftFingerGDGrp.ry";
connectAttr "LeftFingerGDGrp_parentConstraint1.crz" "LeftFingerGDGrp.rz";
connectAttr "LeftFingerGDGrp_scaleConstraint1.csx" "LeftFingerGDGrp.sx";
connectAttr "LeftFingerGDGrp_scaleConstraint1.csy" "LeftFingerGDGrp.sy";
connectAttr "LeftFingerGDGrp_scaleConstraint1.csz" "LeftFingerGDGrp.sz";
connectAttr "LeftFingerGDGrp.ro" "LeftFingerGDGrp_parentConstraint1.cro";
connectAttr "LeftFingerGDGrp.pim" "LeftFingerGDGrp_parentConstraint1.cpim";
connectAttr "LeftFingerGDGrp.rp" "LeftFingerGDGrp_parentConstraint1.crp";
connectAttr "LeftFingerGDGrp.rpt" "LeftFingerGDGrp_parentConstraint1.crt";
connectAttr "LeftWristJntGD.t" "LeftFingerGDGrp_parentConstraint1.tg[0].tt";
connectAttr "LeftWristJntGD.rp" "LeftFingerGDGrp_parentConstraint1.tg[0].trp";
connectAttr "LeftWristJntGD.rpt" "LeftFingerGDGrp_parentConstraint1.tg[0].trt";
connectAttr "LeftWristJntGD.r" "LeftFingerGDGrp_parentConstraint1.tg[0].tr";
connectAttr "LeftWristJntGD.ro" "LeftFingerGDGrp_parentConstraint1.tg[0].tro";
connectAttr "LeftWristJntGD.s" "LeftFingerGDGrp_parentConstraint1.tg[0].ts";
connectAttr "LeftWristJntGD.pm" "LeftFingerGDGrp_parentConstraint1.tg[0].tpm";
connectAttr "LeftWristJntGD.jo" "LeftFingerGDGrp_parentConstraint1.tg[0].tjo";
connectAttr "LeftFingerGDGrp_parentConstraint1.w0" "LeftFingerGDGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftIndex1JntGD.s" "LeftIndex2JntGD.is";
connectAttr "LeftIndex2JntGD.s" "LeftIndex3JntGD.is";
connectAttr "LeftIndex3JntGD.s" "LeftIndex4JntGD.is";
connectAttr "LeftMiddle1JntGD.s" "LeftMiddle2JntGD.is";
connectAttr "LeftMiddle2JntGD.s" "LeftMiddle3JntGD.is";
connectAttr "LeftMiddle3JntGD.s" "LeftMiddle4JntGD.is";
connectAttr "LeftRing1JntGD.s" "LeftRing2JntGD.is";
connectAttr "LeftRing2JntGD.s" "LeftRing3JntGD.is";
connectAttr "LeftRing3JntGD.s" "LeftRing4JntGD.is";
connectAttr "LeftPinky1JntGD.s" "LeftPinky2JntGD.is";
connectAttr "LeftPinky2JntGD.s" "LeftPinky3JntGD.is";
connectAttr "LeftPinky3JntGD.s" "LeftPinky4JntGD.is";
connectAttr "LeftThumb1JntGD.s" "LeftThumb2JntGD.is";
connectAttr "LeftThumb2JntGD.s" "LeftThumb3JntGD.is";
connectAttr "LeftThumb3JntGD.s" "LeftThumb4JntGD.is";
connectAttr "LeftFingerGDGrp.pim" "LeftFingerGDGrp_scaleConstraint1.cpim";
connectAttr "LeftWristJntGD.s" "LeftFingerGDGrp_scaleConstraint1.tg[0].ts";
connectAttr "LeftWristJntGD.pm" "LeftFingerGDGrp_scaleConstraint1.tg[0].tpm";
connectAttr "LeftFingerGDGrp_scaleConstraint1.w0" "LeftFingerGDGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "RightFingerGDGrp_parentConstraint1.ctx" "RightFingerGDGrp.tx";
connectAttr "RightFingerGDGrp_parentConstraint1.cty" "RightFingerGDGrp.ty";
connectAttr "RightFingerGDGrp_parentConstraint1.ctz" "RightFingerGDGrp.tz";
connectAttr "RightFingerGDGrp_parentConstraint1.crx" "RightFingerGDGrp.rx";
connectAttr "RightFingerGDGrp_parentConstraint1.cry" "RightFingerGDGrp.ry";
connectAttr "RightFingerGDGrp_parentConstraint1.crz" "RightFingerGDGrp.rz";
connectAttr "RightFingerGDGrp_scaleConstraint1.csx" "RightFingerGDGrp.sx";
connectAttr "RightFingerGDGrp_scaleConstraint1.csy" "RightFingerGDGrp.sy";
connectAttr "RightFingerGDGrp_scaleConstraint1.csz" "RightFingerGDGrp.sz";
connectAttr "RightFingerGDGrp.ro" "RightFingerGDGrp_parentConstraint1.cro";
connectAttr "RightFingerGDGrp.pim" "RightFingerGDGrp_parentConstraint1.cpim";
connectAttr "RightFingerGDGrp.rp" "RightFingerGDGrp_parentConstraint1.crp";
connectAttr "RightFingerGDGrp.rpt" "RightFingerGDGrp_parentConstraint1.crt";
connectAttr "RightWristJntGD.t" "RightFingerGDGrp_parentConstraint1.tg[0].tt";
connectAttr "RightWristJntGD.rp" "RightFingerGDGrp_parentConstraint1.tg[0].trp";
connectAttr "RightWristJntGD.rpt" "RightFingerGDGrp_parentConstraint1.tg[0].trt"
		;
connectAttr "RightWristJntGD.r" "RightFingerGDGrp_parentConstraint1.tg[0].tr";
connectAttr "RightWristJntGD.ro" "RightFingerGDGrp_parentConstraint1.tg[0].tro";
connectAttr "RightWristJntGD.s" "RightFingerGDGrp_parentConstraint1.tg[0].ts";
connectAttr "RightWristJntGD.pm" "RightFingerGDGrp_parentConstraint1.tg[0].tpm";
connectAttr "RightWristJntGD.jo" "RightFingerGDGrp_parentConstraint1.tg[0].tjo";
connectAttr "RightFingerGDGrp_parentConstraint1.w0" "RightFingerGDGrp_parentConstraint1.tg[0].tw"
		;
connectAttr "RightIndex1JntGD_parentConstraint1.ctx" "RightIndex1JntGD.tx" -l on
		;
connectAttr "RightIndex1JntGD_parentConstraint1.cty" "RightIndex1JntGD.ty" -l on
		;
connectAttr "RightIndex1JntGD_parentConstraint1.ctz" "RightIndex1JntGD.tz" -l on
		;
connectAttr "RightIndex1JntGD_parentConstraint1.crx" "RightIndex1JntGD.rx" -l on
		;
connectAttr "RightIndex1JntGD_parentConstraint1.cry" "RightIndex1JntGD.ry" -l on
		;
connectAttr "RightIndex1JntGD_parentConstraint1.crz" "RightIndex1JntGD.rz" -l on
		;
connectAttr "RightIndex1JntGD.s" "RightIndex2JntGD.is";
connectAttr "RightIndex2JntGD_parentConstraint1.ctx" "RightIndex2JntGD.tx" -l on
		;
connectAttr "RightIndex2JntGD_parentConstraint1.cty" "RightIndex2JntGD.ty" -l on
		;
connectAttr "RightIndex2JntGD_parentConstraint1.ctz" "RightIndex2JntGD.tz" -l on
		;
connectAttr "RightIndex2JntGD_parentConstraint1.crx" "RightIndex2JntGD.rx" -l on
		;
connectAttr "RightIndex2JntGD_parentConstraint1.cry" "RightIndex2JntGD.ry" -l on
		;
connectAttr "RightIndex2JntGD_parentConstraint1.crz" "RightIndex2JntGD.rz" -l on
		;
connectAttr "RightIndex2JntGD.s" "RightIndex3JntGD.is";
connectAttr "RightIndex3JntGD_parentConstraint1.ctx" "RightIndex3JntGD.tx" -l on
		;
connectAttr "RightIndex3JntGD_parentConstraint1.cty" "RightIndex3JntGD.ty" -l on
		;
connectAttr "RightIndex3JntGD_parentConstraint1.ctz" "RightIndex3JntGD.tz" -l on
		;
connectAttr "RightIndex3JntGD_parentConstraint1.crx" "RightIndex3JntGD.rx" -l on
		;
connectAttr "RightIndex3JntGD_parentConstraint1.cry" "RightIndex3JntGD.ry" -l on
		;
connectAttr "RightIndex3JntGD_parentConstraint1.crz" "RightIndex3JntGD.rz" -l on
		;
connectAttr "RightIndex3JntGD.s" "RightIndex4JntGD.is";
connectAttr "RightIndex4JntGD_parentConstraint1.ctx" "RightIndex4JntGD.tx" -l on
		;
connectAttr "RightIndex4JntGD_parentConstraint1.cty" "RightIndex4JntGD.ty" -l on
		;
connectAttr "RightIndex4JntGD_parentConstraint1.ctz" "RightIndex4JntGD.tz" -l on
		;
connectAttr "RightIndex4JntGD_parentConstraint1.crx" "RightIndex4JntGD.rx" -l on
		;
connectAttr "RightIndex4JntGD_parentConstraint1.cry" "RightIndex4JntGD.ry" -l on
		;
connectAttr "RightIndex4JntGD_parentConstraint1.crz" "RightIndex4JntGD.rz" -l on
		;
connectAttr "RightIndex5JntGD_parentConstraint1.ctx" "RightIndex5JntGD.tx" -l on
		;
connectAttr "RightIndex5JntGD_parentConstraint1.cty" "RightIndex5JntGD.ty" -l on
		;
connectAttr "RightIndex5JntGD_parentConstraint1.ctz" "RightIndex5JntGD.tz" -l on
		;
connectAttr "RightIndex5JntGD_parentConstraint1.crx" "RightIndex5JntGD.rx" -l on
		;
connectAttr "RightIndex5JntGD_parentConstraint1.cry" "RightIndex5JntGD.ry" -l on
		;
connectAttr "RightIndex5JntGD_parentConstraint1.crz" "RightIndex5JntGD.rz" -l on
		;
connectAttr "RightIndex5JntGD.ro" "RightIndex5JntGD_parentConstraint1.cro";
connectAttr "RightIndex5JntGD.pim" "RightIndex5JntGD_parentConstraint1.cpim";
connectAttr "RightIndex5JntGD.rp" "RightIndex5JntGD_parentConstraint1.crp";
connectAttr "RightIndex5JntGD.rpt" "RightIndex5JntGD_parentConstraint1.crt";
connectAttr "RightIndex5JntGD.jo" "RightIndex5JntGD_parentConstraint1.cjo";
connectAttr "RightIndex5JntGDLoc.t" "RightIndex5JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightIndex5JntGDLoc.rp" "RightIndex5JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightIndex5JntGDLoc.rpt" "RightIndex5JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightIndex5JntGDLoc.r" "RightIndex5JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightIndex5JntGDLoc.ro" "RightIndex5JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightIndex5JntGDLoc.s" "RightIndex5JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightIndex5JntGDLoc.pm" "RightIndex5JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightIndex5JntGD_parentConstraint1.w0" "RightIndex5JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightIndex4JntGD.ro" "RightIndex4JntGD_parentConstraint1.cro";
connectAttr "RightIndex4JntGD.pim" "RightIndex4JntGD_parentConstraint1.cpim";
connectAttr "RightIndex4JntGD.rp" "RightIndex4JntGD_parentConstraint1.crp";
connectAttr "RightIndex4JntGD.rpt" "RightIndex4JntGD_parentConstraint1.crt";
connectAttr "RightIndex4JntGD.jo" "RightIndex4JntGD_parentConstraint1.cjo";
connectAttr "RightIndex4JntGDLoc.t" "RightIndex4JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightIndex4JntGDLoc.rp" "RightIndex4JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightIndex4JntGDLoc.rpt" "RightIndex4JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightIndex4JntGDLoc.r" "RightIndex4JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightIndex4JntGDLoc.ro" "RightIndex4JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightIndex4JntGDLoc.s" "RightIndex4JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightIndex4JntGDLoc.pm" "RightIndex4JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightIndex4JntGD_parentConstraint1.w0" "RightIndex4JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightIndex3JntGD.ro" "RightIndex3JntGD_parentConstraint1.cro";
connectAttr "RightIndex3JntGD.pim" "RightIndex3JntGD_parentConstraint1.cpim";
connectAttr "RightIndex3JntGD.rp" "RightIndex3JntGD_parentConstraint1.crp";
connectAttr "RightIndex3JntGD.rpt" "RightIndex3JntGD_parentConstraint1.crt";
connectAttr "RightIndex3JntGD.jo" "RightIndex3JntGD_parentConstraint1.cjo";
connectAttr "RightIndex3JntGDLoc.t" "RightIndex3JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightIndex3JntGDLoc.rp" "RightIndex3JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightIndex3JntGDLoc.rpt" "RightIndex3JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightIndex3JntGDLoc.r" "RightIndex3JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightIndex3JntGDLoc.ro" "RightIndex3JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightIndex3JntGDLoc.s" "RightIndex3JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightIndex3JntGDLoc.pm" "RightIndex3JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightIndex3JntGD_parentConstraint1.w0" "RightIndex3JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightIndex2JntGD.ro" "RightIndex2JntGD_parentConstraint1.cro";
connectAttr "RightIndex2JntGD.pim" "RightIndex2JntGD_parentConstraint1.cpim";
connectAttr "RightIndex2JntGD.rp" "RightIndex2JntGD_parentConstraint1.crp";
connectAttr "RightIndex2JntGD.rpt" "RightIndex2JntGD_parentConstraint1.crt";
connectAttr "RightIndex2JntGD.jo" "RightIndex2JntGD_parentConstraint1.cjo";
connectAttr "RightIndex2JntGDLoc.t" "RightIndex2JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightIndex2JntGDLoc.rp" "RightIndex2JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightIndex2JntGDLoc.rpt" "RightIndex2JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightIndex2JntGDLoc.r" "RightIndex2JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightIndex2JntGDLoc.ro" "RightIndex2JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightIndex2JntGDLoc.s" "RightIndex2JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightIndex2JntGDLoc.pm" "RightIndex2JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightIndex2JntGD_parentConstraint1.w0" "RightIndex2JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightIndex1JntGD.ro" "RightIndex1JntGD_parentConstraint1.cro";
connectAttr "RightIndex1JntGD.pim" "RightIndex1JntGD_parentConstraint1.cpim";
connectAttr "RightIndex1JntGD.rp" "RightIndex1JntGD_parentConstraint1.crp";
connectAttr "RightIndex1JntGD.rpt" "RightIndex1JntGD_parentConstraint1.crt";
connectAttr "RightIndex1JntGD.jo" "RightIndex1JntGD_parentConstraint1.cjo";
connectAttr "RightIndex1JntGDLoc.t" "RightIndex1JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightIndex1JntGDLoc.rp" "RightIndex1JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightIndex1JntGDLoc.rpt" "RightIndex1JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightIndex1JntGDLoc.r" "RightIndex1JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightIndex1JntGDLoc.ro" "RightIndex1JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightIndex1JntGDLoc.s" "RightIndex1JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightIndex1JntGDLoc.pm" "RightIndex1JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightIndex1JntGD_parentConstraint1.w0" "RightIndex1JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightMiddle1JntGD_parentConstraint1.ctx" "RightMiddle1JntGD.tx" -l on
		;
connectAttr "RightMiddle1JntGD_parentConstraint1.cty" "RightMiddle1JntGD.ty" -l on
		;
connectAttr "RightMiddle1JntGD_parentConstraint1.ctz" "RightMiddle1JntGD.tz" -l on
		;
connectAttr "RightMiddle1JntGD_parentConstraint1.crx" "RightMiddle1JntGD.rx" -l on
		;
connectAttr "RightMiddle1JntGD_parentConstraint1.cry" "RightMiddle1JntGD.ry" -l on
		;
connectAttr "RightMiddle1JntGD_parentConstraint1.crz" "RightMiddle1JntGD.rz" -l on
		;
connectAttr "RightMiddle1JntGD.s" "RightMiddle2JntGD.is";
connectAttr "RightMiddle2JntGD_parentConstraint1.ctx" "RightMiddle2JntGD.tx" -l on
		;
connectAttr "RightMiddle2JntGD_parentConstraint1.cty" "RightMiddle2JntGD.ty" -l on
		;
connectAttr "RightMiddle2JntGD_parentConstraint1.ctz" "RightMiddle2JntGD.tz" -l on
		;
connectAttr "RightMiddle2JntGD_parentConstraint1.crx" "RightMiddle2JntGD.rx" -l on
		;
connectAttr "RightMiddle2JntGD_parentConstraint1.cry" "RightMiddle2JntGD.ry" -l on
		;
connectAttr "RightMiddle2JntGD_parentConstraint1.crz" "RightMiddle2JntGD.rz" -l on
		;
connectAttr "RightMiddle2JntGD.s" "RightMiddle3JntGD.is";
connectAttr "RightMiddle3JntGD_parentConstraint1.ctx" "RightMiddle3JntGD.tx" -l on
		;
connectAttr "RightMiddle3JntGD_parentConstraint1.cty" "RightMiddle3JntGD.ty" -l on
		;
connectAttr "RightMiddle3JntGD_parentConstraint1.ctz" "RightMiddle3JntGD.tz" -l on
		;
connectAttr "RightMiddle3JntGD_parentConstraint1.crx" "RightMiddle3JntGD.rx" -l on
		;
connectAttr "RightMiddle3JntGD_parentConstraint1.cry" "RightMiddle3JntGD.ry" -l on
		;
connectAttr "RightMiddle3JntGD_parentConstraint1.crz" "RightMiddle3JntGD.rz" -l on
		;
connectAttr "RightMiddle3JntGD.s" "RightMiddle4JntGD.is";
connectAttr "RightMiddle4JntGD_parentConstraint1.ctx" "RightMiddle4JntGD.tx" -l on
		;
connectAttr "RightMiddle4JntGD_parentConstraint1.cty" "RightMiddle4JntGD.ty" -l on
		;
connectAttr "RightMiddle4JntGD_parentConstraint1.ctz" "RightMiddle4JntGD.tz" -l on
		;
connectAttr "RightMiddle4JntGD_parentConstraint1.crx" "RightMiddle4JntGD.rx" -l on
		;
connectAttr "RightMiddle4JntGD_parentConstraint1.cry" "RightMiddle4JntGD.ry" -l on
		;
connectAttr "RightMiddle4JntGD_parentConstraint1.crz" "RightMiddle4JntGD.rz" -l on
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.ctx" "RightMiddle5JntGD.tx" -l on
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.cty" "RightMiddle5JntGD.ty" -l on
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.ctz" "RightMiddle5JntGD.tz" -l on
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.crx" "RightMiddle5JntGD.rx" -l on
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.cry" "RightMiddle5JntGD.ry" -l on
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.crz" "RightMiddle5JntGD.rz" -l on
		;
connectAttr "RightMiddle5JntGD.ro" "RightMiddle5JntGD_parentConstraint1.cro";
connectAttr "RightMiddle5JntGD.pim" "RightMiddle5JntGD_parentConstraint1.cpim";
connectAttr "RightMiddle5JntGD.rp" "RightMiddle5JntGD_parentConstraint1.crp";
connectAttr "RightMiddle5JntGD.rpt" "RightMiddle5JntGD_parentConstraint1.crt";
connectAttr "RightMiddle5JntGD.jo" "RightMiddle5JntGD_parentConstraint1.cjo";
connectAttr "RightMiddle5JntGDLoc.t" "RightMiddle5JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightMiddle5JntGDLoc.rp" "RightMiddle5JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightMiddle5JntGDLoc.rpt" "RightMiddle5JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightMiddle5JntGDLoc.r" "RightMiddle5JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightMiddle5JntGDLoc.ro" "RightMiddle5JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightMiddle5JntGDLoc.s" "RightMiddle5JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightMiddle5JntGDLoc.pm" "RightMiddle5JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.w0" "RightMiddle5JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightMiddle4JntGD.ro" "RightMiddle4JntGD_parentConstraint1.cro";
connectAttr "RightMiddle4JntGD.pim" "RightMiddle4JntGD_parentConstraint1.cpim";
connectAttr "RightMiddle4JntGD.rp" "RightMiddle4JntGD_parentConstraint1.crp";
connectAttr "RightMiddle4JntGD.rpt" "RightMiddle4JntGD_parentConstraint1.crt";
connectAttr "RightMiddle4JntGD.jo" "RightMiddle4JntGD_parentConstraint1.cjo";
connectAttr "RightMiddle4JntGDLoc.t" "RightMiddle4JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightMiddle4JntGDLoc.rp" "RightMiddle4JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightMiddle4JntGDLoc.rpt" "RightMiddle4JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightMiddle4JntGDLoc.r" "RightMiddle4JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightMiddle4JntGDLoc.ro" "RightMiddle4JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightMiddle4JntGDLoc.s" "RightMiddle4JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightMiddle4JntGDLoc.pm" "RightMiddle4JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightMiddle4JntGD_parentConstraint1.w0" "RightMiddle4JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightMiddle3JntGD.ro" "RightMiddle3JntGD_parentConstraint1.cro";
connectAttr "RightMiddle3JntGD.pim" "RightMiddle3JntGD_parentConstraint1.cpim";
connectAttr "RightMiddle3JntGD.rp" "RightMiddle3JntGD_parentConstraint1.crp";
connectAttr "RightMiddle3JntGD.rpt" "RightMiddle3JntGD_parentConstraint1.crt";
connectAttr "RightMiddle3JntGD.jo" "RightMiddle3JntGD_parentConstraint1.cjo";
connectAttr "RightMiddle3JntGDLoc.t" "RightMiddle3JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightMiddle3JntGDLoc.rp" "RightMiddle3JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightMiddle3JntGDLoc.rpt" "RightMiddle3JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightMiddle3JntGDLoc.r" "RightMiddle3JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightMiddle3JntGDLoc.ro" "RightMiddle3JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightMiddle3JntGDLoc.s" "RightMiddle3JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightMiddle3JntGDLoc.pm" "RightMiddle3JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightMiddle3JntGD_parentConstraint1.w0" "RightMiddle3JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightMiddle2JntGD.ro" "RightMiddle2JntGD_parentConstraint1.cro";
connectAttr "RightMiddle2JntGD.pim" "RightMiddle2JntGD_parentConstraint1.cpim";
connectAttr "RightMiddle2JntGD.rp" "RightMiddle2JntGD_parentConstraint1.crp";
connectAttr "RightMiddle2JntGD.rpt" "RightMiddle2JntGD_parentConstraint1.crt";
connectAttr "RightMiddle2JntGD.jo" "RightMiddle2JntGD_parentConstraint1.cjo";
connectAttr "RightMiddle2JntGDLoc.t" "RightMiddle2JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightMiddle2JntGDLoc.rp" "RightMiddle2JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightMiddle2JntGDLoc.rpt" "RightMiddle2JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightMiddle2JntGDLoc.r" "RightMiddle2JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightMiddle2JntGDLoc.ro" "RightMiddle2JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightMiddle2JntGDLoc.s" "RightMiddle2JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightMiddle2JntGDLoc.pm" "RightMiddle2JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightMiddle2JntGD_parentConstraint1.w0" "RightMiddle2JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightMiddle1JntGD.ro" "RightMiddle1JntGD_parentConstraint1.cro";
connectAttr "RightMiddle1JntGD.pim" "RightMiddle1JntGD_parentConstraint1.cpim";
connectAttr "RightMiddle1JntGD.rp" "RightMiddle1JntGD_parentConstraint1.crp";
connectAttr "RightMiddle1JntGD.rpt" "RightMiddle1JntGD_parentConstraint1.crt";
connectAttr "RightMiddle1JntGD.jo" "RightMiddle1JntGD_parentConstraint1.cjo";
connectAttr "RightMiddle1JntGDLoc.t" "RightMiddle1JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightMiddle1JntGDLoc.rp" "RightMiddle1JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightMiddle1JntGDLoc.rpt" "RightMiddle1JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightMiddle1JntGDLoc.r" "RightMiddle1JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightMiddle1JntGDLoc.ro" "RightMiddle1JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightMiddle1JntGDLoc.s" "RightMiddle1JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightMiddle1JntGDLoc.pm" "RightMiddle1JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightMiddle1JntGD_parentConstraint1.w0" "RightMiddle1JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightRing1JntGD_parentConstraint1.ctx" "RightRing1JntGD.tx" -l on;
connectAttr "RightRing1JntGD_parentConstraint1.cty" "RightRing1JntGD.ty" -l on;
connectAttr "RightRing1JntGD_parentConstraint1.ctz" "RightRing1JntGD.tz" -l on;
connectAttr "RightRing1JntGD_parentConstraint1.crx" "RightRing1JntGD.rx" -l on;
connectAttr "RightRing1JntGD_parentConstraint1.cry" "RightRing1JntGD.ry" -l on;
connectAttr "RightRing1JntGD_parentConstraint1.crz" "RightRing1JntGD.rz" -l on;
connectAttr "RightRing1JntGD.s" "RightRing2JntGD.is";
connectAttr "RightRing2JntGD_parentConstraint1.ctx" "RightRing2JntGD.tx" -l on;
connectAttr "RightRing2JntGD_parentConstraint1.cty" "RightRing2JntGD.ty" -l on;
connectAttr "RightRing2JntGD_parentConstraint1.ctz" "RightRing2JntGD.tz" -l on;
connectAttr "RightRing2JntGD_parentConstraint1.crx" "RightRing2JntGD.rx" -l on;
connectAttr "RightRing2JntGD_parentConstraint1.cry" "RightRing2JntGD.ry" -l on;
connectAttr "RightRing2JntGD_parentConstraint1.crz" "RightRing2JntGD.rz" -l on;
connectAttr "RightRing2JntGD.s" "RightRing3JntGD.is";
connectAttr "RightRing3JntGD_parentConstraint1.ctx" "RightRing3JntGD.tx" -l on;
connectAttr "RightRing3JntGD_parentConstraint1.cty" "RightRing3JntGD.ty" -l on;
connectAttr "RightRing3JntGD_parentConstraint1.ctz" "RightRing3JntGD.tz" -l on;
connectAttr "RightRing3JntGD_parentConstraint1.crx" "RightRing3JntGD.rx" -l on;
connectAttr "RightRing3JntGD_parentConstraint1.cry" "RightRing3JntGD.ry" -l on;
connectAttr "RightRing3JntGD_parentConstraint1.crz" "RightRing3JntGD.rz" -l on;
connectAttr "RightRing3JntGD.s" "RightRing4JntGD.is";
connectAttr "RightRing4JntGD_parentConstraint1.ctx" "RightRing4JntGD.tx" -l on;
connectAttr "RightRing4JntGD_parentConstraint1.cty" "RightRing4JntGD.ty" -l on;
connectAttr "RightRing4JntGD_parentConstraint1.ctz" "RightRing4JntGD.tz" -l on;
connectAttr "RightRing4JntGD_parentConstraint1.crx" "RightRing4JntGD.rx" -l on;
connectAttr "RightRing4JntGD_parentConstraint1.cry" "RightRing4JntGD.ry" -l on;
connectAttr "RightRing4JntGD_parentConstraint1.crz" "RightRing4JntGD.rz" -l on;
connectAttr "RightRing5JntGD_parentConstraint1.ctx" "RightRing5JntGD.tx" -l on;
connectAttr "RightRing5JntGD_parentConstraint1.cty" "RightRing5JntGD.ty" -l on;
connectAttr "RightRing5JntGD_parentConstraint1.ctz" "RightRing5JntGD.tz" -l on;
connectAttr "RightRing5JntGD_parentConstraint1.crx" "RightRing5JntGD.rx" -l on;
connectAttr "RightRing5JntGD_parentConstraint1.cry" "RightRing5JntGD.ry" -l on;
connectAttr "RightRing5JntGD_parentConstraint1.crz" "RightRing5JntGD.rz" -l on;
connectAttr "RightRing5JntGD.ro" "RightRing5JntGD_parentConstraint1.cro";
connectAttr "RightRing5JntGD.pim" "RightRing5JntGD_parentConstraint1.cpim";
connectAttr "RightRing5JntGD.rp" "RightRing5JntGD_parentConstraint1.crp";
connectAttr "RightRing5JntGD.rpt" "RightRing5JntGD_parentConstraint1.crt";
connectAttr "RightRing5JntGD.jo" "RightRing5JntGD_parentConstraint1.cjo";
connectAttr "RightRing5JntGDLoc.t" "RightRing5JntGD_parentConstraint1.tg[0].tt";
connectAttr "RightRing5JntGDLoc.rp" "RightRing5JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightRing5JntGDLoc.rpt" "RightRing5JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightRing5JntGDLoc.r" "RightRing5JntGD_parentConstraint1.tg[0].tr";
connectAttr "RightRing5JntGDLoc.ro" "RightRing5JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightRing5JntGDLoc.s" "RightRing5JntGD_parentConstraint1.tg[0].ts";
connectAttr "RightRing5JntGDLoc.pm" "RightRing5JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightRing5JntGD_parentConstraint1.w0" "RightRing5JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightRing4JntGD.ro" "RightRing4JntGD_parentConstraint1.cro";
connectAttr "RightRing4JntGD.pim" "RightRing4JntGD_parentConstraint1.cpim";
connectAttr "RightRing4JntGD.rp" "RightRing4JntGD_parentConstraint1.crp";
connectAttr "RightRing4JntGD.rpt" "RightRing4JntGD_parentConstraint1.crt";
connectAttr "RightRing4JntGD.jo" "RightRing4JntGD_parentConstraint1.cjo";
connectAttr "RightRing4JntGDLoc.t" "RightRing4JntGD_parentConstraint1.tg[0].tt";
connectAttr "RightRing4JntGDLoc.rp" "RightRing4JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightRing4JntGDLoc.rpt" "RightRing4JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightRing4JntGDLoc.r" "RightRing4JntGD_parentConstraint1.tg[0].tr";
connectAttr "RightRing4JntGDLoc.ro" "RightRing4JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightRing4JntGDLoc.s" "RightRing4JntGD_parentConstraint1.tg[0].ts";
connectAttr "RightRing4JntGDLoc.pm" "RightRing4JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightRing4JntGD_parentConstraint1.w0" "RightRing4JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightRing3JntGD.ro" "RightRing3JntGD_parentConstraint1.cro";
connectAttr "RightRing3JntGD.pim" "RightRing3JntGD_parentConstraint1.cpim";
connectAttr "RightRing3JntGD.rp" "RightRing3JntGD_parentConstraint1.crp";
connectAttr "RightRing3JntGD.rpt" "RightRing3JntGD_parentConstraint1.crt";
connectAttr "RightRing3JntGD.jo" "RightRing3JntGD_parentConstraint1.cjo";
connectAttr "RightRing3JntGDLoc.t" "RightRing3JntGD_parentConstraint1.tg[0].tt";
connectAttr "RightRing3JntGDLoc.rp" "RightRing3JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightRing3JntGDLoc.rpt" "RightRing3JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightRing3JntGDLoc.r" "RightRing3JntGD_parentConstraint1.tg[0].tr";
connectAttr "RightRing3JntGDLoc.ro" "RightRing3JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightRing3JntGDLoc.s" "RightRing3JntGD_parentConstraint1.tg[0].ts";
connectAttr "RightRing3JntGDLoc.pm" "RightRing3JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightRing3JntGD_parentConstraint1.w0" "RightRing3JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightRing2JntGD.ro" "RightRing2JntGD_parentConstraint1.cro";
connectAttr "RightRing2JntGD.pim" "RightRing2JntGD_parentConstraint1.cpim";
connectAttr "RightRing2JntGD.rp" "RightRing2JntGD_parentConstraint1.crp";
connectAttr "RightRing2JntGD.rpt" "RightRing2JntGD_parentConstraint1.crt";
connectAttr "RightRing2JntGD.jo" "RightRing2JntGD_parentConstraint1.cjo";
connectAttr "RightRing2JntGDLoc.t" "RightRing2JntGD_parentConstraint1.tg[0].tt";
connectAttr "RightRing2JntGDLoc.rp" "RightRing2JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightRing2JntGDLoc.rpt" "RightRing2JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightRing2JntGDLoc.r" "RightRing2JntGD_parentConstraint1.tg[0].tr";
connectAttr "RightRing2JntGDLoc.ro" "RightRing2JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightRing2JntGDLoc.s" "RightRing2JntGD_parentConstraint1.tg[0].ts";
connectAttr "RightRing2JntGDLoc.pm" "RightRing2JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightRing2JntGD_parentConstraint1.w0" "RightRing2JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightRing1JntGD.ro" "RightRing1JntGD_parentConstraint1.cro";
connectAttr "RightRing1JntGD.pim" "RightRing1JntGD_parentConstraint1.cpim";
connectAttr "RightRing1JntGD.rp" "RightRing1JntGD_parentConstraint1.crp";
connectAttr "RightRing1JntGD.rpt" "RightRing1JntGD_parentConstraint1.crt";
connectAttr "RightRing1JntGD.jo" "RightRing1JntGD_parentConstraint1.cjo";
connectAttr "RightRing1JntGDLoc.t" "RightRing1JntGD_parentConstraint1.tg[0].tt";
connectAttr "RightRing1JntGDLoc.rp" "RightRing1JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightRing1JntGDLoc.rpt" "RightRing1JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightRing1JntGDLoc.r" "RightRing1JntGD_parentConstraint1.tg[0].tr";
connectAttr "RightRing1JntGDLoc.ro" "RightRing1JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightRing1JntGDLoc.s" "RightRing1JntGD_parentConstraint1.tg[0].ts";
connectAttr "RightRing1JntGDLoc.pm" "RightRing1JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightRing1JntGD_parentConstraint1.w0" "RightRing1JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightPinky1JntGD_parentConstraint1.ctx" "RightPinky1JntGD.tx" -l on
		;
connectAttr "RightPinky1JntGD_parentConstraint1.cty" "RightPinky1JntGD.ty" -l on
		;
connectAttr "RightPinky1JntGD_parentConstraint1.ctz" "RightPinky1JntGD.tz" -l on
		;
connectAttr "RightPinky1JntGD_parentConstraint1.crx" "RightPinky1JntGD.rx" -l on
		;
connectAttr "RightPinky1JntGD_parentConstraint1.cry" "RightPinky1JntGD.ry" -l on
		;
connectAttr "RightPinky1JntGD_parentConstraint1.crz" "RightPinky1JntGD.rz" -l on
		;
connectAttr "RightPinky1JntGD.s" "RightPinky2JntGD.is";
connectAttr "RightPinky2JntGD_parentConstraint1.ctx" "RightPinky2JntGD.tx" -l on
		;
connectAttr "RightPinky2JntGD_parentConstraint1.cty" "RightPinky2JntGD.ty" -l on
		;
connectAttr "RightPinky2JntGD_parentConstraint1.ctz" "RightPinky2JntGD.tz" -l on
		;
connectAttr "RightPinky2JntGD_parentConstraint1.crx" "RightPinky2JntGD.rx" -l on
		;
connectAttr "RightPinky2JntGD_parentConstraint1.cry" "RightPinky2JntGD.ry" -l on
		;
connectAttr "RightPinky2JntGD_parentConstraint1.crz" "RightPinky2JntGD.rz" -l on
		;
connectAttr "RightPinky2JntGD.s" "RightPinky3JntGD.is";
connectAttr "RightPinky3JntGD_parentConstraint1.ctx" "RightPinky3JntGD.tx" -l on
		;
connectAttr "RightPinky3JntGD_parentConstraint1.cty" "RightPinky3JntGD.ty" -l on
		;
connectAttr "RightPinky3JntGD_parentConstraint1.ctz" "RightPinky3JntGD.tz" -l on
		;
connectAttr "RightPinky3JntGD_parentConstraint1.crx" "RightPinky3JntGD.rx" -l on
		;
connectAttr "RightPinky3JntGD_parentConstraint1.cry" "RightPinky3JntGD.ry" -l on
		;
connectAttr "RightPinky3JntGD_parentConstraint1.crz" "RightPinky3JntGD.rz" -l on
		;
connectAttr "RightPinky3JntGD.s" "RightPinky4JntGD.is";
connectAttr "RightPinky4JntGD_parentConstraint1.ctx" "RightPinky4JntGD.tx" -l on
		;
connectAttr "RightPinky4JntGD_parentConstraint1.cty" "RightPinky4JntGD.ty" -l on
		;
connectAttr "RightPinky4JntGD_parentConstraint1.ctz" "RightPinky4JntGD.tz" -l on
		;
connectAttr "RightPinky4JntGD_parentConstraint1.crx" "RightPinky4JntGD.rx" -l on
		;
connectAttr "RightPinky4JntGD_parentConstraint1.cry" "RightPinky4JntGD.ry" -l on
		;
connectAttr "RightPinky4JntGD_parentConstraint1.crz" "RightPinky4JntGD.rz" -l on
		;
connectAttr "RightPinky5JntGD_parentConstraint1.ctx" "RightPinky5JntGD.tx" -l on
		;
connectAttr "RightPinky5JntGD_parentConstraint1.cty" "RightPinky5JntGD.ty" -l on
		;
connectAttr "RightPinky5JntGD_parentConstraint1.ctz" "RightPinky5JntGD.tz" -l on
		;
connectAttr "RightPinky5JntGD_parentConstraint1.crx" "RightPinky5JntGD.rx" -l on
		;
connectAttr "RightPinky5JntGD_parentConstraint1.cry" "RightPinky5JntGD.ry" -l on
		;
connectAttr "RightPinky5JntGD_parentConstraint1.crz" "RightPinky5JntGD.rz" -l on
		;
connectAttr "RightPinky5JntGD.ro" "RightPinky5JntGD_parentConstraint1.cro";
connectAttr "RightPinky5JntGD.pim" "RightPinky5JntGD_parentConstraint1.cpim";
connectAttr "RightPinky5JntGD.rp" "RightPinky5JntGD_parentConstraint1.crp";
connectAttr "RightPinky5JntGD.rpt" "RightPinky5JntGD_parentConstraint1.crt";
connectAttr "RightPinky5JntGD.jo" "RightPinky5JntGD_parentConstraint1.cjo";
connectAttr "RightPinky5JntGDLoc.t" "RightPinky5JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightPinky5JntGDLoc.rp" "RightPinky5JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightPinky5JntGDLoc.rpt" "RightPinky5JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightPinky5JntGDLoc.r" "RightPinky5JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightPinky5JntGDLoc.ro" "RightPinky5JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightPinky5JntGDLoc.s" "RightPinky5JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightPinky5JntGDLoc.pm" "RightPinky5JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightPinky5JntGD_parentConstraint1.w0" "RightPinky5JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightPinky4JntGD.ro" "RightPinky4JntGD_parentConstraint1.cro";
connectAttr "RightPinky4JntGD.pim" "RightPinky4JntGD_parentConstraint1.cpim";
connectAttr "RightPinky4JntGD.rp" "RightPinky4JntGD_parentConstraint1.crp";
connectAttr "RightPinky4JntGD.rpt" "RightPinky4JntGD_parentConstraint1.crt";
connectAttr "RightPinky4JntGD.jo" "RightPinky4JntGD_parentConstraint1.cjo";
connectAttr "RightPinky4JntGDLoc.t" "RightPinky4JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightPinky4JntGDLoc.rp" "RightPinky4JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightPinky4JntGDLoc.rpt" "RightPinky4JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightPinky4JntGDLoc.r" "RightPinky4JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightPinky4JntGDLoc.ro" "RightPinky4JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightPinky4JntGDLoc.s" "RightPinky4JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightPinky4JntGDLoc.pm" "RightPinky4JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightPinky4JntGD_parentConstraint1.w0" "RightPinky4JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightPinky3JntGD.ro" "RightPinky3JntGD_parentConstraint1.cro";
connectAttr "RightPinky3JntGD.pim" "RightPinky3JntGD_parentConstraint1.cpim";
connectAttr "RightPinky3JntGD.rp" "RightPinky3JntGD_parentConstraint1.crp";
connectAttr "RightPinky3JntGD.rpt" "RightPinky3JntGD_parentConstraint1.crt";
connectAttr "RightPinky3JntGD.jo" "RightPinky3JntGD_parentConstraint1.cjo";
connectAttr "RightPinky3JntGDLoc.t" "RightPinky3JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightPinky3JntGDLoc.rp" "RightPinky3JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightPinky3JntGDLoc.rpt" "RightPinky3JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightPinky3JntGDLoc.r" "RightPinky3JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightPinky3JntGDLoc.ro" "RightPinky3JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightPinky3JntGDLoc.s" "RightPinky3JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightPinky3JntGDLoc.pm" "RightPinky3JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightPinky3JntGD_parentConstraint1.w0" "RightPinky3JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightPinky2JntGD.ro" "RightPinky2JntGD_parentConstraint1.cro";
connectAttr "RightPinky2JntGD.pim" "RightPinky2JntGD_parentConstraint1.cpim";
connectAttr "RightPinky2JntGD.rp" "RightPinky2JntGD_parentConstraint1.crp";
connectAttr "RightPinky2JntGD.rpt" "RightPinky2JntGD_parentConstraint1.crt";
connectAttr "RightPinky2JntGD.jo" "RightPinky2JntGD_parentConstraint1.cjo";
connectAttr "RightPinky2JntGDLoc.t" "RightPinky2JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightPinky2JntGDLoc.rp" "RightPinky2JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightPinky2JntGDLoc.rpt" "RightPinky2JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightPinky2JntGDLoc.r" "RightPinky2JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightPinky2JntGDLoc.ro" "RightPinky2JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightPinky2JntGDLoc.s" "RightPinky2JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightPinky2JntGDLoc.pm" "RightPinky2JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightPinky2JntGD_parentConstraint1.w0" "RightPinky2JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightPinky1JntGD.ro" "RightPinky1JntGD_parentConstraint1.cro";
connectAttr "RightPinky1JntGD.pim" "RightPinky1JntGD_parentConstraint1.cpim";
connectAttr "RightPinky1JntGD.rp" "RightPinky1JntGD_parentConstraint1.crp";
connectAttr "RightPinky1JntGD.rpt" "RightPinky1JntGD_parentConstraint1.crt";
connectAttr "RightPinky1JntGD.jo" "RightPinky1JntGD_parentConstraint1.cjo";
connectAttr "RightPinky1JntGDLoc.t" "RightPinky1JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightPinky1JntGDLoc.rp" "RightPinky1JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightPinky1JntGDLoc.rpt" "RightPinky1JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightPinky1JntGDLoc.r" "RightPinky1JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightPinky1JntGDLoc.ro" "RightPinky1JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightPinky1JntGDLoc.s" "RightPinky1JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightPinky1JntGDLoc.pm" "RightPinky1JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightPinky1JntGD_parentConstraint1.w0" "RightPinky1JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightThumb1JntGD_parentConstraint1.ctx" "RightThumb1JntGD.tx" -l on
		;
connectAttr "RightThumb1JntGD_parentConstraint1.cty" "RightThumb1JntGD.ty" -l on
		;
connectAttr "RightThumb1JntGD_parentConstraint1.ctz" "RightThumb1JntGD.tz" -l on
		;
connectAttr "RightThumb1JntGD_parentConstraint1.crx" "RightThumb1JntGD.rx" -l on
		;
connectAttr "RightThumb1JntGD_parentConstraint1.cry" "RightThumb1JntGD.ry" -l on
		;
connectAttr "RightThumb1JntGD_parentConstraint1.crz" "RightThumb1JntGD.rz" -l on
		;
connectAttr "RightThumb1JntGD.s" "RightThumb2JntGD.is";
connectAttr "RightThumb2JntGD_parentConstraint1.ctx" "RightThumb2JntGD.tx" -l on
		;
connectAttr "RightThumb2JntGD_parentConstraint1.cty" "RightThumb2JntGD.ty" -l on
		;
connectAttr "RightThumb2JntGD_parentConstraint1.ctz" "RightThumb2JntGD.tz" -l on
		;
connectAttr "RightThumb2JntGD_parentConstraint1.crx" "RightThumb2JntGD.rx" -l on
		;
connectAttr "RightThumb2JntGD_parentConstraint1.cry" "RightThumb2JntGD.ry" -l on
		;
connectAttr "RightThumb2JntGD_parentConstraint1.crz" "RightThumb2JntGD.rz" -l on
		;
connectAttr "RightThumb2JntGD.s" "RightThumb3JntGD.is";
connectAttr "RightThumb3JntGD_parentConstraint1.ctx" "RightThumb3JntGD.tx" -l on
		;
connectAttr "RightThumb3JntGD_parentConstraint1.cty" "RightThumb3JntGD.ty" -l on
		;
connectAttr "RightThumb3JntGD_parentConstraint1.ctz" "RightThumb3JntGD.tz" -l on
		;
connectAttr "RightThumb3JntGD_parentConstraint1.crx" "RightThumb3JntGD.rx" -l on
		;
connectAttr "RightThumb3JntGD_parentConstraint1.cry" "RightThumb3JntGD.ry" -l on
		;
connectAttr "RightThumb3JntGD_parentConstraint1.crz" "RightThumb3JntGD.rz" -l on
		;
connectAttr "RightThumb3JntGD.s" "RightThumb4JntGD.is";
connectAttr "RightThumb4JntGD_parentConstraint1.ctx" "RightThumb4JntGD.tx" -l on
		;
connectAttr "RightThumb4JntGD_parentConstraint1.cty" "RightThumb4JntGD.ty" -l on
		;
connectAttr "RightThumb4JntGD_parentConstraint1.ctz" "RightThumb4JntGD.tz" -l on
		;
connectAttr "RightThumb4JntGD_parentConstraint1.crx" "RightThumb4JntGD.rx" -l on
		;
connectAttr "RightThumb4JntGD_parentConstraint1.cry" "RightThumb4JntGD.ry" -l on
		;
connectAttr "RightThumb4JntGD_parentConstraint1.crz" "RightThumb4JntGD.rz" -l on
		;
connectAttr "RightThumb5JntGD_parentConstraint1.ctx" "RightThumb5JntGD.tx" -l on
		;
connectAttr "RightThumb5JntGD_parentConstraint1.cty" "RightThumb5JntGD.ty" -l on
		;
connectAttr "RightThumb5JntGD_parentConstraint1.ctz" "RightThumb5JntGD.tz" -l on
		;
connectAttr "RightThumb5JntGD_parentConstraint1.crx" "RightThumb5JntGD.rx" -l on
		;
connectAttr "RightThumb5JntGD_parentConstraint1.cry" "RightThumb5JntGD.ry" -l on
		;
connectAttr "RightThumb5JntGD_parentConstraint1.crz" "RightThumb5JntGD.rz" -l on
		;
connectAttr "RightThumb5JntGD.ro" "RightThumb5JntGD_parentConstraint1.cro";
connectAttr "RightThumb5JntGD.pim" "RightThumb5JntGD_parentConstraint1.cpim";
connectAttr "RightThumb5JntGD.rp" "RightThumb5JntGD_parentConstraint1.crp";
connectAttr "RightThumb5JntGD.rpt" "RightThumb5JntGD_parentConstraint1.crt";
connectAttr "RightThumb5JntGD.jo" "RightThumb5JntGD_parentConstraint1.cjo";
connectAttr "RightThumb5JntGDLoc.t" "RightThumb5JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightThumb5JntGDLoc.rp" "RightThumb5JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightThumb5JntGDLoc.rpt" "RightThumb5JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightThumb5JntGDLoc.r" "RightThumb5JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightThumb5JntGDLoc.ro" "RightThumb5JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightThumb5JntGDLoc.s" "RightThumb5JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightThumb5JntGDLoc.pm" "RightThumb5JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightThumb5JntGD_parentConstraint1.w0" "RightThumb5JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightThumb4JntGD.ro" "RightThumb4JntGD_parentConstraint1.cro";
connectAttr "RightThumb4JntGD.pim" "RightThumb4JntGD_parentConstraint1.cpim";
connectAttr "RightThumb4JntGD.rp" "RightThumb4JntGD_parentConstraint1.crp";
connectAttr "RightThumb4JntGD.rpt" "RightThumb4JntGD_parentConstraint1.crt";
connectAttr "RightThumb4JntGD.jo" "RightThumb4JntGD_parentConstraint1.cjo";
connectAttr "RightThumb4JntGDLoc.t" "RightThumb4JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightThumb4JntGDLoc.rp" "RightThumb4JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightThumb4JntGDLoc.rpt" "RightThumb4JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightThumb4JntGDLoc.r" "RightThumb4JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightThumb4JntGDLoc.ro" "RightThumb4JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightThumb4JntGDLoc.s" "RightThumb4JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightThumb4JntGDLoc.pm" "RightThumb4JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightThumb4JntGD_parentConstraint1.w0" "RightThumb4JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightThumb3JntGD.ro" "RightThumb3JntGD_parentConstraint1.cro";
connectAttr "RightThumb3JntGD.pim" "RightThumb3JntGD_parentConstraint1.cpim";
connectAttr "RightThumb3JntGD.rp" "RightThumb3JntGD_parentConstraint1.crp";
connectAttr "RightThumb3JntGD.rpt" "RightThumb3JntGD_parentConstraint1.crt";
connectAttr "RightThumb3JntGD.jo" "RightThumb3JntGD_parentConstraint1.cjo";
connectAttr "RightThumb3JntGDLoc.t" "RightThumb3JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightThumb3JntGDLoc.rp" "RightThumb3JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightThumb3JntGDLoc.rpt" "RightThumb3JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightThumb3JntGDLoc.r" "RightThumb3JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightThumb3JntGDLoc.ro" "RightThumb3JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightThumb3JntGDLoc.s" "RightThumb3JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightThumb3JntGDLoc.pm" "RightThumb3JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightThumb3JntGD_parentConstraint1.w0" "RightThumb3JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightThumb2JntGD.ro" "RightThumb2JntGD_parentConstraint1.cro";
connectAttr "RightThumb2JntGD.pim" "RightThumb2JntGD_parentConstraint1.cpim";
connectAttr "RightThumb2JntGD.rp" "RightThumb2JntGD_parentConstraint1.crp";
connectAttr "RightThumb2JntGD.rpt" "RightThumb2JntGD_parentConstraint1.crt";
connectAttr "RightThumb2JntGD.jo" "RightThumb2JntGD_parentConstraint1.cjo";
connectAttr "RightThumb2JntGDLoc.t" "RightThumb2JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightThumb2JntGDLoc.rp" "RightThumb2JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightThumb2JntGDLoc.rpt" "RightThumb2JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightThumb2JntGDLoc.r" "RightThumb2JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightThumb2JntGDLoc.ro" "RightThumb2JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightThumb2JntGDLoc.s" "RightThumb2JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightThumb2JntGDLoc.pm" "RightThumb2JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightThumb2JntGD_parentConstraint1.w0" "RightThumb2JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightThumb1JntGD.ro" "RightThumb1JntGD_parentConstraint1.cro";
connectAttr "RightThumb1JntGD.pim" "RightThumb1JntGD_parentConstraint1.cpim";
connectAttr "RightThumb1JntGD.rp" "RightThumb1JntGD_parentConstraint1.crp";
connectAttr "RightThumb1JntGD.rpt" "RightThumb1JntGD_parentConstraint1.crt";
connectAttr "RightThumb1JntGD.jo" "RightThumb1JntGD_parentConstraint1.cjo";
connectAttr "RightThumb1JntGDLoc.t" "RightThumb1JntGD_parentConstraint1.tg[0].tt"
		;
connectAttr "RightThumb1JntGDLoc.rp" "RightThumb1JntGD_parentConstraint1.tg[0].trp"
		;
connectAttr "RightThumb1JntGDLoc.rpt" "RightThumb1JntGD_parentConstraint1.tg[0].trt"
		;
connectAttr "RightThumb1JntGDLoc.r" "RightThumb1JntGD_parentConstraint1.tg[0].tr"
		;
connectAttr "RightThumb1JntGDLoc.ro" "RightThumb1JntGD_parentConstraint1.tg[0].tro"
		;
connectAttr "RightThumb1JntGDLoc.s" "RightThumb1JntGD_parentConstraint1.tg[0].ts"
		;
connectAttr "RightThumb1JntGDLoc.pm" "RightThumb1JntGD_parentConstraint1.tg[0].tpm"
		;
connectAttr "RightThumb1JntGD_parentConstraint1.w0" "RightThumb1JntGD_parentConstraint1.tg[0].tw"
		;
connectAttr "RightFingerGDGrp.pim" "RightFingerGDGrp_scaleConstraint1.cpim";
connectAttr "RightWristJntGD.s" "RightFingerGDGrp_scaleConstraint1.tg[0].ts";
connectAttr "RightWristJntGD.pm" "RightFingerGDGrp_scaleConstraint1.tg[0].tpm";
connectAttr "RightFingerGDGrp_scaleConstraint1.w0" "RightFingerGDGrp_scaleConstraint1.tg[0].tw"
		;
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.ctx" "LeftClavicleJntGDLoc.tx"
		;
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.cty" "LeftClavicleJntGDLoc.ty"
		;
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.ctz" "LeftClavicleJntGDLoc.tz"
		;
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.crx" "LeftClavicleJntGDLoc.rx"
		;
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.cry" "LeftClavicleJntGDLoc.ry"
		;
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.crz" "LeftClavicleJntGDLoc.rz"
		;
connectAttr "LeftClavicleJntGDLoc.ro" "LeftClavicleJntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftClavicleJntGDLoc.pim" "LeftClavicleJntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftClavicleJntGDLoc.rp" "LeftClavicleJntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftClavicleJntGDLoc.rpt" "LeftClavicleJntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftClavicleJntGD.t" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftClavicleJntGD.rp" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftClavicleJntGD.rpt" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftClavicleJntGD.r" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftClavicleJntGD.ro" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftClavicleJntGD.s" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftClavicleJntGD.pm" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftClavicleJntGD.jo" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.w0" "LeftClavicleJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.ctx" "LeftShoulderJntGDLoc.tx"
		;
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.cty" "LeftShoulderJntGDLoc.ty"
		;
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.ctz" "LeftShoulderJntGDLoc.tz"
		;
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.crx" "LeftShoulderJntGDLoc.rx"
		;
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.cry" "LeftShoulderJntGDLoc.ry"
		;
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.crz" "LeftShoulderJntGDLoc.rz"
		;
connectAttr "LeftShoulderJntGDLoc.ro" "LeftShoulderJntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftShoulderJntGDLoc.pim" "LeftShoulderJntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftShoulderJntGDLoc.rp" "LeftShoulderJntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftShoulderJntGDLoc.rpt" "LeftShoulderJntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftShoulderJntGD.t" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftShoulderJntGD.rp" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftShoulderJntGD.rpt" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftShoulderJntGD.r" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftShoulderJntGD.ro" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftShoulderJntGD.s" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftShoulderJntGD.pm" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftShoulderJntGD.jo" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.w0" "LeftShoulderJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftElbowJntGDLoc_parentConstraint1.ctx" "LeftElbowJntGDLoc.tx";
connectAttr "LeftElbowJntGDLoc_parentConstraint1.cty" "LeftElbowJntGDLoc.ty";
connectAttr "LeftElbowJntGDLoc_parentConstraint1.ctz" "LeftElbowJntGDLoc.tz";
connectAttr "LeftElbowJntGDLoc_parentConstraint1.crx" "LeftElbowJntGDLoc.rx";
connectAttr "LeftElbowJntGDLoc_parentConstraint1.cry" "LeftElbowJntGDLoc.ry";
connectAttr "LeftElbowJntGDLoc_parentConstraint1.crz" "LeftElbowJntGDLoc.rz";
connectAttr "LeftElbowJntGDLoc.ro" "LeftElbowJntGDLoc_parentConstraint1.cro";
connectAttr "LeftElbowJntGDLoc.pim" "LeftElbowJntGDLoc_parentConstraint1.cpim";
connectAttr "LeftElbowJntGDLoc.rp" "LeftElbowJntGDLoc_parentConstraint1.crp";
connectAttr "LeftElbowJntGDLoc.rpt" "LeftElbowJntGDLoc_parentConstraint1.crt";
connectAttr "LeftElbowJntGD.t" "LeftElbowJntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftElbowJntGD.rp" "LeftElbowJntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftElbowJntGD.rpt" "LeftElbowJntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftElbowJntGD.r" "LeftElbowJntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftElbowJntGD.ro" "LeftElbowJntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftElbowJntGD.s" "LeftElbowJntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftElbowJntGD.pm" "LeftElbowJntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftElbowJntGD.jo" "LeftElbowJntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftElbowJntGDLoc_parentConstraint1.w0" "LeftElbowJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftWristJntGDLoc_parentConstraint1.ctx" "LeftWristJntGDLoc.tx";
connectAttr "LeftWristJntGDLoc_parentConstraint1.cty" "LeftWristJntGDLoc.ty";
connectAttr "LeftWristJntGDLoc_parentConstraint1.ctz" "LeftWristJntGDLoc.tz";
connectAttr "LeftWristJntGDLoc_parentConstraint1.crx" "LeftWristJntGDLoc.rx";
connectAttr "LeftWristJntGDLoc_parentConstraint1.cry" "LeftWristJntGDLoc.ry";
connectAttr "LeftWristJntGDLoc_parentConstraint1.crz" "LeftWristJntGDLoc.rz";
connectAttr "LeftWristJntGDLoc.ro" "LeftWristJntGDLoc_parentConstraint1.cro";
connectAttr "LeftWristJntGDLoc.pim" "LeftWristJntGDLoc_parentConstraint1.cpim";
connectAttr "LeftWristJntGDLoc.rp" "LeftWristJntGDLoc_parentConstraint1.crp";
connectAttr "LeftWristJntGDLoc.rpt" "LeftWristJntGDLoc_parentConstraint1.crt";
connectAttr "LeftWristJntGD.t" "LeftWristJntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftWristJntGD.rp" "LeftWristJntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftWristJntGD.rpt" "LeftWristJntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftWristJntGD.r" "LeftWristJntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftWristJntGD.ro" "LeftWristJntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftWristJntGD.s" "LeftWristJntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftWristJntGD.pm" "LeftWristJntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftWristJntGD.jo" "LeftWristJntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftWristJntGDLoc_parentConstraint1.w0" "LeftWristJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.ctx" "LeftThumb1JntGDLoc.tx";
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.cty" "LeftThumb1JntGDLoc.ty";
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.ctz" "LeftThumb1JntGDLoc.tz";
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.crx" "LeftThumb1JntGDLoc.rx";
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.cry" "LeftThumb1JntGDLoc.ry";
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.crz" "LeftThumb1JntGDLoc.rz";
connectAttr "LeftThumb1JntGDLoc.ro" "LeftThumb1JntGDLoc_parentConstraint1.cro";
connectAttr "LeftThumb1JntGDLoc.pim" "LeftThumb1JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftThumb1JntGDLoc.rp" "LeftThumb1JntGDLoc_parentConstraint1.crp";
connectAttr "LeftThumb1JntGDLoc.rpt" "LeftThumb1JntGDLoc_parentConstraint1.crt";
connectAttr "LeftThumb1JntGD.t" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftThumb1JntGD.rp" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftThumb1JntGD.rpt" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftThumb1JntGD.r" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftThumb1JntGD.ro" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftThumb1JntGD.s" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftThumb1JntGD.pm" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftThumb1JntGD.jo" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.w0" "LeftThumb1JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.ctx" "LeftThumb2JntGDLoc.tx";
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.cty" "LeftThumb2JntGDLoc.ty";
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.ctz" "LeftThumb2JntGDLoc.tz";
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.crx" "LeftThumb2JntGDLoc.rx";
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.cry" "LeftThumb2JntGDLoc.ry";
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.crz" "LeftThumb2JntGDLoc.rz";
connectAttr "LeftThumb2JntGDLoc.ro" "LeftThumb2JntGDLoc_parentConstraint1.cro";
connectAttr "LeftThumb2JntGDLoc.pim" "LeftThumb2JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftThumb2JntGDLoc.rp" "LeftThumb2JntGDLoc_parentConstraint1.crp";
connectAttr "LeftThumb2JntGDLoc.rpt" "LeftThumb2JntGDLoc_parentConstraint1.crt";
connectAttr "LeftThumb2JntGD.t" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftThumb2JntGD.rp" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftThumb2JntGD.rpt" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftThumb2JntGD.r" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftThumb2JntGD.ro" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftThumb2JntGD.s" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftThumb2JntGD.pm" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftThumb2JntGD.jo" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.w0" "LeftThumb2JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.ctx" "LeftThumb3JntGDLoc.tx";
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.cty" "LeftThumb3JntGDLoc.ty";
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.ctz" "LeftThumb3JntGDLoc.tz";
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.crx" "LeftThumb3JntGDLoc.rx";
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.cry" "LeftThumb3JntGDLoc.ry";
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.crz" "LeftThumb3JntGDLoc.rz";
connectAttr "LeftThumb3JntGDLoc.ro" "LeftThumb3JntGDLoc_parentConstraint1.cro";
connectAttr "LeftThumb3JntGDLoc.pim" "LeftThumb3JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftThumb3JntGDLoc.rp" "LeftThumb3JntGDLoc_parentConstraint1.crp";
connectAttr "LeftThumb3JntGDLoc.rpt" "LeftThumb3JntGDLoc_parentConstraint1.crt";
connectAttr "LeftThumb3JntGD.t" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftThumb3JntGD.rp" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftThumb3JntGD.rpt" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftThumb3JntGD.r" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftThumb3JntGD.ro" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftThumb3JntGD.s" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftThumb3JntGD.pm" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftThumb3JntGD.jo" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.w0" "LeftThumb3JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.ctx" "LeftThumb4JntGDLoc.tx";
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.cty" "LeftThumb4JntGDLoc.ty";
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.ctz" "LeftThumb4JntGDLoc.tz";
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.crx" "LeftThumb4JntGDLoc.rx";
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.cry" "LeftThumb4JntGDLoc.ry";
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.crz" "LeftThumb4JntGDLoc.rz";
connectAttr "LeftThumb4JntGDLoc.ro" "LeftThumb4JntGDLoc_parentConstraint1.cro";
connectAttr "LeftThumb4JntGDLoc.pim" "LeftThumb4JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftThumb4JntGDLoc.rp" "LeftThumb4JntGDLoc_parentConstraint1.crp";
connectAttr "LeftThumb4JntGDLoc.rpt" "LeftThumb4JntGDLoc_parentConstraint1.crt";
connectAttr "LeftThumb4JntGD.t" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftThumb4JntGD.rp" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftThumb4JntGD.rpt" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftThumb4JntGD.r" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftThumb4JntGD.ro" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftThumb4JntGD.s" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftThumb4JntGD.pm" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftThumb4JntGD.jo" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.w0" "LeftThumb4JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.ctx" "LeftThumb5JntGDLoc.tx";
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.cty" "LeftThumb5JntGDLoc.ty";
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.ctz" "LeftThumb5JntGDLoc.tz";
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.crx" "LeftThumb5JntGDLoc.rx";
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.cry" "LeftThumb5JntGDLoc.ry";
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.crz" "LeftThumb5JntGDLoc.rz";
connectAttr "LeftThumb5JntGDLoc.ro" "LeftThumb5JntGDLoc_parentConstraint1.cro";
connectAttr "LeftThumb5JntGDLoc.pim" "LeftThumb5JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftThumb5JntGDLoc.rp" "LeftThumb5JntGDLoc_parentConstraint1.crp";
connectAttr "LeftThumb5JntGDLoc.rpt" "LeftThumb5JntGDLoc_parentConstraint1.crt";
connectAttr "LeftThumb5JntGD.t" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftThumb5JntGD.rp" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftThumb5JntGD.rpt" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftThumb5JntGD.r" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftThumb5JntGD.ro" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftThumb5JntGD.s" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftThumb5JntGD.pm" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftThumb5JntGD.jo" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.w0" "LeftThumb5JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.ctx" "LeftIndex1JntGDLoc.tx";
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.cty" "LeftIndex1JntGDLoc.ty";
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.ctz" "LeftIndex1JntGDLoc.tz";
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.crx" "LeftIndex1JntGDLoc.rx";
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.cry" "LeftIndex1JntGDLoc.ry";
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.crz" "LeftIndex1JntGDLoc.rz";
connectAttr "LeftIndex1JntGDLoc.ro" "LeftIndex1JntGDLoc_parentConstraint1.cro";
connectAttr "LeftIndex1JntGDLoc.pim" "LeftIndex1JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftIndex1JntGDLoc.rp" "LeftIndex1JntGDLoc_parentConstraint1.crp";
connectAttr "LeftIndex1JntGDLoc.rpt" "LeftIndex1JntGDLoc_parentConstraint1.crt";
connectAttr "LeftIndex1JntGD.t" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftIndex1JntGD.rp" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftIndex1JntGD.rpt" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftIndex1JntGD.r" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftIndex1JntGD.ro" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftIndex1JntGD.s" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftIndex1JntGD.pm" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftIndex1JntGD.jo" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.w0" "LeftIndex1JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.ctx" "LeftIndex2JntGDLoc.tx";
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.cty" "LeftIndex2JntGDLoc.ty";
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.ctz" "LeftIndex2JntGDLoc.tz";
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.crx" "LeftIndex2JntGDLoc.rx";
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.cry" "LeftIndex2JntGDLoc.ry";
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.crz" "LeftIndex2JntGDLoc.rz";
connectAttr "LeftIndex2JntGDLoc.ro" "LeftIndex2JntGDLoc_parentConstraint1.cro";
connectAttr "LeftIndex2JntGDLoc.pim" "LeftIndex2JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftIndex2JntGDLoc.rp" "LeftIndex2JntGDLoc_parentConstraint1.crp";
connectAttr "LeftIndex2JntGDLoc.rpt" "LeftIndex2JntGDLoc_parentConstraint1.crt";
connectAttr "LeftIndex2JntGD.t" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftIndex2JntGD.rp" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftIndex2JntGD.rpt" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftIndex2JntGD.r" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftIndex2JntGD.ro" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftIndex2JntGD.s" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftIndex2JntGD.pm" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftIndex2JntGD.jo" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.w0" "LeftIndex2JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.ctx" "LeftIndex3JntGDLoc.tx";
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.cty" "LeftIndex3JntGDLoc.ty";
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.ctz" "LeftIndex3JntGDLoc.tz";
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.crx" "LeftIndex3JntGDLoc.rx";
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.cry" "LeftIndex3JntGDLoc.ry";
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.crz" "LeftIndex3JntGDLoc.rz";
connectAttr "LeftIndex3JntGDLoc.ro" "LeftIndex3JntGDLoc_parentConstraint1.cro";
connectAttr "LeftIndex3JntGDLoc.pim" "LeftIndex3JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftIndex3JntGDLoc.rp" "LeftIndex3JntGDLoc_parentConstraint1.crp";
connectAttr "LeftIndex3JntGDLoc.rpt" "LeftIndex3JntGDLoc_parentConstraint1.crt";
connectAttr "LeftIndex3JntGD.t" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftIndex3JntGD.rp" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftIndex3JntGD.rpt" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftIndex3JntGD.r" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftIndex3JntGD.ro" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftIndex3JntGD.s" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftIndex3JntGD.pm" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftIndex3JntGD.jo" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.w0" "LeftIndex3JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.ctx" "LeftIndex4JntGDLoc.tx";
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.cty" "LeftIndex4JntGDLoc.ty";
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.ctz" "LeftIndex4JntGDLoc.tz";
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.crx" "LeftIndex4JntGDLoc.rx";
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.cry" "LeftIndex4JntGDLoc.ry";
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.crz" "LeftIndex4JntGDLoc.rz";
connectAttr "LeftIndex4JntGDLoc.ro" "LeftIndex4JntGDLoc_parentConstraint1.cro";
connectAttr "LeftIndex4JntGDLoc.pim" "LeftIndex4JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftIndex4JntGDLoc.rp" "LeftIndex4JntGDLoc_parentConstraint1.crp";
connectAttr "LeftIndex4JntGDLoc.rpt" "LeftIndex4JntGDLoc_parentConstraint1.crt";
connectAttr "LeftIndex4JntGD.t" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftIndex4JntGD.rp" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftIndex4JntGD.rpt" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftIndex4JntGD.r" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftIndex4JntGD.ro" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftIndex4JntGD.s" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftIndex4JntGD.pm" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftIndex4JntGD.jo" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.w0" "LeftIndex4JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.ctx" "LeftIndex5JntGDLoc.tx";
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.cty" "LeftIndex5JntGDLoc.ty";
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.ctz" "LeftIndex5JntGDLoc.tz";
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.crx" "LeftIndex5JntGDLoc.rx";
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.cry" "LeftIndex5JntGDLoc.ry";
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.crz" "LeftIndex5JntGDLoc.rz";
connectAttr "LeftIndex5JntGDLoc.ro" "LeftIndex5JntGDLoc_parentConstraint1.cro";
connectAttr "LeftIndex5JntGDLoc.pim" "LeftIndex5JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftIndex5JntGDLoc.rp" "LeftIndex5JntGDLoc_parentConstraint1.crp";
connectAttr "LeftIndex5JntGDLoc.rpt" "LeftIndex5JntGDLoc_parentConstraint1.crt";
connectAttr "LeftIndex5JntGD.t" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftIndex5JntGD.rp" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftIndex5JntGD.rpt" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftIndex5JntGD.r" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftIndex5JntGD.ro" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftIndex5JntGD.s" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftIndex5JntGD.pm" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftIndex5JntGD.jo" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.w0" "LeftIndex5JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.ctx" "LeftMiddle1JntGDLoc.tx"
		;
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.cty" "LeftMiddle1JntGDLoc.ty"
		;
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.ctz" "LeftMiddle1JntGDLoc.tz"
		;
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.crx" "LeftMiddle1JntGDLoc.rx"
		;
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.cry" "LeftMiddle1JntGDLoc.ry"
		;
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.crz" "LeftMiddle1JntGDLoc.rz"
		;
connectAttr "LeftMiddle1JntGDLoc.ro" "LeftMiddle1JntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftMiddle1JntGDLoc.pim" "LeftMiddle1JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftMiddle1JntGDLoc.rp" "LeftMiddle1JntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftMiddle1JntGDLoc.rpt" "LeftMiddle1JntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftMiddle1JntGD.t" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftMiddle1JntGD.rp" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftMiddle1JntGD.rpt" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftMiddle1JntGD.r" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftMiddle1JntGD.ro" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftMiddle1JntGD.s" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftMiddle1JntGD.pm" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftMiddle1JntGD.jo" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.w0" "LeftMiddle1JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.ctx" "LeftMiddle2JntGDLoc.tx"
		;
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.cty" "LeftMiddle2JntGDLoc.ty"
		;
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.ctz" "LeftMiddle2JntGDLoc.tz"
		;
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.crx" "LeftMiddle2JntGDLoc.rx"
		;
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.cry" "LeftMiddle2JntGDLoc.ry"
		;
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.crz" "LeftMiddle2JntGDLoc.rz"
		;
connectAttr "LeftMiddle2JntGDLoc.ro" "LeftMiddle2JntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftMiddle2JntGDLoc.pim" "LeftMiddle2JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftMiddle2JntGDLoc.rp" "LeftMiddle2JntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftMiddle2JntGDLoc.rpt" "LeftMiddle2JntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftMiddle2JntGD.t" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftMiddle2JntGD.rp" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftMiddle2JntGD.rpt" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftMiddle2JntGD.r" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftMiddle2JntGD.ro" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftMiddle2JntGD.s" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftMiddle2JntGD.pm" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftMiddle2JntGD.jo" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.w0" "LeftMiddle2JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.ctx" "LeftMiddle3JntGDLoc.tx"
		;
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.cty" "LeftMiddle3JntGDLoc.ty"
		;
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.ctz" "LeftMiddle3JntGDLoc.tz"
		;
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.crx" "LeftMiddle3JntGDLoc.rx"
		;
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.cry" "LeftMiddle3JntGDLoc.ry"
		;
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.crz" "LeftMiddle3JntGDLoc.rz"
		;
connectAttr "LeftMiddle3JntGDLoc.ro" "LeftMiddle3JntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftMiddle3JntGDLoc.pim" "LeftMiddle3JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftMiddle3JntGDLoc.rp" "LeftMiddle3JntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftMiddle3JntGDLoc.rpt" "LeftMiddle3JntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftMiddle3JntGD.t" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftMiddle3JntGD.rp" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftMiddle3JntGD.rpt" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftMiddle3JntGD.r" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftMiddle3JntGD.ro" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftMiddle3JntGD.s" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftMiddle3JntGD.pm" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftMiddle3JntGD.jo" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.w0" "LeftMiddle3JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.ctx" "LeftMiddle4JntGDLoc.tx"
		;
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.cty" "LeftMiddle4JntGDLoc.ty"
		;
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.ctz" "LeftMiddle4JntGDLoc.tz"
		;
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.crx" "LeftMiddle4JntGDLoc.rx"
		;
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.cry" "LeftMiddle4JntGDLoc.ry"
		;
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.crz" "LeftMiddle4JntGDLoc.rz"
		;
connectAttr "LeftMiddle4JntGDLoc.ro" "LeftMiddle4JntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftMiddle4JntGDLoc.pim" "LeftMiddle4JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftMiddle4JntGDLoc.rp" "LeftMiddle4JntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftMiddle4JntGDLoc.rpt" "LeftMiddle4JntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftMiddle4JntGD.t" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftMiddle4JntGD.rp" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftMiddle4JntGD.rpt" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftMiddle4JntGD.r" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftMiddle4JntGD.ro" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftMiddle4JntGD.s" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftMiddle4JntGD.pm" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftMiddle4JntGD.jo" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.w0" "LeftMiddle4JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.ctx" "LeftMiddle5JntGDLoc.tx"
		;
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.cty" "LeftMiddle5JntGDLoc.ty"
		;
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.ctz" "LeftMiddle5JntGDLoc.tz"
		;
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.crx" "LeftMiddle5JntGDLoc.rx"
		;
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.cry" "LeftMiddle5JntGDLoc.ry"
		;
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.crz" "LeftMiddle5JntGDLoc.rz"
		;
connectAttr "LeftMiddle5JntGDLoc.ro" "LeftMiddle5JntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftMiddle5JntGDLoc.pim" "LeftMiddle5JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftMiddle5JntGDLoc.rp" "LeftMiddle5JntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftMiddle5JntGDLoc.rpt" "LeftMiddle5JntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftMiddle5JntGD.t" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftMiddle5JntGD.rp" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftMiddle5JntGD.rpt" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftMiddle5JntGD.r" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftMiddle5JntGD.ro" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftMiddle5JntGD.s" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftMiddle5JntGD.pm" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftMiddle5JntGD.jo" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.w0" "LeftMiddle5JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftRing1JntGDLoc_parentConstraint1.ctx" "LeftRing1JntGDLoc.tx";
connectAttr "LeftRing1JntGDLoc_parentConstraint1.cty" "LeftRing1JntGDLoc.ty";
connectAttr "LeftRing1JntGDLoc_parentConstraint1.ctz" "LeftRing1JntGDLoc.tz";
connectAttr "LeftRing1JntGDLoc_parentConstraint1.crx" "LeftRing1JntGDLoc.rx";
connectAttr "LeftRing1JntGDLoc_parentConstraint1.cry" "LeftRing1JntGDLoc.ry";
connectAttr "LeftRing1JntGDLoc_parentConstraint1.crz" "LeftRing1JntGDLoc.rz";
connectAttr "LeftRing1JntGDLoc.ro" "LeftRing1JntGDLoc_parentConstraint1.cro";
connectAttr "LeftRing1JntGDLoc.pim" "LeftRing1JntGDLoc_parentConstraint1.cpim";
connectAttr "LeftRing1JntGDLoc.rp" "LeftRing1JntGDLoc_parentConstraint1.crp";
connectAttr "LeftRing1JntGDLoc.rpt" "LeftRing1JntGDLoc_parentConstraint1.crt";
connectAttr "LeftRing1JntGD.t" "LeftRing1JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftRing1JntGD.rp" "LeftRing1JntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftRing1JntGD.rpt" "LeftRing1JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftRing1JntGD.r" "LeftRing1JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftRing1JntGD.ro" "LeftRing1JntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftRing1JntGD.s" "LeftRing1JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftRing1JntGD.pm" "LeftRing1JntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftRing1JntGD.jo" "LeftRing1JntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftRing1JntGDLoc_parentConstraint1.w0" "LeftRing1JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftRing2JntGDLoc_parentConstraint1.ctx" "LeftRing2JntGDLoc.tx";
connectAttr "LeftRing2JntGDLoc_parentConstraint1.cty" "LeftRing2JntGDLoc.ty";
connectAttr "LeftRing2JntGDLoc_parentConstraint1.ctz" "LeftRing2JntGDLoc.tz";
connectAttr "LeftRing2JntGDLoc_parentConstraint1.crx" "LeftRing2JntGDLoc.rx";
connectAttr "LeftRing2JntGDLoc_parentConstraint1.cry" "LeftRing2JntGDLoc.ry";
connectAttr "LeftRing2JntGDLoc_parentConstraint1.crz" "LeftRing2JntGDLoc.rz";
connectAttr "LeftRing2JntGDLoc.ro" "LeftRing2JntGDLoc_parentConstraint1.cro";
connectAttr "LeftRing2JntGDLoc.pim" "LeftRing2JntGDLoc_parentConstraint1.cpim";
connectAttr "LeftRing2JntGDLoc.rp" "LeftRing2JntGDLoc_parentConstraint1.crp";
connectAttr "LeftRing2JntGDLoc.rpt" "LeftRing2JntGDLoc_parentConstraint1.crt";
connectAttr "LeftRing2JntGD.t" "LeftRing2JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftRing2JntGD.rp" "LeftRing2JntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftRing2JntGD.rpt" "LeftRing2JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftRing2JntGD.r" "LeftRing2JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftRing2JntGD.ro" "LeftRing2JntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftRing2JntGD.s" "LeftRing2JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftRing2JntGD.pm" "LeftRing2JntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftRing2JntGD.jo" "LeftRing2JntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftRing2JntGDLoc_parentConstraint1.w0" "LeftRing2JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftRing3JntGDLoc_parentConstraint1.ctx" "LeftRing3JntGDLoc.tx";
connectAttr "LeftRing3JntGDLoc_parentConstraint1.cty" "LeftRing3JntGDLoc.ty";
connectAttr "LeftRing3JntGDLoc_parentConstraint1.ctz" "LeftRing3JntGDLoc.tz";
connectAttr "LeftRing3JntGDLoc_parentConstraint1.crx" "LeftRing3JntGDLoc.rx";
connectAttr "LeftRing3JntGDLoc_parentConstraint1.cry" "LeftRing3JntGDLoc.ry";
connectAttr "LeftRing3JntGDLoc_parentConstraint1.crz" "LeftRing3JntGDLoc.rz";
connectAttr "LeftRing3JntGDLoc.ro" "LeftRing3JntGDLoc_parentConstraint1.cro";
connectAttr "LeftRing3JntGDLoc.pim" "LeftRing3JntGDLoc_parentConstraint1.cpim";
connectAttr "LeftRing3JntGDLoc.rp" "LeftRing3JntGDLoc_parentConstraint1.crp";
connectAttr "LeftRing3JntGDLoc.rpt" "LeftRing3JntGDLoc_parentConstraint1.crt";
connectAttr "LeftRing3JntGD.t" "LeftRing3JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftRing3JntGD.rp" "LeftRing3JntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftRing3JntGD.rpt" "LeftRing3JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftRing3JntGD.r" "LeftRing3JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftRing3JntGD.ro" "LeftRing3JntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftRing3JntGD.s" "LeftRing3JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftRing3JntGD.pm" "LeftRing3JntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftRing3JntGD.jo" "LeftRing3JntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftRing3JntGDLoc_parentConstraint1.w0" "LeftRing3JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftRing4JntGDLoc_parentConstraint1.ctx" "LeftRing4JntGDLoc.tx";
connectAttr "LeftRing4JntGDLoc_parentConstraint1.cty" "LeftRing4JntGDLoc.ty";
connectAttr "LeftRing4JntGDLoc_parentConstraint1.ctz" "LeftRing4JntGDLoc.tz";
connectAttr "LeftRing4JntGDLoc_parentConstraint1.crx" "LeftRing4JntGDLoc.rx";
connectAttr "LeftRing4JntGDLoc_parentConstraint1.cry" "LeftRing4JntGDLoc.ry";
connectAttr "LeftRing4JntGDLoc_parentConstraint1.crz" "LeftRing4JntGDLoc.rz";
connectAttr "LeftRing4JntGDLoc.ro" "LeftRing4JntGDLoc_parentConstraint1.cro";
connectAttr "LeftRing4JntGDLoc.pim" "LeftRing4JntGDLoc_parentConstraint1.cpim";
connectAttr "LeftRing4JntGDLoc.rp" "LeftRing4JntGDLoc_parentConstraint1.crp";
connectAttr "LeftRing4JntGDLoc.rpt" "LeftRing4JntGDLoc_parentConstraint1.crt";
connectAttr "LeftRing4JntGD.t" "LeftRing4JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftRing4JntGD.rp" "LeftRing4JntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftRing4JntGD.rpt" "LeftRing4JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftRing4JntGD.r" "LeftRing4JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftRing4JntGD.ro" "LeftRing4JntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftRing4JntGD.s" "LeftRing4JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftRing4JntGD.pm" "LeftRing4JntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftRing4JntGD.jo" "LeftRing4JntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftRing4JntGDLoc_parentConstraint1.w0" "LeftRing4JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftRing5JntGDLoc_parentConstraint1.ctx" "LeftRing5JntGDLoc.tx";
connectAttr "LeftRing5JntGDLoc_parentConstraint1.cty" "LeftRing5JntGDLoc.ty";
connectAttr "LeftRing5JntGDLoc_parentConstraint1.ctz" "LeftRing5JntGDLoc.tz";
connectAttr "LeftRing5JntGDLoc_parentConstraint1.crx" "LeftRing5JntGDLoc.rx";
connectAttr "LeftRing5JntGDLoc_parentConstraint1.cry" "LeftRing5JntGDLoc.ry";
connectAttr "LeftRing5JntGDLoc_parentConstraint1.crz" "LeftRing5JntGDLoc.rz";
connectAttr "LeftRing5JntGDLoc.ro" "LeftRing5JntGDLoc_parentConstraint1.cro";
connectAttr "LeftRing5JntGDLoc.pim" "LeftRing5JntGDLoc_parentConstraint1.cpim";
connectAttr "LeftRing5JntGDLoc.rp" "LeftRing5JntGDLoc_parentConstraint1.crp";
connectAttr "LeftRing5JntGDLoc.rpt" "LeftRing5JntGDLoc_parentConstraint1.crt";
connectAttr "LeftRing5JntGD.t" "LeftRing5JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftRing5JntGD.rp" "LeftRing5JntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftRing5JntGD.rpt" "LeftRing5JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftRing5JntGD.r" "LeftRing5JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftRing5JntGD.ro" "LeftRing5JntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftRing5JntGD.s" "LeftRing5JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftRing5JntGD.pm" "LeftRing5JntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftRing5JntGD.jo" "LeftRing5JntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftRing5JntGDLoc_parentConstraint1.w0" "LeftRing5JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.ctx" "LeftPinky1JntGDLoc.tx";
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.cty" "LeftPinky1JntGDLoc.ty";
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.ctz" "LeftPinky1JntGDLoc.tz";
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.crx" "LeftPinky1JntGDLoc.rx";
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.cry" "LeftPinky1JntGDLoc.ry";
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.crz" "LeftPinky1JntGDLoc.rz";
connectAttr "LeftPinky1JntGDLoc.ro" "LeftPinky1JntGDLoc_parentConstraint1.cro";
connectAttr "LeftPinky1JntGDLoc.pim" "LeftPinky1JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftPinky1JntGDLoc.rp" "LeftPinky1JntGDLoc_parentConstraint1.crp";
connectAttr "LeftPinky1JntGDLoc.rpt" "LeftPinky1JntGDLoc_parentConstraint1.crt";
connectAttr "LeftPinky1JntGD.t" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftPinky1JntGD.rp" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftPinky1JntGD.rpt" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftPinky1JntGD.r" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftPinky1JntGD.ro" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftPinky1JntGD.s" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftPinky1JntGD.pm" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftPinky1JntGD.jo" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.w0" "LeftPinky1JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.ctx" "LeftPinky2JntGDLoc.tx";
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.cty" "LeftPinky2JntGDLoc.ty";
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.ctz" "LeftPinky2JntGDLoc.tz";
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.crx" "LeftPinky2JntGDLoc.rx";
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.cry" "LeftPinky2JntGDLoc.ry";
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.crz" "LeftPinky2JntGDLoc.rz";
connectAttr "LeftPinky2JntGDLoc.ro" "LeftPinky2JntGDLoc_parentConstraint1.cro";
connectAttr "LeftPinky2JntGDLoc.pim" "LeftPinky2JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftPinky2JntGDLoc.rp" "LeftPinky2JntGDLoc_parentConstraint1.crp";
connectAttr "LeftPinky2JntGDLoc.rpt" "LeftPinky2JntGDLoc_parentConstraint1.crt";
connectAttr "LeftPinky2JntGD.t" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftPinky2JntGD.rp" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftPinky2JntGD.rpt" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftPinky2JntGD.r" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftPinky2JntGD.ro" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftPinky2JntGD.s" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftPinky2JntGD.pm" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftPinky2JntGD.jo" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.w0" "LeftPinky2JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.ctx" "LeftPinky3JntGDLoc.tx";
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.cty" "LeftPinky3JntGDLoc.ty";
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.ctz" "LeftPinky3JntGDLoc.tz";
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.crx" "LeftPinky3JntGDLoc.rx";
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.cry" "LeftPinky3JntGDLoc.ry";
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.crz" "LeftPinky3JntGDLoc.rz";
connectAttr "LeftPinky3JntGDLoc.ro" "LeftPinky3JntGDLoc_parentConstraint1.cro";
connectAttr "LeftPinky3JntGDLoc.pim" "LeftPinky3JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftPinky3JntGDLoc.rp" "LeftPinky3JntGDLoc_parentConstraint1.crp";
connectAttr "LeftPinky3JntGDLoc.rpt" "LeftPinky3JntGDLoc_parentConstraint1.crt";
connectAttr "LeftPinky3JntGD.t" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftPinky3JntGD.rp" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftPinky3JntGD.rpt" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftPinky3JntGD.r" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftPinky3JntGD.ro" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftPinky3JntGD.s" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftPinky3JntGD.pm" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftPinky3JntGD.jo" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.w0" "LeftPinky3JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.ctx" "LeftPinky4JntGDLoc.tx";
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.cty" "LeftPinky4JntGDLoc.ty";
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.ctz" "LeftPinky4JntGDLoc.tz";
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.crx" "LeftPinky4JntGDLoc.rx";
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.cry" "LeftPinky4JntGDLoc.ry";
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.crz" "LeftPinky4JntGDLoc.rz";
connectAttr "LeftPinky4JntGDLoc.ro" "LeftPinky4JntGDLoc_parentConstraint1.cro";
connectAttr "LeftPinky4JntGDLoc.pim" "LeftPinky4JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftPinky4JntGDLoc.rp" "LeftPinky4JntGDLoc_parentConstraint1.crp";
connectAttr "LeftPinky4JntGDLoc.rpt" "LeftPinky4JntGDLoc_parentConstraint1.crt";
connectAttr "LeftPinky4JntGD.t" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftPinky4JntGD.rp" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftPinky4JntGD.rpt" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftPinky4JntGD.r" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftPinky4JntGD.ro" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftPinky4JntGD.s" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftPinky4JntGD.pm" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftPinky4JntGD.jo" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.w0" "LeftPinky4JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.ctx" "LeftPinky5JntGDLoc.tx";
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.cty" "LeftPinky5JntGDLoc.ty";
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.ctz" "LeftPinky5JntGDLoc.tz";
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.crx" "LeftPinky5JntGDLoc.rx";
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.cry" "LeftPinky5JntGDLoc.ry";
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.crz" "LeftPinky5JntGDLoc.rz";
connectAttr "LeftPinky5JntGDLoc.ro" "LeftPinky5JntGDLoc_parentConstraint1.cro";
connectAttr "LeftPinky5JntGDLoc.pim" "LeftPinky5JntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftPinky5JntGDLoc.rp" "LeftPinky5JntGDLoc_parentConstraint1.crp";
connectAttr "LeftPinky5JntGDLoc.rpt" "LeftPinky5JntGDLoc_parentConstraint1.crt";
connectAttr "LeftPinky5JntGD.t" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftPinky5JntGD.rp" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftPinky5JntGD.rpt" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftPinky5JntGD.r" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftPinky5JntGD.ro" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftPinky5JntGD.s" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftPinky5JntGD.pm" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftPinky5JntGD.jo" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.w0" "LeftPinky5JntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "ClavicleJntGDDecomposeMatrix.ot" "RightClavicleJntGDLoc.t";
connectAttr "ClavicleJntGDDecomposeMatrix.or" "RightClavicleJntGDLoc.r";
connectAttr "ClavicleJntGDDecomposeMatrix.os" "RightClavicleJntGDLoc.s";
connectAttr "ShoulderJntGDDecomposeMatrix.ot" "RightShoulderJntGDLoc.t";
connectAttr "ShoulderJntGDDecomposeMatrix.or" "RightShoulderJntGDLoc.r";
connectAttr "ShoulderJntGDDecomposeMatrix.os" "RightShoulderJntGDLoc.s";
connectAttr "ElbowJntGDDecomposeMatrix.ot" "RightElbowJntGDLoc.t";
connectAttr "ElbowJntGDDecomposeMatrix.or" "RightElbowJntGDLoc.r";
connectAttr "ElbowJntGDDecomposeMatrix.os" "RightElbowJntGDLoc.s";
connectAttr "WristJntGDDecomposeMatrix.ot" "RightWristJntGDLoc.t";
connectAttr "WristJntGDDecomposeMatrix.or" "RightWristJntGDLoc.r";
connectAttr "WristJntGDDecomposeMatrix.os" "RightWristJntGDLoc.s";
connectAttr "Thumb1JntGDDecomposeMatrix.ot" "RightThumb1JntGDLoc.t";
connectAttr "Thumb1JntGDDecomposeMatrix.or" "RightThumb1JntGDLoc.r";
connectAttr "Thumb1JntGDDecomposeMatrix.os" "RightThumb1JntGDLoc.s";
connectAttr "Thumb2JntGDDecomposeMatrix.ot" "RightThumb2JntGDLoc.t";
connectAttr "Thumb2JntGDDecomposeMatrix.or" "RightThumb2JntGDLoc.r";
connectAttr "Thumb2JntGDDecomposeMatrix.os" "RightThumb2JntGDLoc.s";
connectAttr "Thumb3JntGDDecomposeMatrix.ot" "RightThumb3JntGDLoc.t";
connectAttr "Thumb3JntGDDecomposeMatrix.or" "RightThumb3JntGDLoc.r";
connectAttr "Thumb3JntGDDecomposeMatrix.os" "RightThumb3JntGDLoc.s";
connectAttr "Thumb4JntGDDecomposeMatrix.ot" "RightThumb4JntGDLoc.t";
connectAttr "Thumb4JntGDDecomposeMatrix.or" "RightThumb4JntGDLoc.r";
connectAttr "Thumb4JntGDDecomposeMatrix.os" "RightThumb4JntGDLoc.s";
connectAttr "Thumb5JntGDDecomposeMatrix.ot" "RightThumb5JntGDLoc.t";
connectAttr "Thumb5JntGDDecomposeMatrix.or" "RightThumb5JntGDLoc.r";
connectAttr "Thumb5JntGDDecomposeMatrix.os" "RightThumb5JntGDLoc.s";
connectAttr "Index1JntGDDecomposeMatrix.ot" "RightIndex1JntGDLoc.t";
connectAttr "Index1JntGDDecomposeMatrix.or" "RightIndex1JntGDLoc.r";
connectAttr "Index1JntGDDecomposeMatrix.os" "RightIndex1JntGDLoc.s";
connectAttr "Index2JntGDDecomposeMatrix.ot" "RightIndex2JntGDLoc.t";
connectAttr "Index2JntGDDecomposeMatrix.or" "RightIndex2JntGDLoc.r";
connectAttr "Index2JntGDDecomposeMatrix.os" "RightIndex2JntGDLoc.s";
connectAttr "Index3JntGDDecomposeMatrix.ot" "RightIndex3JntGDLoc.t";
connectAttr "Index3JntGDDecomposeMatrix.or" "RightIndex3JntGDLoc.r";
connectAttr "Index3JntGDDecomposeMatrix.os" "RightIndex3JntGDLoc.s";
connectAttr "Index4JntGDDecomposeMatrix.ot" "RightIndex4JntGDLoc.t";
connectAttr "Index4JntGDDecomposeMatrix.or" "RightIndex4JntGDLoc.r";
connectAttr "Index4JntGDDecomposeMatrix.os" "RightIndex4JntGDLoc.s";
connectAttr "Index5JntGDDecomposeMatrix.ot" "RightIndex5JntGDLoc.t";
connectAttr "Index5JntGDDecomposeMatrix.or" "RightIndex5JntGDLoc.r";
connectAttr "Index5JntGDDecomposeMatrix.os" "RightIndex5JntGDLoc.s";
connectAttr "Middle1JntGDDecomposeMatrix.ot" "RightMiddle1JntGDLoc.t";
connectAttr "Middle1JntGDDecomposeMatrix.or" "RightMiddle1JntGDLoc.r";
connectAttr "Middle1JntGDDecomposeMatrix.os" "RightMiddle1JntGDLoc.s";
connectAttr "Middle2JntGDDecomposeMatrix.ot" "RightMiddle2JntGDLoc.t";
connectAttr "Middle2JntGDDecomposeMatrix.or" "RightMiddle2JntGDLoc.r";
connectAttr "Middle2JntGDDecomposeMatrix.os" "RightMiddle2JntGDLoc.s";
connectAttr "Middle3JntGDDecomposeMatrix.ot" "RightMiddle3JntGDLoc.t";
connectAttr "Middle3JntGDDecomposeMatrix.or" "RightMiddle3JntGDLoc.r";
connectAttr "Middle3JntGDDecomposeMatrix.os" "RightMiddle3JntGDLoc.s";
connectAttr "Middle4JntGDDecomposeMatrix.ot" "RightMiddle4JntGDLoc.t";
connectAttr "Middle4JntGDDecomposeMatrix.or" "RightMiddle4JntGDLoc.r";
connectAttr "Middle4JntGDDecomposeMatrix.os" "RightMiddle4JntGDLoc.s";
connectAttr "Middle5JntGDDecomposeMatrix.ot" "RightMiddle5JntGDLoc.t";
connectAttr "Middle5JntGDDecomposeMatrix.or" "RightMiddle5JntGDLoc.r";
connectAttr "Middle5JntGDDecomposeMatrix.os" "RightMiddle5JntGDLoc.s";
connectAttr "Ring1JntGDDecomposeMatrix.ot" "RightRing1JntGDLoc.t";
connectAttr "Ring1JntGDDecomposeMatrix.or" "RightRing1JntGDLoc.r";
connectAttr "Ring1JntGDDecomposeMatrix.os" "RightRing1JntGDLoc.s";
connectAttr "Ring2JntGDDecomposeMatrix.ot" "RightRing2JntGDLoc.t";
connectAttr "Ring2JntGDDecomposeMatrix.or" "RightRing2JntGDLoc.r";
connectAttr "Ring2JntGDDecomposeMatrix.os" "RightRing2JntGDLoc.s";
connectAttr "Ring3JntGDDecomposeMatrix.ot" "RightRing3JntGDLoc.t";
connectAttr "Ring3JntGDDecomposeMatrix.or" "RightRing3JntGDLoc.r";
connectAttr "Ring3JntGDDecomposeMatrix.os" "RightRing3JntGDLoc.s";
connectAttr "Ring4JntGDDecomposeMatrix.ot" "RightRing4JntGDLoc.t";
connectAttr "Ring4JntGDDecomposeMatrix.or" "RightRing4JntGDLoc.r";
connectAttr "Ring4JntGDDecomposeMatrix.os" "RightRing4JntGDLoc.s";
connectAttr "Ring5JntGDDecomposeMatrix.ot" "RightRing5JntGDLoc.t";
connectAttr "Ring5JntGDDecomposeMatrix.or" "RightRing5JntGDLoc.r";
connectAttr "Ring5JntGDDecomposeMatrix.os" "RightRing5JntGDLoc.s";
connectAttr "Pinky1JntGDDecomposeMatrix.ot" "RightPinky1JntGDLoc.t";
connectAttr "Pinky1JntGDDecomposeMatrix.or" "RightPinky1JntGDLoc.r";
connectAttr "Pinky1JntGDDecomposeMatrix.os" "RightPinky1JntGDLoc.s";
connectAttr "Pinky2JntGDDecomposeMatrix.ot" "RightPinky2JntGDLoc.t";
connectAttr "Pinky2JntGDDecomposeMatrix.or" "RightPinky2JntGDLoc.r";
connectAttr "Pinky2JntGDDecomposeMatrix.os" "RightPinky2JntGDLoc.s";
connectAttr "Pinky3JntGDDecomposeMatrix.ot" "RightPinky3JntGDLoc.t";
connectAttr "Pinky3JntGDDecomposeMatrix.or" "RightPinky3JntGDLoc.r";
connectAttr "Pinky3JntGDDecomposeMatrix.os" "RightPinky3JntGDLoc.s";
connectAttr "Pinky4JntGDDecomposeMatrix.ot" "RightPinky4JntGDLoc.t";
connectAttr "Pinky4JntGDDecomposeMatrix.or" "RightPinky4JntGDLoc.r";
connectAttr "Pinky4JntGDDecomposeMatrix.os" "RightPinky4JntGDLoc.s";
connectAttr "Pinky5JntGDDecomposeMatrix.ot" "RightPinky5JntGDLoc.t";
connectAttr "Pinky5JntGDDecomposeMatrix.or" "RightPinky5JntGDLoc.r";
connectAttr "Pinky5JntGDDecomposeMatrix.os" "RightPinky5JntGDLoc.s";
connectAttr "LeftHipJntGDLoc_parentConstraint1.ctx" "LeftHipJntGDLoc.tx";
connectAttr "LeftHipJntGDLoc_parentConstraint1.cty" "LeftHipJntGDLoc.ty";
connectAttr "LeftHipJntGDLoc_parentConstraint1.ctz" "LeftHipJntGDLoc.tz";
connectAttr "LeftHipJntGDLoc_parentConstraint1.crx" "LeftHipJntGDLoc.rx";
connectAttr "LeftHipJntGDLoc_parentConstraint1.cry" "LeftHipJntGDLoc.ry";
connectAttr "LeftHipJntGDLoc_parentConstraint1.crz" "LeftHipJntGDLoc.rz";
connectAttr "LeftHipJntGDLoc.ro" "LeftHipJntGDLoc_parentConstraint1.cro";
connectAttr "LeftHipJntGDLoc.pim" "LeftHipJntGDLoc_parentConstraint1.cpim";
connectAttr "LeftHipJntGDLoc.rp" "LeftHipJntGDLoc_parentConstraint1.crp";
connectAttr "LeftHipJntGDLoc.rpt" "LeftHipJntGDLoc_parentConstraint1.crt";
connectAttr "LeftHipJntGD.t" "LeftHipJntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftHipJntGD.rp" "LeftHipJntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftHipJntGD.rpt" "LeftHipJntGDLoc_parentConstraint1.tg[0].trt";
connectAttr "LeftHipJntGD.r" "LeftHipJntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftHipJntGD.ro" "LeftHipJntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftHipJntGD.s" "LeftHipJntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftHipJntGD.pm" "LeftHipJntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftHipJntGD.jo" "LeftHipJntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftHipJntGDLoc_parentConstraint1.w0" "LeftHipJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftKneeJntGDLoc_parentConstraint1.ctx" "LeftKneeJntGDLoc.tx";
connectAttr "LeftKneeJntGDLoc_parentConstraint1.cty" "LeftKneeJntGDLoc.ty";
connectAttr "LeftKneeJntGDLoc_parentConstraint1.ctz" "LeftKneeJntGDLoc.tz";
connectAttr "LeftKneeJntGDLoc_parentConstraint1.crx" "LeftKneeJntGDLoc.rx";
connectAttr "LeftKneeJntGDLoc_parentConstraint1.cry" "LeftKneeJntGDLoc.ry";
connectAttr "LeftKneeJntGDLoc_parentConstraint1.crz" "LeftKneeJntGDLoc.rz";
connectAttr "LeftKneeJntGDLoc.ro" "LeftKneeJntGDLoc_parentConstraint1.cro";
connectAttr "LeftKneeJntGDLoc.pim" "LeftKneeJntGDLoc_parentConstraint1.cpim";
connectAttr "LeftKneeJntGDLoc.rp" "LeftKneeJntGDLoc_parentConstraint1.crp";
connectAttr "LeftKneeJntGDLoc.rpt" "LeftKneeJntGDLoc_parentConstraint1.crt";
connectAttr "LeftKneeJntGD.t" "LeftKneeJntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftKneeJntGD.rp" "LeftKneeJntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftKneeJntGD.rpt" "LeftKneeJntGDLoc_parentConstraint1.tg[0].trt";
connectAttr "LeftKneeJntGD.r" "LeftKneeJntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftKneeJntGD.ro" "LeftKneeJntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftKneeJntGD.s" "LeftKneeJntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftKneeJntGD.pm" "LeftKneeJntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftKneeJntGD.jo" "LeftKneeJntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftKneeJntGDLoc_parentConstraint1.w0" "LeftKneeJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.ctx" "LeftAnkleScaleFixJntGDLoc.tx"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.cty" "LeftAnkleScaleFixJntGDLoc.ty"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.ctz" "LeftAnkleScaleFixJntGDLoc.tz"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.crx" "LeftAnkleScaleFixJntGDLoc.rx"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.cry" "LeftAnkleScaleFixJntGDLoc.ry"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.crz" "LeftAnkleScaleFixJntGDLoc.rz"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc.ro" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc.pim" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc.rp" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc.rpt" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftAnkleScaleFixJntGD.t" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftAnkleScaleFixJntGD.rp" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftAnkleScaleFixJntGD.rpt" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftAnkleScaleFixJntGD.r" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftAnkleScaleFixJntGD.ro" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftAnkleScaleFixJntGD.s" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftAnkleScaleFixJntGD.pm" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftAnkleScaleFixJntGD.jo" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.w0" "LeftAnkleScaleFixJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftBallJntGDLoc_parentConstraint1.ctx" "LeftBallJntGDLoc.tx";
connectAttr "LeftBallJntGDLoc_parentConstraint1.cty" "LeftBallJntGDLoc.ty";
connectAttr "LeftBallJntGDLoc_parentConstraint1.ctz" "LeftBallJntGDLoc.tz";
connectAttr "LeftBallJntGDLoc_parentConstraint1.crx" "LeftBallJntGDLoc.rx";
connectAttr "LeftBallJntGDLoc_parentConstraint1.cry" "LeftBallJntGDLoc.ry";
connectAttr "LeftBallJntGDLoc_parentConstraint1.crz" "LeftBallJntGDLoc.rz";
connectAttr "LeftBallJntGDLoc.ro" "LeftBallJntGDLoc_parentConstraint1.cro";
connectAttr "LeftBallJntGDLoc.pim" "LeftBallJntGDLoc_parentConstraint1.cpim";
connectAttr "LeftBallJntGDLoc.rp" "LeftBallJntGDLoc_parentConstraint1.crp";
connectAttr "LeftBallJntGDLoc.rpt" "LeftBallJntGDLoc_parentConstraint1.crt";
connectAttr "LeftBallJntGD.t" "LeftBallJntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftBallJntGD.rp" "LeftBallJntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftBallJntGD.rpt" "LeftBallJntGDLoc_parentConstraint1.tg[0].trt";
connectAttr "LeftBallJntGD.r" "LeftBallJntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftBallJntGD.ro" "LeftBallJntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftBallJntGD.s" "LeftBallJntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftBallJntGD.pm" "LeftBallJntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftBallJntGD.jo" "LeftBallJntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftBallJntGDLoc_parentConstraint1.w0" "LeftBallJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.ctx" "LeftFootOutJntGDLoc.tx"
		;
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.cty" "LeftFootOutJntGDLoc.ty"
		;
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.ctz" "LeftFootOutJntGDLoc.tz"
		;
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.crx" "LeftFootOutJntGDLoc.rx"
		;
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.cry" "LeftFootOutJntGDLoc.ry"
		;
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.crz" "LeftFootOutJntGDLoc.rz"
		;
connectAttr "LeftFootOutJntGDLoc.ro" "LeftFootOutJntGDLoc_parentConstraint1.cro"
		;
connectAttr "LeftFootOutJntGDLoc.pim" "LeftFootOutJntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftFootOutJntGDLoc.rp" "LeftFootOutJntGDLoc_parentConstraint1.crp"
		;
connectAttr "LeftFootOutJntGDLoc.rpt" "LeftFootOutJntGDLoc_parentConstraint1.crt"
		;
connectAttr "LeftFootOutJntGD.t" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].tt"
		;
connectAttr "LeftFootOutJntGD.rp" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftFootOutJntGD.rpt" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftFootOutJntGD.r" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].tr"
		;
connectAttr "LeftFootOutJntGD.ro" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftFootOutJntGD.s" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].ts"
		;
connectAttr "LeftFootOutJntGD.pm" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftFootOutJntGD.jo" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.w0" "LeftFootOutJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftToeJntGDLoc_parentConstraint1.ctx" "LeftToeJntGDLoc.tx";
connectAttr "LeftToeJntGDLoc_parentConstraint1.cty" "LeftToeJntGDLoc.ty";
connectAttr "LeftToeJntGDLoc_parentConstraint1.ctz" "LeftToeJntGDLoc.tz";
connectAttr "LeftToeJntGDLoc_parentConstraint1.crx" "LeftToeJntGDLoc.rx";
connectAttr "LeftToeJntGDLoc_parentConstraint1.cry" "LeftToeJntGDLoc.ry";
connectAttr "LeftToeJntGDLoc_parentConstraint1.crz" "LeftToeJntGDLoc.rz";
connectAttr "LeftToeJntGDLoc.ro" "LeftToeJntGDLoc_parentConstraint1.cro";
connectAttr "LeftToeJntGDLoc.pim" "LeftToeJntGDLoc_parentConstraint1.cpim";
connectAttr "LeftToeJntGDLoc.rp" "LeftToeJntGDLoc_parentConstraint1.crp";
connectAttr "LeftToeJntGDLoc.rpt" "LeftToeJntGDLoc_parentConstraint1.crt";
connectAttr "LeftToeJntGD.t" "LeftToeJntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftToeJntGD.rp" "LeftToeJntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftToeJntGD.rpt" "LeftToeJntGDLoc_parentConstraint1.tg[0].trt";
connectAttr "LeftToeJntGD.r" "LeftToeJntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftToeJntGD.ro" "LeftToeJntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftToeJntGD.s" "LeftToeJntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftToeJntGD.pm" "LeftToeJntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftToeJntGD.jo" "LeftToeJntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftToeJntGDLoc_parentConstraint1.w0" "LeftToeJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftFootInJntGDLoc_parentConstraint1.ctx" "LeftFootInJntGDLoc.tx";
connectAttr "LeftFootInJntGDLoc_parentConstraint1.cty" "LeftFootInJntGDLoc.ty";
connectAttr "LeftFootInJntGDLoc_parentConstraint1.ctz" "LeftFootInJntGDLoc.tz";
connectAttr "LeftFootInJntGDLoc_parentConstraint1.crx" "LeftFootInJntGDLoc.rx";
connectAttr "LeftFootInJntGDLoc_parentConstraint1.cry" "LeftFootInJntGDLoc.ry";
connectAttr "LeftFootInJntGDLoc_parentConstraint1.crz" "LeftFootInJntGDLoc.rz";
connectAttr "LeftFootInJntGDLoc.ro" "LeftFootInJntGDLoc_parentConstraint1.cro";
connectAttr "LeftFootInJntGDLoc.pim" "LeftFootInJntGDLoc_parentConstraint1.cpim"
		;
connectAttr "LeftFootInJntGDLoc.rp" "LeftFootInJntGDLoc_parentConstraint1.crp";
connectAttr "LeftFootInJntGDLoc.rpt" "LeftFootInJntGDLoc_parentConstraint1.crt";
connectAttr "LeftFootInJntGD.t" "LeftFootInJntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftFootInJntGD.rp" "LeftFootInJntGDLoc_parentConstraint1.tg[0].trp"
		;
connectAttr "LeftFootInJntGD.rpt" "LeftFootInJntGDLoc_parentConstraint1.tg[0].trt"
		;
connectAttr "LeftFootInJntGD.r" "LeftFootInJntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftFootInJntGD.ro" "LeftFootInJntGDLoc_parentConstraint1.tg[0].tro"
		;
connectAttr "LeftFootInJntGD.s" "LeftFootInJntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftFootInJntGD.pm" "LeftFootInJntGDLoc_parentConstraint1.tg[0].tpm"
		;
connectAttr "LeftFootInJntGD.jo" "LeftFootInJntGDLoc_parentConstraint1.tg[0].tjo"
		;
connectAttr "LeftFootInJntGDLoc_parentConstraint1.w0" "LeftFootInJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "LeftHeelJntGDLoc_parentConstraint1.ctx" "LeftHeelJntGDLoc.tx";
connectAttr "LeftHeelJntGDLoc_parentConstraint1.cty" "LeftHeelJntGDLoc.ty";
connectAttr "LeftHeelJntGDLoc_parentConstraint1.ctz" "LeftHeelJntGDLoc.tz";
connectAttr "LeftHeelJntGDLoc_parentConstraint1.crx" "LeftHeelJntGDLoc.rx";
connectAttr "LeftHeelJntGDLoc_parentConstraint1.cry" "LeftHeelJntGDLoc.ry";
connectAttr "LeftHeelJntGDLoc_parentConstraint1.crz" "LeftHeelJntGDLoc.rz";
connectAttr "LeftHeelJntGDLoc.ro" "LeftHeelJntGDLoc_parentConstraint1.cro";
connectAttr "LeftHeelJntGDLoc.pim" "LeftHeelJntGDLoc_parentConstraint1.cpim";
connectAttr "LeftHeelJntGDLoc.rp" "LeftHeelJntGDLoc_parentConstraint1.crp";
connectAttr "LeftHeelJntGDLoc.rpt" "LeftHeelJntGDLoc_parentConstraint1.crt";
connectAttr "LeftHeelJntGD.t" "LeftHeelJntGDLoc_parentConstraint1.tg[0].tt";
connectAttr "LeftHeelJntGD.rp" "LeftHeelJntGDLoc_parentConstraint1.tg[0].trp";
connectAttr "LeftHeelJntGD.rpt" "LeftHeelJntGDLoc_parentConstraint1.tg[0].trt";
connectAttr "LeftHeelJntGD.r" "LeftHeelJntGDLoc_parentConstraint1.tg[0].tr";
connectAttr "LeftHeelJntGD.ro" "LeftHeelJntGDLoc_parentConstraint1.tg[0].tro";
connectAttr "LeftHeelJntGD.s" "LeftHeelJntGDLoc_parentConstraint1.tg[0].ts";
connectAttr "LeftHeelJntGD.pm" "LeftHeelJntGDLoc_parentConstraint1.tg[0].tpm";
connectAttr "LeftHeelJntGD.jo" "LeftHeelJntGDLoc_parentConstraint1.tg[0].tjo";
connectAttr "LeftHeelJntGDLoc_parentConstraint1.w0" "LeftHeelJntGDLoc_parentConstraint1.tg[0].tw"
		;
connectAttr "HipJntGDDecomposeMatrix.ot" "RightHipJntGDLoc.t";
connectAttr "HipJntGDDecomposeMatrix.or" "RightHipJntGDLoc.r";
connectAttr "HipJntGDDecomposeMatrix.os" "RightHipJntGDLoc.s";
connectAttr "KneeJntGDDecomposeMatrix.ot" "RightKneeJntGDLoc.t";
connectAttr "KneeJntGDDecomposeMatrix.or" "RightKneeJntGDLoc.r";
connectAttr "KneeJntGDDecomposeMatrix.os" "RightKneeJntGDLoc.s";
connectAttr "AnkleScaleFixJntGDDecomposeMatrix.ot" "RightAnkleScaleFixJntGDLoc.t"
		;
connectAttr "AnkleScaleFixJntGDDecomposeMatrix.or" "RightAnkleScaleFixJntGDLoc.r"
		;
connectAttr "AnkleScaleFixJntGDDecomposeMatrix.os" "RightAnkleScaleFixJntGDLoc.s"
		;
connectAttr "BallJntGDDecomposeMatrix.ot" "RightBallJntGDLoc.t";
connectAttr "BallJntGDDecomposeMatrix.or" "RightBallJntGDLoc.r";
connectAttr "BallJntGDDecomposeMatrix.os" "RightBallJntGDLoc.s";
connectAttr "FootOutJntGDDecomposeMatrix.ot" "RightFootOutJntGDLoc.t";
connectAttr "FootOutJntGDDecomposeMatrix.or" "RightFootOutJntGDLoc.r";
connectAttr "FootOutJntGDDecomposeMatrix.os" "RightFootOutJntGDLoc.s";
connectAttr "ToeJntGDDecomposeMatrix.ot" "RightToeJntGDLoc.t";
connectAttr "ToeJntGDDecomposeMatrix.or" "RightToeJntGDLoc.r";
connectAttr "ToeJntGDDecomposeMatrix.os" "RightToeJntGDLoc.s";
connectAttr "FootInJntGDDecomposeMatrix.ot" "RightFootInJntGDLoc.t";
connectAttr "FootInJntGDDecomposeMatrix.or" "RightFootInJntGDLoc.r";
connectAttr "FootInJntGDDecomposeMatrix.os" "RightFootInJntGDLoc.s";
connectAttr "HeelJntGDDecomposeMatrix.ot" "RightHeelJntGDLoc.t";
connectAttr "HeelJntGDDecomposeMatrix.or" "RightHeelJntGDLoc.r";
connectAttr "HeelJntGDDecomposeMatrix.os" "RightHeelJntGDLoc.s";
connectAttr "nurbsPlane1_parentConstraint1.ctx" "nurbsPlane1.tx" -l on;
connectAttr "nurbsPlane1_parentConstraint1.cty" "nurbsPlane1.ty" -l on;
connectAttr "nurbsPlane1_parentConstraint1.ctz" "nurbsPlane1.tz" -l on;
connectAttr "nurbsPlane1_parentConstraint1.crx" "nurbsPlane1.rx" -l on;
connectAttr "nurbsPlane1_parentConstraint1.cry" "nurbsPlane1.ry" -l on;
connectAttr "nurbsPlane1_parentConstraint1.crz" "nurbsPlane1.rz" -l on;
connectAttr "nurbsPlane1_scaleConstraint1.csx" "nurbsPlane1.sx" -l on;
connectAttr "nurbsPlane1_scaleConstraint1.csy" "nurbsPlane1.sy" -l on;
connectAttr "nurbsPlane1_scaleConstraint1.csz" "nurbsPlane1.sz" -l on;
connectAttr "nurbsPlane1.ro" "nurbsPlane1_parentConstraint1.cro";
connectAttr "nurbsPlane1.pim" "nurbsPlane1_parentConstraint1.cpim";
connectAttr "nurbsPlane1.rp" "nurbsPlane1_parentConstraint1.crp";
connectAttr "nurbsPlane1.rpt" "nurbsPlane1_parentConstraint1.crt";
connectAttr "LeftThumb1JntGD.t" "nurbsPlane1_parentConstraint1.tg[0].tt";
connectAttr "LeftThumb1JntGD.rp" "nurbsPlane1_parentConstraint1.tg[0].trp";
connectAttr "LeftThumb1JntGD.rpt" "nurbsPlane1_parentConstraint1.tg[0].trt";
connectAttr "LeftThumb1JntGD.r" "nurbsPlane1_parentConstraint1.tg[0].tr";
connectAttr "LeftThumb1JntGD.ro" "nurbsPlane1_parentConstraint1.tg[0].tro";
connectAttr "LeftThumb1JntGD.s" "nurbsPlane1_parentConstraint1.tg[0].ts";
connectAttr "LeftThumb1JntGD.pm" "nurbsPlane1_parentConstraint1.tg[0].tpm";
connectAttr "LeftThumb1JntGD.jo" "nurbsPlane1_parentConstraint1.tg[0].tjo";
connectAttr "nurbsPlane1_parentConstraint1.w0" "nurbsPlane1_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane1.pim" "nurbsPlane1_scaleConstraint1.cpim";
connectAttr "LeftThumb1JntGD.s" "nurbsPlane1_scaleConstraint1.tg[0].ts";
connectAttr "LeftThumb1JntGD.pm" "nurbsPlane1_scaleConstraint1.tg[0].tpm";
connectAttr "nurbsPlane1_scaleConstraint1.w0" "nurbsPlane1_scaleConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane2_parentConstraint1.ctx" "nurbsPlane2.tx" -l on;
connectAttr "nurbsPlane2_parentConstraint1.cty" "nurbsPlane2.ty" -l on;
connectAttr "nurbsPlane2_parentConstraint1.ctz" "nurbsPlane2.tz" -l on;
connectAttr "nurbsPlane2_parentConstraint1.crx" "nurbsPlane2.rx" -l on;
connectAttr "nurbsPlane2_parentConstraint1.cry" "nurbsPlane2.ry" -l on;
connectAttr "nurbsPlane2_parentConstraint1.crz" "nurbsPlane2.rz" -l on;
connectAttr "nurbsPlane2_scaleConstraint1.csx" "nurbsPlane2.sx" -l on;
connectAttr "nurbsPlane2_scaleConstraint1.csy" "nurbsPlane2.sy" -l on;
connectAttr "nurbsPlane2_scaleConstraint1.csz" "nurbsPlane2.sz" -l on;
connectAttr "nurbsPlane2.ro" "nurbsPlane2_parentConstraint1.cro";
connectAttr "nurbsPlane2.pim" "nurbsPlane2_parentConstraint1.cpim";
connectAttr "nurbsPlane2.rp" "nurbsPlane2_parentConstraint1.crp";
connectAttr "nurbsPlane2.rpt" "nurbsPlane2_parentConstraint1.crt";
connectAttr "LeftIndex1JntGD.t" "nurbsPlane2_parentConstraint1.tg[0].tt";
connectAttr "LeftIndex1JntGD.rp" "nurbsPlane2_parentConstraint1.tg[0].trp";
connectAttr "LeftIndex1JntGD.rpt" "nurbsPlane2_parentConstraint1.tg[0].trt";
connectAttr "LeftIndex1JntGD.r" "nurbsPlane2_parentConstraint1.tg[0].tr";
connectAttr "LeftIndex1JntGD.ro" "nurbsPlane2_parentConstraint1.tg[0].tro";
connectAttr "LeftIndex1JntGD.s" "nurbsPlane2_parentConstraint1.tg[0].ts";
connectAttr "LeftIndex1JntGD.pm" "nurbsPlane2_parentConstraint1.tg[0].tpm";
connectAttr "LeftIndex1JntGD.jo" "nurbsPlane2_parentConstraint1.tg[0].tjo";
connectAttr "nurbsPlane2_parentConstraint1.w0" "nurbsPlane2_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane2.pim" "nurbsPlane2_scaleConstraint1.cpim";
connectAttr "LeftIndex1JntGD.s" "nurbsPlane2_scaleConstraint1.tg[0].ts";
connectAttr "LeftIndex1JntGD.pm" "nurbsPlane2_scaleConstraint1.tg[0].tpm";
connectAttr "nurbsPlane2_scaleConstraint1.w0" "nurbsPlane2_scaleConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane3_parentConstraint1.ctx" "nurbsPlane3.tx" -l on;
connectAttr "nurbsPlane3_parentConstraint1.cty" "nurbsPlane3.ty" -l on;
connectAttr "nurbsPlane3_parentConstraint1.ctz" "nurbsPlane3.tz" -l on;
connectAttr "nurbsPlane3_parentConstraint1.crx" "nurbsPlane3.rx" -l on;
connectAttr "nurbsPlane3_parentConstraint1.cry" "nurbsPlane3.ry" -l on;
connectAttr "nurbsPlane3_parentConstraint1.crz" "nurbsPlane3.rz" -l on;
connectAttr "nurbsPlane3_scaleConstraint1.csx" "nurbsPlane3.sx" -l on;
connectAttr "nurbsPlane3_scaleConstraint1.csy" "nurbsPlane3.sy" -l on;
connectAttr "nurbsPlane3_scaleConstraint1.csz" "nurbsPlane3.sz" -l on;
connectAttr "nurbsPlane3.ro" "nurbsPlane3_parentConstraint1.cro";
connectAttr "nurbsPlane3.pim" "nurbsPlane3_parentConstraint1.cpim";
connectAttr "nurbsPlane3.rp" "nurbsPlane3_parentConstraint1.crp";
connectAttr "nurbsPlane3.rpt" "nurbsPlane3_parentConstraint1.crt";
connectAttr "LeftMiddle1JntGD.t" "nurbsPlane3_parentConstraint1.tg[0].tt";
connectAttr "LeftMiddle1JntGD.rp" "nurbsPlane3_parentConstraint1.tg[0].trp";
connectAttr "LeftMiddle1JntGD.rpt" "nurbsPlane3_parentConstraint1.tg[0].trt";
connectAttr "LeftMiddle1JntGD.r" "nurbsPlane3_parentConstraint1.tg[0].tr";
connectAttr "LeftMiddle1JntGD.ro" "nurbsPlane3_parentConstraint1.tg[0].tro";
connectAttr "LeftMiddle1JntGD.s" "nurbsPlane3_parentConstraint1.tg[0].ts";
connectAttr "LeftMiddle1JntGD.pm" "nurbsPlane3_parentConstraint1.tg[0].tpm";
connectAttr "LeftMiddle1JntGD.jo" "nurbsPlane3_parentConstraint1.tg[0].tjo";
connectAttr "nurbsPlane3_parentConstraint1.w0" "nurbsPlane3_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane3.pim" "nurbsPlane3_scaleConstraint1.cpim";
connectAttr "LeftMiddle1JntGD.s" "nurbsPlane3_scaleConstraint1.tg[0].ts";
connectAttr "LeftMiddle1JntGD.pm" "nurbsPlane3_scaleConstraint1.tg[0].tpm";
connectAttr "nurbsPlane3_scaleConstraint1.w0" "nurbsPlane3_scaleConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane4_parentConstraint1.ctx" "nurbsPlane4.tx" -l on;
connectAttr "nurbsPlane4_parentConstraint1.cty" "nurbsPlane4.ty" -l on;
connectAttr "nurbsPlane4_parentConstraint1.ctz" "nurbsPlane4.tz" -l on;
connectAttr "nurbsPlane4_parentConstraint1.crx" "nurbsPlane4.rx" -l on;
connectAttr "nurbsPlane4_parentConstraint1.cry" "nurbsPlane4.ry" -l on;
connectAttr "nurbsPlane4_parentConstraint1.crz" "nurbsPlane4.rz" -l on;
connectAttr "nurbsPlane4_scaleConstraint1.csx" "nurbsPlane4.sx" -l on;
connectAttr "nurbsPlane4_scaleConstraint1.csy" "nurbsPlane4.sy" -l on;
connectAttr "nurbsPlane4_scaleConstraint1.csz" "nurbsPlane4.sz" -l on;
connectAttr "nurbsPlane4.ro" "nurbsPlane4_parentConstraint1.cro";
connectAttr "nurbsPlane4.pim" "nurbsPlane4_parentConstraint1.cpim";
connectAttr "nurbsPlane4.rp" "nurbsPlane4_parentConstraint1.crp";
connectAttr "nurbsPlane4.rpt" "nurbsPlane4_parentConstraint1.crt";
connectAttr "LeftRing1JntGD.t" "nurbsPlane4_parentConstraint1.tg[0].tt";
connectAttr "LeftRing1JntGD.rp" "nurbsPlane4_parentConstraint1.tg[0].trp";
connectAttr "LeftRing1JntGD.rpt" "nurbsPlane4_parentConstraint1.tg[0].trt";
connectAttr "LeftRing1JntGD.r" "nurbsPlane4_parentConstraint1.tg[0].tr";
connectAttr "LeftRing1JntGD.ro" "nurbsPlane4_parentConstraint1.tg[0].tro";
connectAttr "LeftRing1JntGD.s" "nurbsPlane4_parentConstraint1.tg[0].ts";
connectAttr "LeftRing1JntGD.pm" "nurbsPlane4_parentConstraint1.tg[0].tpm";
connectAttr "LeftRing1JntGD.jo" "nurbsPlane4_parentConstraint1.tg[0].tjo";
connectAttr "nurbsPlane4_parentConstraint1.w0" "nurbsPlane4_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane4.pim" "nurbsPlane4_scaleConstraint1.cpim";
connectAttr "LeftRing1JntGD.s" "nurbsPlane4_scaleConstraint1.tg[0].ts";
connectAttr "LeftRing1JntGD.pm" "nurbsPlane4_scaleConstraint1.tg[0].tpm";
connectAttr "nurbsPlane4_scaleConstraint1.w0" "nurbsPlane4_scaleConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane5_parentConstraint1.ctx" "nurbsPlane5.tx" -l on;
connectAttr "nurbsPlane5_parentConstraint1.cty" "nurbsPlane5.ty" -l on;
connectAttr "nurbsPlane5_parentConstraint1.ctz" "nurbsPlane5.tz" -l on;
connectAttr "nurbsPlane5_parentConstraint1.crx" "nurbsPlane5.rx" -l on;
connectAttr "nurbsPlane5_parentConstraint1.cry" "nurbsPlane5.ry" -l on;
connectAttr "nurbsPlane5_parentConstraint1.crz" "nurbsPlane5.rz" -l on;
connectAttr "nurbsPlane5_scaleConstraint1.csx" "nurbsPlane5.sx" -l on;
connectAttr "nurbsPlane5_scaleConstraint1.csy" "nurbsPlane5.sy" -l on;
connectAttr "nurbsPlane5_scaleConstraint1.csz" "nurbsPlane5.sz" -l on;
connectAttr "nurbsPlane5.ro" "nurbsPlane5_parentConstraint1.cro";
connectAttr "nurbsPlane5.pim" "nurbsPlane5_parentConstraint1.cpim";
connectAttr "nurbsPlane5.rp" "nurbsPlane5_parentConstraint1.crp";
connectAttr "nurbsPlane5.rpt" "nurbsPlane5_parentConstraint1.crt";
connectAttr "LeftPinky1JntGD.t" "nurbsPlane5_parentConstraint1.tg[0].tt";
connectAttr "LeftPinky1JntGD.rp" "nurbsPlane5_parentConstraint1.tg[0].trp";
connectAttr "LeftPinky1JntGD.rpt" "nurbsPlane5_parentConstraint1.tg[0].trt";
connectAttr "LeftPinky1JntGD.r" "nurbsPlane5_parentConstraint1.tg[0].tr";
connectAttr "LeftPinky1JntGD.ro" "nurbsPlane5_parentConstraint1.tg[0].tro";
connectAttr "LeftPinky1JntGD.s" "nurbsPlane5_parentConstraint1.tg[0].ts";
connectAttr "LeftPinky1JntGD.pm" "nurbsPlane5_parentConstraint1.tg[0].tpm";
connectAttr "LeftPinky1JntGD.jo" "nurbsPlane5_parentConstraint1.tg[0].tjo";
connectAttr "nurbsPlane5_parentConstraint1.w0" "nurbsPlane5_parentConstraint1.tg[0].tw"
		;
connectAttr "nurbsPlane5.pim" "nurbsPlane5_scaleConstraint1.cpim";
connectAttr "LeftPinky1JntGD.s" "nurbsPlane5_scaleConstraint1.tg[0].ts";
connectAttr "LeftPinky1JntGD.pm" "nurbsPlane5_scaleConstraint1.tg[0].tpm";
connectAttr "nurbsPlane5_scaleConstraint1.w0" "nurbsPlane5_scaleConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "SpineCurveGDShape.ws" "motionPath1.gp";
connectAttr "RootJntGDLoc.tmrx" "addDoubleLinear1.i1";
connectAttr "motionPath1.xc" "addDoubleLinear1.i2";
connectAttr "RootJntGDLoc.tmry" "addDoubleLinear2.i1";
connectAttr "motionPath1.yc" "addDoubleLinear2.i2";
connectAttr "RootJntGDLoc.tmrz" "addDoubleLinear3.i1";
connectAttr "motionPath1.zc" "addDoubleLinear3.i2";
connectAttr "multiplyDivide2.ox" "motionPath2.u";
connectAttr "SpineCurveGDShape.ws" "motionPath2.gp";
connectAttr "Spine1JntGDLoc.tmrx" "addDoubleLinear4.i1";
connectAttr "motionPath2.xc" "addDoubleLinear4.i2";
connectAttr "Spine1JntGDLoc.tmry" "addDoubleLinear5.i1";
connectAttr "motionPath2.yc" "addDoubleLinear5.i2";
connectAttr "Spine1JntGDLoc.tmrz" "addDoubleLinear6.i1";
connectAttr "motionPath2.zc" "addDoubleLinear6.i2";
connectAttr "multiplyDivide3.ox" "motionPath3.u";
connectAttr "SpineCurveGDShape.ws" "motionPath3.gp";
connectAttr "Spine2JntGDLoc.tmrx" "addDoubleLinear7.i1";
connectAttr "motionPath3.xc" "addDoubleLinear7.i2";
connectAttr "Spine2JntGDLoc.tmry" "addDoubleLinear8.i1";
connectAttr "motionPath3.yc" "addDoubleLinear8.i2";
connectAttr "Spine2JntGDLoc.tmrz" "addDoubleLinear9.i1";
connectAttr "motionPath3.zc" "addDoubleLinear9.i2";
connectAttr "multiplyDivide4.ox" "motionPath4.u";
connectAttr "SpineCurveGDShape.ws" "motionPath4.gp";
connectAttr "Spine3JntGDLoc.tmrx" "addDoubleLinear10.i1";
connectAttr "motionPath4.xc" "addDoubleLinear10.i2";
connectAttr "Spine3JntGDLoc.tmry" "addDoubleLinear11.i1";
connectAttr "motionPath4.yc" "addDoubleLinear11.i2";
connectAttr "Spine3JntGDLoc.tmrz" "addDoubleLinear12.i1";
connectAttr "motionPath4.zc" "addDoubleLinear12.i2";
connectAttr "setRange1.oy" "motionPath5.u";
connectAttr "SpineCurveGDShape.ws" "motionPath5.gp";
connectAttr "Spine4JntGDLoc.tmrx" "addDoubleLinear13.i1";
connectAttr "motionPath5.xc" "addDoubleLinear13.i2";
connectAttr "Spine4JntGDLoc.tmry" "addDoubleLinear14.i1";
connectAttr "motionPath5.yc" "addDoubleLinear14.i2";
connectAttr "Spine4JntGDLoc.tmrz" "addDoubleLinear15.i1";
connectAttr "motionPath5.zc" "addDoubleLinear15.i2";
connectAttr "SpineCurveGDShape.ws" "motionPath6.gp";
connectAttr "Neck1JntGDLoc.tmrx" "addDoubleLinear16.i1";
connectAttr "motionPath6.xc" "addDoubleLinear16.i2";
connectAttr "Neck1JntGDLoc.tmry" "addDoubleLinear17.i1";
connectAttr "motionPath6.yc" "addDoubleLinear17.i2";
connectAttr "Neck1JntGDLoc.tmrz" "addDoubleLinear18.i1";
connectAttr "motionPath6.zc" "addDoubleLinear18.i2";
connectAttr "motionPath5.u" "multiplyDivide1.i1x";
connectAttr "multiplyDivide1.ox" "multiplyDivide2.i1x";
connectAttr "multiplyDivide1.ox" "multiplyDivide3.i1x";
connectAttr "multiplyDivide1.ox" "multiplyDivide4.i1x";
connectAttr "cluster1GroupParts.og" "cluster1.ip[0].ig";
connectAttr "cluster1GroupId.id" "cluster1.ip[0].gi";
connectAttr "cluster1Handle.wm" "cluster1.ma";
connectAttr "cluster1HandleShape.x" "cluster1.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "SpineCurveGDShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "cluster1.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "SpineCurveGDShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "SpineCurveGDShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "SpineCurveGDShape1Original.ws" "leastSquaresModifier1.ino";
connectAttr "SpineCurveGDShape.wm" "leastSquaresModifier1.wto";
connectAttr "locatorShape7.wp" "leastSquaresModifier1.pc[0].xyz";
connectAttr "locatorShape8.wp" "leastSquaresModifier1.pc[1].xyz";
connectAttr "Neck1JntGDCtrl.t" "setRange1.om";
connectAttr "RootJntGDCtrl.t" "setRange1.on";
connectAttr "plusMinusAverage1.o1" "setRange1.vy";
connectAttr "spineArcCtrlGrp.ty" "plusMinusAverage1.i1[0]";
connectAttr "spineArcCtrl.ty" "plusMinusAverage1.i1[1]";
connectAttr ":defaultRenderGlobals.rcb" "defaultFurGlobals.cb";
connectAttr "LeftHipJntGD.tx" "MirrorHipTX.i1x";
connectAttr "LeftKneeJntGD.tx" "MirrorKneeTX.i1x";
connectAttr "LeftAnkleScaleFixJntGD.tx" "MirrorAnkelTX.i1x";
connectAttr "TongueJntGDCurve_normalizedScale.ox" "TongueJntGDcurveInfo1.normalizedScale"
		;
connectAttr "TongueJntGDcurveInfo1.al" "TongueJntGDCurve_normalizedScale.i1x";
connectAttr "TongueGDCurveShape.ws" "TongueMotionPath1.gp";
connectAttr "Tongue1JntGD.tmrx" "addDoubleLinear19.i1";
connectAttr "TongueMotionPath1.xc" "addDoubleLinear19.i2";
connectAttr "Tongue1JntGD.tmry" "addDoubleLinear20.i1";
connectAttr "TongueMotionPath1.yc" "addDoubleLinear20.i2";
connectAttr "Tongue1JntGD.tmrz" "addDoubleLinear21.i1";
connectAttr "TongueMotionPath1.zc" "addDoubleLinear21.i2";
connectAttr "TongueGDCurveShape.ws" "TongueMotionPath2.gp";
connectAttr "Tongue2JntGD.tmrx" "addDoubleLinear22.i1";
connectAttr "TongueMotionPath2.xc" "addDoubleLinear22.i2";
connectAttr "Tongue2JntGD.tmry" "addDoubleLinear23.i1";
connectAttr "TongueMotionPath2.yc" "addDoubleLinear23.i2";
connectAttr "Tongue2JntGD.tmrz" "addDoubleLinear24.i1";
connectAttr "TongueMotionPath2.zc" "addDoubleLinear24.i2";
connectAttr "TongueGDCurveShape.ws" "TongueMotionPath3.gp";
connectAttr "Tongue3JntGD.tmrx" "addDoubleLinear25.i1";
connectAttr "TongueMotionPath3.xc" "addDoubleLinear25.i2";
connectAttr "Tongue3JntGD.tmry" "addDoubleLinear26.i1";
connectAttr "TongueMotionPath3.yc" "addDoubleLinear26.i2";
connectAttr "Tongue3JntGD.tmrz" "addDoubleLinear27.i1";
connectAttr "TongueMotionPath3.zc" "addDoubleLinear27.i2";
connectAttr "TongueGDCurveShape.ws" "TongueMotionPath4.gp";
connectAttr "Tongue4JntGD.tmrx" "addDoubleLinear28.i1";
connectAttr "TongueMotionPath4.xc" "addDoubleLinear28.i2";
connectAttr "Tongue4JntGD.tmry" "addDoubleLinear29.i1";
connectAttr "TongueMotionPath4.yc" "addDoubleLinear29.i2";
connectAttr "Tongue4JntGD.tmrz" "addDoubleLinear30.i1";
connectAttr "TongueMotionPath4.zc" "addDoubleLinear30.i2";
connectAttr "TongueGDCurveShape.ws" "TongueMotionPath5.gp";
connectAttr "Tongue5JntGD.tmrx" "addDoubleLinear31.i1";
connectAttr "TongueMotionPath5.xc" "addDoubleLinear31.i2";
connectAttr "Tongue5JntGD.tmry" "addDoubleLinear32.i1";
connectAttr "TongueMotionPath5.yc" "addDoubleLinear32.i2";
connectAttr "Tongue5JntGD.tmrz" "addDoubleLinear33.i1";
connectAttr "TongueMotionPath5.zc" "addDoubleLinear33.i2";
connectAttr "TongueGDCurveShape.ws" "TongueMotionPath6.gp";
connectAttr "Tongue6JntGD.tmrx" "addDoubleLinear34.i1";
connectAttr "TongueMotionPath6.xc" "addDoubleLinear34.i2";
connectAttr "Tongue6JntGD.tmry" "addDoubleLinear35.i1";
connectAttr "TongueMotionPath6.yc" "addDoubleLinear35.i2";
connectAttr "Tongue6JntGD.tmrz" "addDoubleLinear36.i1";
connectAttr "TongueMotionPath6.zc" "addDoubleLinear36.i2";
connectAttr "TongueGDCurveShapeOriginal.ws" "leastSquaresModifier2.ino";
connectAttr "TongueGDCurveShape.wm" "leastSquaresModifier2.wto";
connectAttr "TongueGDCurveCtrl1Shape.wp" "leastSquaresModifier2.pc[0].xyz";
connectAttr "TongueGDCurveCtrlShape2.wp" "leastSquaresModifier2.pc[1].xyz";
connectAttr "TongueGDCurveCtrlShape3.wp" "leastSquaresModifier2.pc[2].xyz";
connectAttr "TongueGDCurveCtrlShape4.wp" "leastSquaresModifier2.pc[3].xyz";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "NoseMultMatrix.o" "NoseDecomposeMatrix.imat";
connectAttr "LeftNoseJntGD.m" "NoseMultMatrix.i[0]";
connectAttr "NoseMirrorMatrix.o" "NoseMultMatrix.i[1]";
connectAttr "hyperView2.msg" "nodeEditorPanel2Info.b[0]";
connectAttr "hyperLayout2.msg" "hyperView2.hl";
connectAttr "LeftShoulderJntGD.msg" "hyperLayout2.hyp[0].dn";
connectAttr "LeftClavicleJntGDLoc.msg" "hyperLayout2.hyp[1].dn";
connectAttr "LeftClavicleJntGDLocShape.msg" "hyperLayout2.hyp[2].dn";
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[3].dn"
		;
connectAttr "LeftShoulderJntGDLoc.msg" "hyperLayout2.hyp[4].dn";
connectAttr "LeftShoulderJntGDLocShape.msg" "hyperLayout2.hyp[5].dn";
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[6].dn"
		;
connectAttr "LeftElbowJntGDLoc.msg" "hyperLayout2.hyp[7].dn";
connectAttr "LeftElbowJntGDLocShape.msg" "hyperLayout2.hyp[8].dn";
connectAttr "LeftElbowJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[9].dn";
connectAttr "LeftWristJntGDLoc.msg" "hyperLayout2.hyp[10].dn";
connectAttr "LeftWristJntGDLocShape.msg" "hyperLayout2.hyp[11].dn";
connectAttr "LeftWristJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[12].dn";
connectAttr "LeftThumb1JntGDLoc.msg" "hyperLayout2.hyp[13].dn";
connectAttr "LeftThumb1JntGDLocShape.msg" "hyperLayout2.hyp[14].dn";
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[15].dn"
		;
connectAttr "LeftThumb2JntGDLoc.msg" "hyperLayout2.hyp[16].dn";
connectAttr "LeftThumb2JntGDLocShape.msg" "hyperLayout2.hyp[17].dn";
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[18].dn"
		;
connectAttr "LeftThumb3JntGDLoc.msg" "hyperLayout2.hyp[19].dn";
connectAttr "LeftThumb3JntGDLocShape.msg" "hyperLayout2.hyp[20].dn";
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[21].dn"
		;
connectAttr "LeftThumb4JntGDLoc.msg" "hyperLayout2.hyp[22].dn";
connectAttr "LeftThumb4JntGDLocShape.msg" "hyperLayout2.hyp[23].dn";
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[24].dn"
		;
connectAttr "LeftThumb5JntGDLoc.msg" "hyperLayout2.hyp[25].dn";
connectAttr "LeftThumb5JntGDLocShape.msg" "hyperLayout2.hyp[26].dn";
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[27].dn"
		;
connectAttr "LeftIndex1JntGDLoc.msg" "hyperLayout2.hyp[28].dn";
connectAttr "LeftIndex1JntGDLocShape.msg" "hyperLayout2.hyp[29].dn";
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[30].dn"
		;
connectAttr "LeftIndex2JntGDLoc.msg" "hyperLayout2.hyp[31].dn";
connectAttr "LeftIndex2JntGDLocShape.msg" "hyperLayout2.hyp[32].dn";
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[33].dn"
		;
connectAttr "LeftIndex3JntGDLoc.msg" "hyperLayout2.hyp[34].dn";
connectAttr "LeftIndex3JntGDLocShape.msg" "hyperLayout2.hyp[35].dn";
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[36].dn"
		;
connectAttr "LeftIndex4JntGDLoc.msg" "hyperLayout2.hyp[37].dn";
connectAttr "LeftIndex4JntGDLocShape.msg" "hyperLayout2.hyp[38].dn";
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[39].dn"
		;
connectAttr "LeftIndex5JntGDLoc.msg" "hyperLayout2.hyp[40].dn";
connectAttr "LeftIndex5JntGDLocShape.msg" "hyperLayout2.hyp[41].dn";
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[42].dn"
		;
connectAttr "LeftMiddle1JntGDLoc.msg" "hyperLayout2.hyp[43].dn";
connectAttr "LeftMiddle1JntGDLocShape.msg" "hyperLayout2.hyp[44].dn";
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[45].dn"
		;
connectAttr "LeftMiddle2JntGDLoc.msg" "hyperLayout2.hyp[46].dn";
connectAttr "LeftMiddle2JntGDLocShape.msg" "hyperLayout2.hyp[47].dn";
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[48].dn"
		;
connectAttr "LeftMiddle3JntGDLoc.msg" "hyperLayout2.hyp[49].dn";
connectAttr "LeftMiddle3JntGDLocShape.msg" "hyperLayout2.hyp[50].dn";
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[51].dn"
		;
connectAttr "LeftMiddle4JntGDLoc.msg" "hyperLayout2.hyp[52].dn";
connectAttr "LeftMiddle4JntGDLocShape.msg" "hyperLayout2.hyp[53].dn";
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[54].dn"
		;
connectAttr "LeftMiddle5JntGDLoc.msg" "hyperLayout2.hyp[55].dn";
connectAttr "LeftMiddle5JntGDLocShape.msg" "hyperLayout2.hyp[56].dn";
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[57].dn"
		;
connectAttr "LeftRing1JntGDLoc.msg" "hyperLayout2.hyp[58].dn";
connectAttr "LeftRing1JntGDLocShape.msg" "hyperLayout2.hyp[59].dn";
connectAttr "LeftRing1JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[60].dn";
connectAttr "LeftRing2JntGDLoc.msg" "hyperLayout2.hyp[61].dn";
connectAttr "LeftRing2JntGDLocShape.msg" "hyperLayout2.hyp[62].dn";
connectAttr "LeftRing2JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[63].dn";
connectAttr "LeftRing3JntGDLoc.msg" "hyperLayout2.hyp[64].dn";
connectAttr "LeftRing3JntGDLocShape.msg" "hyperLayout2.hyp[65].dn";
connectAttr "LeftRing3JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[66].dn";
connectAttr "LeftRing4JntGDLoc.msg" "hyperLayout2.hyp[67].dn";
connectAttr "LeftRing4JntGDLocShape.msg" "hyperLayout2.hyp[68].dn";
connectAttr "LeftRing4JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[69].dn";
connectAttr "LeftRing5JntGDLoc.msg" "hyperLayout2.hyp[70].dn";
connectAttr "LeftRing5JntGDLocShape.msg" "hyperLayout2.hyp[71].dn";
connectAttr "LeftRing5JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[72].dn";
connectAttr "LeftPinky1JntGDLoc.msg" "hyperLayout2.hyp[73].dn";
connectAttr "LeftPinky1JntGDLocShape.msg" "hyperLayout2.hyp[74].dn";
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[75].dn"
		;
connectAttr "LeftPinky2JntGDLoc.msg" "hyperLayout2.hyp[76].dn";
connectAttr "LeftPinky2JntGDLocShape.msg" "hyperLayout2.hyp[77].dn";
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[78].dn"
		;
connectAttr "LeftPinky3JntGDLoc.msg" "hyperLayout2.hyp[79].dn";
connectAttr "LeftPinky3JntGDLocShape.msg" "hyperLayout2.hyp[80].dn";
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[81].dn"
		;
connectAttr "LeftPinky4JntGDLoc.msg" "hyperLayout2.hyp[82].dn";
connectAttr "LeftPinky4JntGDLocShape.msg" "hyperLayout2.hyp[83].dn";
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[84].dn"
		;
connectAttr "LeftPinky5JntGDLoc.msg" "hyperLayout2.hyp[85].dn";
connectAttr "LeftPinky5JntGDLocShape.msg" "hyperLayout2.hyp[86].dn";
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[87].dn"
		;
connectAttr "MirrorMatrix.msg" "hyperLayout2.hyp[88].dn";
connectAttr "ClavicleJntGDMultMatrix.msg" "hyperLayout2.hyp[89].dn";
connectAttr "ClavicleJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[90].dn";
connectAttr "RightClavicleJntGDLoc.msg" "hyperLayout2.hyp[91].dn";
connectAttr "RightClavicleJntGDLocShape.msg" "hyperLayout2.hyp[92].dn";
connectAttr "ShoulderJntGDMultMatrix.msg" "hyperLayout2.hyp[93].dn";
connectAttr "ShoulderJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[94].dn";
connectAttr "RightShoulderJntGDLoc.msg" "hyperLayout2.hyp[95].dn";
connectAttr "RightShoulderJntGDLocShape.msg" "hyperLayout2.hyp[96].dn";
connectAttr "ElbowJntGDMultMatrix.msg" "hyperLayout2.hyp[97].dn";
connectAttr "ElbowJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[98].dn";
connectAttr "RightElbowJntGDLoc.msg" "hyperLayout2.hyp[99].dn";
connectAttr "RightElbowJntGDLocShape.msg" "hyperLayout2.hyp[100].dn";
connectAttr "WristJntGDMultMatrix.msg" "hyperLayout2.hyp[101].dn";
connectAttr "WristJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[102].dn";
connectAttr "RightWristJntGDLoc.msg" "hyperLayout2.hyp[103].dn";
connectAttr "RightWristJntGDLocShape.msg" "hyperLayout2.hyp[104].dn";
connectAttr "Thumb1JntGDMultMatrix.msg" "hyperLayout2.hyp[105].dn";
connectAttr "Thumb1JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[106].dn";
connectAttr "RightThumb1JntGDLoc.msg" "hyperLayout2.hyp[107].dn";
connectAttr "RightThumb1JntGDLocShape.msg" "hyperLayout2.hyp[108].dn";
connectAttr "Thumb2JntGDMultMatrix.msg" "hyperLayout2.hyp[109].dn";
connectAttr "Thumb2JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[110].dn";
connectAttr "RightThumb2JntGDLoc.msg" "hyperLayout2.hyp[111].dn";
connectAttr "RightThumb2JntGDLocShape.msg" "hyperLayout2.hyp[112].dn";
connectAttr "Thumb3JntGDMultMatrix.msg" "hyperLayout2.hyp[113].dn";
connectAttr "Thumb3JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[114].dn";
connectAttr "RightThumb3JntGDLoc.msg" "hyperLayout2.hyp[115].dn";
connectAttr "RightThumb3JntGDLocShape.msg" "hyperLayout2.hyp[116].dn";
connectAttr "Thumb4JntGDMultMatrix.msg" "hyperLayout2.hyp[117].dn";
connectAttr "Thumb4JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[118].dn";
connectAttr "RightThumb4JntGDLoc.msg" "hyperLayout2.hyp[119].dn";
connectAttr "RightThumb4JntGDLocShape.msg" "hyperLayout2.hyp[120].dn";
connectAttr "Thumb5JntGDMultMatrix.msg" "hyperLayout2.hyp[121].dn";
connectAttr "Thumb5JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[122].dn";
connectAttr "RightThumb5JntGDLoc.msg" "hyperLayout2.hyp[123].dn";
connectAttr "RightThumb5JntGDLocShape.msg" "hyperLayout2.hyp[124].dn";
connectAttr "Index1JntGDMultMatrix.msg" "hyperLayout2.hyp[125].dn";
connectAttr "Index1JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[126].dn";
connectAttr "RightIndex1JntGDLoc.msg" "hyperLayout2.hyp[127].dn";
connectAttr "RightIndex1JntGDLocShape.msg" "hyperLayout2.hyp[128].dn";
connectAttr "Index2JntGDMultMatrix.msg" "hyperLayout2.hyp[129].dn";
connectAttr "Index2JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[130].dn";
connectAttr "RightIndex2JntGDLoc.msg" "hyperLayout2.hyp[131].dn";
connectAttr "RightIndex2JntGDLocShape.msg" "hyperLayout2.hyp[132].dn";
connectAttr "Index3JntGDMultMatrix.msg" "hyperLayout2.hyp[133].dn";
connectAttr "Index3JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[134].dn";
connectAttr "RightIndex3JntGDLoc.msg" "hyperLayout2.hyp[135].dn";
connectAttr "RightIndex3JntGDLocShape.msg" "hyperLayout2.hyp[136].dn";
connectAttr "Index4JntGDMultMatrix.msg" "hyperLayout2.hyp[137].dn";
connectAttr "Index4JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[138].dn";
connectAttr "RightIndex4JntGDLoc.msg" "hyperLayout2.hyp[139].dn";
connectAttr "RightIndex4JntGDLocShape.msg" "hyperLayout2.hyp[140].dn";
connectAttr "Index5JntGDMultMatrix.msg" "hyperLayout2.hyp[141].dn";
connectAttr "Index5JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[142].dn";
connectAttr "RightIndex5JntGDLoc.msg" "hyperLayout2.hyp[143].dn";
connectAttr "RightIndex5JntGDLocShape.msg" "hyperLayout2.hyp[144].dn";
connectAttr "Middle1JntGDMultMatrix.msg" "hyperLayout2.hyp[145].dn";
connectAttr "Middle1JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[146].dn";
connectAttr "RightMiddle1JntGDLoc.msg" "hyperLayout2.hyp[147].dn";
connectAttr "RightMiddle1JntGDLocShape.msg" "hyperLayout2.hyp[148].dn";
connectAttr "Middle2JntGDMultMatrix.msg" "hyperLayout2.hyp[149].dn";
connectAttr "Middle2JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[150].dn";
connectAttr "RightMiddle2JntGDLoc.msg" "hyperLayout2.hyp[151].dn";
connectAttr "RightMiddle2JntGDLocShape.msg" "hyperLayout2.hyp[152].dn";
connectAttr "Middle3JntGDMultMatrix.msg" "hyperLayout2.hyp[153].dn";
connectAttr "Middle3JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[154].dn";
connectAttr "RightMiddle3JntGDLoc.msg" "hyperLayout2.hyp[155].dn";
connectAttr "RightMiddle3JntGDLocShape.msg" "hyperLayout2.hyp[156].dn";
connectAttr "Middle4JntGDMultMatrix.msg" "hyperLayout2.hyp[157].dn";
connectAttr "Middle4JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[158].dn";
connectAttr "RightMiddle4JntGDLoc.msg" "hyperLayout2.hyp[159].dn";
connectAttr "RightMiddle4JntGDLocShape.msg" "hyperLayout2.hyp[160].dn";
connectAttr "Middle5JntGDMultMatrix.msg" "hyperLayout2.hyp[161].dn";
connectAttr "Middle5JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[162].dn";
connectAttr "RightMiddle5JntGDLoc.msg" "hyperLayout2.hyp[163].dn";
connectAttr "RightMiddle5JntGDLocShape.msg" "hyperLayout2.hyp[164].dn";
connectAttr "Ring1JntGDMultMatrix.msg" "hyperLayout2.hyp[165].dn";
connectAttr "Ring1JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[166].dn";
connectAttr "RightRing1JntGDLoc.msg" "hyperLayout2.hyp[167].dn";
connectAttr "RightRing1JntGDLocShape.msg" "hyperLayout2.hyp[168].dn";
connectAttr "Ring2JntGDMultMatrix.msg" "hyperLayout2.hyp[169].dn";
connectAttr "Ring2JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[170].dn";
connectAttr "RightRing2JntGDLoc.msg" "hyperLayout2.hyp[171].dn";
connectAttr "RightRing2JntGDLocShape.msg" "hyperLayout2.hyp[172].dn";
connectAttr "Ring3JntGDMultMatrix.msg" "hyperLayout2.hyp[173].dn";
connectAttr "Ring3JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[174].dn";
connectAttr "RightRing3JntGDLoc.msg" "hyperLayout2.hyp[175].dn";
connectAttr "RightRing3JntGDLocShape.msg" "hyperLayout2.hyp[176].dn";
connectAttr "Ring4JntGDMultMatrix.msg" "hyperLayout2.hyp[177].dn";
connectAttr "Ring4JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[178].dn";
connectAttr "RightRing4JntGDLoc.msg" "hyperLayout2.hyp[179].dn";
connectAttr "RightRing4JntGDLocShape.msg" "hyperLayout2.hyp[180].dn";
connectAttr "Ring5JntGDMultMatrix.msg" "hyperLayout2.hyp[181].dn";
connectAttr "Ring5JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[182].dn";
connectAttr "RightRing5JntGDLoc.msg" "hyperLayout2.hyp[183].dn";
connectAttr "RightRing5JntGDLocShape.msg" "hyperLayout2.hyp[184].dn";
connectAttr "Pinky1JntGDMultMatrix.msg" "hyperLayout2.hyp[185].dn";
connectAttr "Pinky1JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[186].dn";
connectAttr "RightPinky1JntGDLoc.msg" "hyperLayout2.hyp[187].dn";
connectAttr "RightPinky1JntGDLocShape.msg" "hyperLayout2.hyp[188].dn";
connectAttr "Pinky2JntGDMultMatrix.msg" "hyperLayout2.hyp[189].dn";
connectAttr "Pinky2JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[190].dn";
connectAttr "RightPinky2JntGDLoc.msg" "hyperLayout2.hyp[191].dn";
connectAttr "RightPinky2JntGDLocShape.msg" "hyperLayout2.hyp[192].dn";
connectAttr "Pinky3JntGDMultMatrix.msg" "hyperLayout2.hyp[193].dn";
connectAttr "Pinky3JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[194].dn";
connectAttr "RightPinky3JntGDLoc.msg" "hyperLayout2.hyp[195].dn";
connectAttr "RightPinky3JntGDLocShape.msg" "hyperLayout2.hyp[196].dn";
connectAttr "Pinky4JntGDMultMatrix.msg" "hyperLayout2.hyp[197].dn";
connectAttr "Pinky4JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[198].dn";
connectAttr "RightPinky4JntGDLoc.msg" "hyperLayout2.hyp[199].dn";
connectAttr "RightPinky4JntGDLocShape.msg" "hyperLayout2.hyp[200].dn";
connectAttr "Pinky5JntGDMultMatrix.msg" "hyperLayout2.hyp[201].dn";
connectAttr "Pinky5JntGDDecomposeMatrix.msg" "hyperLayout2.hyp[202].dn";
connectAttr "RightPinky5JntGDLoc.msg" "hyperLayout2.hyp[203].dn";
connectAttr "RightPinky5JntGDLocShape.msg" "hyperLayout2.hyp[204].dn";
connectAttr "RightClavicleJntGD_parentConstraint1.msg" "hyperLayout2.hyp[205].dn"
		;
connectAttr "RightShoulderJntGD_parentConstraint1.msg" "hyperLayout2.hyp[206].dn"
		;
connectAttr "RightElbowJntGD_parentConstraint1.msg" "hyperLayout2.hyp[207].dn";
connectAttr "RightWristJntGD_parentConstraint1.msg" "hyperLayout2.hyp[208].dn";
connectAttr "RightThumb1JntGD_parentConstraint1.msg" "hyperLayout2.hyp[209].dn";
connectAttr "RightThumb2JntGD_parentConstraint1.msg" "hyperLayout2.hyp[210].dn";
connectAttr "RightThumb3JntGD_parentConstraint1.msg" "hyperLayout2.hyp[211].dn";
connectAttr "RightThumb4JntGD_parentConstraint1.msg" "hyperLayout2.hyp[212].dn";
connectAttr "RightThumb5JntGD_parentConstraint1.msg" "hyperLayout2.hyp[213].dn";
connectAttr "RightIndex1JntGD_parentConstraint1.msg" "hyperLayout2.hyp[214].dn";
connectAttr "RightIndex2JntGD_parentConstraint1.msg" "hyperLayout2.hyp[215].dn";
connectAttr "RightIndex3JntGD_parentConstraint1.msg" "hyperLayout2.hyp[216].dn";
connectAttr "RightIndex4JntGD_parentConstraint1.msg" "hyperLayout2.hyp[217].dn";
connectAttr "RightIndex5JntGD_parentConstraint1.msg" "hyperLayout2.hyp[218].dn";
connectAttr "RightMiddle1JntGD_parentConstraint1.msg" "hyperLayout2.hyp[219].dn"
		;
connectAttr "RightMiddle2JntGD_parentConstraint1.msg" "hyperLayout2.hyp[220].dn"
		;
connectAttr "RightMiddle3JntGD_parentConstraint1.msg" "hyperLayout2.hyp[221].dn"
		;
connectAttr "RightMiddle4JntGD_parentConstraint1.msg" "hyperLayout2.hyp[222].dn"
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.msg" "hyperLayout2.hyp[223].dn"
		;
connectAttr "RightRing1JntGD_parentConstraint1.msg" "hyperLayout2.hyp[224].dn";
connectAttr "RightRing2JntGD_parentConstraint1.msg" "hyperLayout2.hyp[225].dn";
connectAttr "RightRing3JntGD_parentConstraint1.msg" "hyperLayout2.hyp[226].dn";
connectAttr "RightRing4JntGD_parentConstraint1.msg" "hyperLayout2.hyp[227].dn";
connectAttr "RightRing5JntGD_parentConstraint1.msg" "hyperLayout2.hyp[228].dn";
connectAttr "RightPinky1JntGD_parentConstraint1.msg" "hyperLayout2.hyp[229].dn";
connectAttr "RightPinky2JntGD_parentConstraint1.msg" "hyperLayout2.hyp[230].dn";
connectAttr "RightPinky3JntGD_parentConstraint1.msg" "hyperLayout2.hyp[231].dn";
connectAttr "RightPinky4JntGD_parentConstraint1.msg" "hyperLayout2.hyp[232].dn";
connectAttr "RightPinky5JntGD_parentConstraint1.msg" "hyperLayout2.hyp[233].dn";
connectAttr "LeftHipJntGDLoc.msg" "hyperLayout2.hyp[234].dn";
connectAttr "LeftHipJntGDLocShape.msg" "hyperLayout2.hyp[235].dn";
connectAttr "LeftHipJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[236].dn";
connectAttr "LeftKneeJntGDLoc.msg" "hyperLayout2.hyp[237].dn";
connectAttr "LeftKneeJntGDLocShape.msg" "hyperLayout2.hyp[238].dn";
connectAttr "LeftKneeJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[239].dn";
connectAttr "LeftAnkleScaleFixJntGDLoc.msg" "hyperLayout2.hyp[240].dn";
connectAttr "LeftAnkleScaleFixJntGDLocShape.msg" "hyperLayout2.hyp[241].dn";
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[242].dn"
		;
connectAttr "LeftBallJntGDLoc.msg" "hyperLayout2.hyp[243].dn";
connectAttr "LeftBallJntGDLocShape.msg" "hyperLayout2.hyp[244].dn";
connectAttr "LeftBallJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[245].dn";
connectAttr "LeftFootOutJntGDLoc.msg" "hyperLayout2.hyp[246].dn";
connectAttr "LeftFootOutJntGDLocShape.msg" "hyperLayout2.hyp[247].dn";
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[248].dn"
		;
connectAttr "LeftToeJntGDLoc.msg" "hyperLayout2.hyp[249].dn";
connectAttr "LeftToeJntGDLocShape.msg" "hyperLayout2.hyp[250].dn";
connectAttr "LeftToeJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[251].dn";
connectAttr "LeftFootInJntGDLoc.msg" "hyperLayout2.hyp[252].dn";
connectAttr "LeftFootInJntGDLocShape.msg" "hyperLayout2.hyp[253].dn";
connectAttr "LeftFootInJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[254].dn"
		;
connectAttr "LeftHeelJntGDLoc.msg" "hyperLayout2.hyp[255].dn";
connectAttr "LeftHeelJntGDLocShape.msg" "hyperLayout2.hyp[256].dn";
connectAttr "LeftHeelJntGDLoc_parentConstraint1.msg" "hyperLayout2.hyp[257].dn";
connectAttr "HipJntGDMultMatrix.msg" "hyperLayout2.hyp[258].dn";
connectAttr "HipJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[259].dn";
connectAttr "RightHipJntGDLoc.msg" "hyperLayout2.hyp[260].dn";
connectAttr "RightHipJntGDLocShape.msg" "hyperLayout2.hyp[261].dn";
connectAttr "KneeJntGDMultMatrix.msg" "hyperLayout2.hyp[262].dn";
connectAttr "KneeJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[263].dn";
connectAttr "RightKneeJntGDLoc.msg" "hyperLayout2.hyp[264].dn";
connectAttr "RightKneeJntGDLocShape.msg" "hyperLayout2.hyp[265].dn";
connectAttr "AnkleScaleFixJntGDMultMatrix.msg" "hyperLayout2.hyp[266].dn";
connectAttr "AnkleScaleFixJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[267].dn";
connectAttr "RightAnkleScaleFixJntGDLoc.msg" "hyperLayout2.hyp[268].dn";
connectAttr "RightAnkleScaleFixJntGDLocShape.msg" "hyperLayout2.hyp[269].dn";
connectAttr "BallJntGDMultMatrix.msg" "hyperLayout2.hyp[270].dn";
connectAttr "BallJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[271].dn";
connectAttr "RightBallJntGDLoc.msg" "hyperLayout2.hyp[272].dn";
connectAttr "RightBallJntGDLocShape.msg" "hyperLayout2.hyp[273].dn";
connectAttr "FootOutJntGDMultMatrix.msg" "hyperLayout2.hyp[274].dn";
connectAttr "FootOutJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[275].dn";
connectAttr "RightFootOutJntGDLoc.msg" "hyperLayout2.hyp[276].dn";
connectAttr "RightFootOutJntGDLocShape.msg" "hyperLayout2.hyp[277].dn";
connectAttr "ToeJntGDMultMatrix.msg" "hyperLayout2.hyp[278].dn";
connectAttr "ToeJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[279].dn";
connectAttr "RightToeJntGDLoc.msg" "hyperLayout2.hyp[280].dn";
connectAttr "RightToeJntGDLocShape.msg" "hyperLayout2.hyp[281].dn";
connectAttr "FootInJntGDMultMatrix.msg" "hyperLayout2.hyp[282].dn";
connectAttr "FootInJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[283].dn";
connectAttr "RightFootInJntGDLoc.msg" "hyperLayout2.hyp[284].dn";
connectAttr "RightFootInJntGDLocShape.msg" "hyperLayout2.hyp[285].dn";
connectAttr "HeelJntGDMultMatrix.msg" "hyperLayout2.hyp[286].dn";
connectAttr "HeelJntGDDecomposeMatrix.msg" "hyperLayout2.hyp[287].dn";
connectAttr "RightHeelJntGDLoc.msg" "hyperLayout2.hyp[288].dn";
connectAttr "RightHeelJntGDLocShape.msg" "hyperLayout2.hyp[289].dn";
connectAttr "RightAnkleJntGD_orientConstraint1.msg" "hyperLayout2.hyp[290].dn";
connectAttr "RightAnkleJntGD_pointConstraint1.msg" "hyperLayout2.hyp[291].dn";
connectAttr "RightHipJntGD_parentConstraint1.msg" "hyperLayout2.hyp[292].dn";
connectAttr "RightKneeJntGD_parentConstraint1.msg" "hyperLayout2.hyp[293].dn";
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.msg" "hyperLayout2.hyp[294].dn"
		;
connectAttr "RightFootOutJntGD_parentConstraint1.msg" "hyperLayout2.hyp[295].dn"
		;
connectAttr "RightToeJntGD_parentConstraint1.msg" "hyperLayout2.hyp[296].dn";
connectAttr "RightFootInJntGD_parentConstraint1.msg" "hyperLayout2.hyp[297].dn";
connectAttr "RightHeelJntGD_parentConstraint1.msg" "hyperLayout2.hyp[298].dn";
connectAttr "conGrp.msg" "hyperLayout2.hyp[299].dn";
connectAttr "conGrp_parentConstraint1.msg" "hyperLayout2.hyp[300].dn";
connectAttr "MirrorLocGrp.msg" "hyperLayout2.hyp[301].dn";
connectAttr "nurbsPlane1.msg" "hyperLayout2.hyp[302].dn";
connectAttr "nurbsPlaneShape1.msg" "hyperLayout2.hyp[303].dn";
connectAttr "nurbsPlane2.msg" "hyperLayout2.hyp[304].dn";
connectAttr "nurbsPlaneShape2.msg" "hyperLayout2.hyp[305].dn";
connectAttr "nurbsPlane3.msg" "hyperLayout2.hyp[306].dn";
connectAttr "nurbsPlaneShape3.msg" "hyperLayout2.hyp[307].dn";
connectAttr "nurbsPlane4.msg" "hyperLayout2.hyp[308].dn";
connectAttr "nurbsPlaneShape4.msg" "hyperLayout2.hyp[309].dn";
connectAttr "nurbsPlane5.msg" "hyperLayout2.hyp[310].dn";
connectAttr "nurbsPlaneShape5.msg" "hyperLayout2.hyp[311].dn";
connectAttr "nurbsPlane1_parentConstraint1.msg" "hyperLayout2.hyp[312].dn";
connectAttr "nurbsPlane2_parentConstraint1.msg" "hyperLayout2.hyp[313].dn";
connectAttr "nurbsPlane3_parentConstraint1.msg" "hyperLayout2.hyp[314].dn";
connectAttr "nurbsPlane4_parentConstraint1.msg" "hyperLayout2.hyp[315].dn";
connectAttr "nurbsPlane5_parentConstraint1.msg" "hyperLayout2.hyp[316].dn";
connectAttr "nurbsPlane1_scaleConstraint1.msg" "hyperLayout2.hyp[317].dn";
connectAttr "nurbsPlane2_scaleConstraint1.msg" "hyperLayout2.hyp[318].dn";
connectAttr "nurbsPlane3_scaleConstraint1.msg" "hyperLayout2.hyp[319].dn";
connectAttr "nurbsPlane4_scaleConstraint1.msg" "hyperLayout2.hyp[320].dn";
connectAttr "nurbsPlane5_scaleConstraint1.msg" "hyperLayout2.hyp[321].dn";
connectAttr "lambert2.msg" "hyperLayout2.hyp[322].dn";
connectAttr "lambert2SG.msg" "hyperLayout2.hyp[323].dn";
connectAttr "FingerUpHelper.msg" "hyperLayout2.hyp[324].dn";
connectAttr "hyperView3.msg" "nodeEditorPanel3Info.b[0]";
connectAttr "hyperLayout3.msg" "hyperView3.hl";
connectAttr "LeftShoulderJntGD.msg" "hyperLayout3.hyp[0].dn";
connectAttr "LeftClavicleJntGDLoc.msg" "hyperLayout3.hyp[1].dn";
connectAttr "LeftClavicleJntGDLocShape.msg" "hyperLayout3.hyp[2].dn";
connectAttr "LeftClavicleJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[3].dn"
		;
connectAttr "LeftShoulderJntGDLoc.msg" "hyperLayout3.hyp[4].dn";
connectAttr "LeftShoulderJntGDLocShape.msg" "hyperLayout3.hyp[5].dn";
connectAttr "LeftShoulderJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[6].dn"
		;
connectAttr "LeftElbowJntGDLoc.msg" "hyperLayout3.hyp[7].dn";
connectAttr "LeftElbowJntGDLocShape.msg" "hyperLayout3.hyp[8].dn";
connectAttr "LeftElbowJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[9].dn";
connectAttr "LeftWristJntGDLoc.msg" "hyperLayout3.hyp[10].dn";
connectAttr "LeftWristJntGDLocShape.msg" "hyperLayout3.hyp[11].dn";
connectAttr "LeftWristJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[12].dn";
connectAttr "LeftThumb1JntGDLoc.msg" "hyperLayout3.hyp[13].dn";
connectAttr "LeftThumb1JntGDLocShape.msg" "hyperLayout3.hyp[14].dn";
connectAttr "LeftThumb1JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[15].dn"
		;
connectAttr "LeftThumb2JntGDLoc.msg" "hyperLayout3.hyp[16].dn";
connectAttr "LeftThumb2JntGDLocShape.msg" "hyperLayout3.hyp[17].dn";
connectAttr "LeftThumb2JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[18].dn"
		;
connectAttr "LeftThumb3JntGDLoc.msg" "hyperLayout3.hyp[19].dn";
connectAttr "LeftThumb3JntGDLocShape.msg" "hyperLayout3.hyp[20].dn";
connectAttr "LeftThumb3JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[21].dn"
		;
connectAttr "LeftThumb4JntGDLoc.msg" "hyperLayout3.hyp[22].dn";
connectAttr "LeftThumb4JntGDLocShape.msg" "hyperLayout3.hyp[23].dn";
connectAttr "LeftThumb4JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[24].dn"
		;
connectAttr "LeftThumb5JntGDLoc.msg" "hyperLayout3.hyp[25].dn";
connectAttr "LeftThumb5JntGDLocShape.msg" "hyperLayout3.hyp[26].dn";
connectAttr "LeftThumb5JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[27].dn"
		;
connectAttr "LeftIndex1JntGDLoc.msg" "hyperLayout3.hyp[28].dn";
connectAttr "LeftIndex1JntGDLocShape.msg" "hyperLayout3.hyp[29].dn";
connectAttr "LeftIndex1JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[30].dn"
		;
connectAttr "LeftIndex2JntGDLoc.msg" "hyperLayout3.hyp[31].dn";
connectAttr "LeftIndex2JntGDLocShape.msg" "hyperLayout3.hyp[32].dn";
connectAttr "LeftIndex2JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[33].dn"
		;
connectAttr "LeftIndex3JntGDLoc.msg" "hyperLayout3.hyp[34].dn";
connectAttr "LeftIndex3JntGDLocShape.msg" "hyperLayout3.hyp[35].dn";
connectAttr "LeftIndex3JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[36].dn"
		;
connectAttr "LeftIndex4JntGDLoc.msg" "hyperLayout3.hyp[37].dn";
connectAttr "LeftIndex4JntGDLocShape.msg" "hyperLayout3.hyp[38].dn";
connectAttr "LeftIndex4JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[39].dn"
		;
connectAttr "LeftIndex5JntGDLoc.msg" "hyperLayout3.hyp[40].dn";
connectAttr "LeftIndex5JntGDLocShape.msg" "hyperLayout3.hyp[41].dn";
connectAttr "LeftIndex5JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[42].dn"
		;
connectAttr "LeftMiddle1JntGDLoc.msg" "hyperLayout3.hyp[43].dn";
connectAttr "LeftMiddle1JntGDLocShape.msg" "hyperLayout3.hyp[44].dn";
connectAttr "LeftMiddle1JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[45].dn"
		;
connectAttr "LeftMiddle2JntGDLoc.msg" "hyperLayout3.hyp[46].dn";
connectAttr "LeftMiddle2JntGDLocShape.msg" "hyperLayout3.hyp[47].dn";
connectAttr "LeftMiddle2JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[48].dn"
		;
connectAttr "LeftMiddle3JntGDLoc.msg" "hyperLayout3.hyp[49].dn";
connectAttr "LeftMiddle3JntGDLocShape.msg" "hyperLayout3.hyp[50].dn";
connectAttr "LeftMiddle3JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[51].dn"
		;
connectAttr "LeftMiddle4JntGDLoc.msg" "hyperLayout3.hyp[52].dn";
connectAttr "LeftMiddle4JntGDLocShape.msg" "hyperLayout3.hyp[53].dn";
connectAttr "LeftMiddle4JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[54].dn"
		;
connectAttr "LeftMiddle5JntGDLoc.msg" "hyperLayout3.hyp[55].dn";
connectAttr "LeftMiddle5JntGDLocShape.msg" "hyperLayout3.hyp[56].dn";
connectAttr "LeftMiddle5JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[57].dn"
		;
connectAttr "LeftRing1JntGDLoc.msg" "hyperLayout3.hyp[58].dn";
connectAttr "LeftRing1JntGDLocShape.msg" "hyperLayout3.hyp[59].dn";
connectAttr "LeftRing1JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[60].dn";
connectAttr "LeftRing2JntGDLoc.msg" "hyperLayout3.hyp[61].dn";
connectAttr "LeftRing2JntGDLocShape.msg" "hyperLayout3.hyp[62].dn";
connectAttr "LeftRing2JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[63].dn";
connectAttr "LeftRing3JntGDLoc.msg" "hyperLayout3.hyp[64].dn";
connectAttr "LeftRing3JntGDLocShape.msg" "hyperLayout3.hyp[65].dn";
connectAttr "LeftRing3JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[66].dn";
connectAttr "LeftRing4JntGDLoc.msg" "hyperLayout3.hyp[67].dn";
connectAttr "LeftRing4JntGDLocShape.msg" "hyperLayout3.hyp[68].dn";
connectAttr "LeftRing4JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[69].dn";
connectAttr "LeftRing5JntGDLoc.msg" "hyperLayout3.hyp[70].dn";
connectAttr "LeftRing5JntGDLocShape.msg" "hyperLayout3.hyp[71].dn";
connectAttr "LeftRing5JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[72].dn";
connectAttr "LeftPinky1JntGDLoc.msg" "hyperLayout3.hyp[73].dn";
connectAttr "LeftPinky1JntGDLocShape.msg" "hyperLayout3.hyp[74].dn";
connectAttr "LeftPinky1JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[75].dn"
		;
connectAttr "LeftPinky2JntGDLoc.msg" "hyperLayout3.hyp[76].dn";
connectAttr "LeftPinky2JntGDLocShape.msg" "hyperLayout3.hyp[77].dn";
connectAttr "LeftPinky2JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[78].dn"
		;
connectAttr "LeftPinky3JntGDLoc.msg" "hyperLayout3.hyp[79].dn";
connectAttr "LeftPinky3JntGDLocShape.msg" "hyperLayout3.hyp[80].dn";
connectAttr "LeftPinky3JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[81].dn"
		;
connectAttr "LeftPinky4JntGDLoc.msg" "hyperLayout3.hyp[82].dn";
connectAttr "LeftPinky4JntGDLocShape.msg" "hyperLayout3.hyp[83].dn";
connectAttr "LeftPinky4JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[84].dn"
		;
connectAttr "LeftPinky5JntGDLoc.msg" "hyperLayout3.hyp[85].dn";
connectAttr "LeftPinky5JntGDLocShape.msg" "hyperLayout3.hyp[86].dn";
connectAttr "LeftPinky5JntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[87].dn"
		;
connectAttr "MirrorMatrix.msg" "hyperLayout3.hyp[88].dn";
connectAttr "ClavicleJntGDMultMatrix.msg" "hyperLayout3.hyp[89].dn";
connectAttr "ClavicleJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[90].dn";
connectAttr "RightClavicleJntGDLoc.msg" "hyperLayout3.hyp[91].dn";
connectAttr "RightClavicleJntGDLocShape.msg" "hyperLayout3.hyp[92].dn";
connectAttr "ShoulderJntGDMultMatrix.msg" "hyperLayout3.hyp[93].dn";
connectAttr "ShoulderJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[94].dn";
connectAttr "RightShoulderJntGDLoc.msg" "hyperLayout3.hyp[95].dn";
connectAttr "RightShoulderJntGDLocShape.msg" "hyperLayout3.hyp[96].dn";
connectAttr "ElbowJntGDMultMatrix.msg" "hyperLayout3.hyp[97].dn";
connectAttr "ElbowJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[98].dn";
connectAttr "RightElbowJntGDLoc.msg" "hyperLayout3.hyp[99].dn";
connectAttr "RightElbowJntGDLocShape.msg" "hyperLayout3.hyp[100].dn";
connectAttr "WristJntGDMultMatrix.msg" "hyperLayout3.hyp[101].dn";
connectAttr "WristJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[102].dn";
connectAttr "RightWristJntGDLoc.msg" "hyperLayout3.hyp[103].dn";
connectAttr "RightWristJntGDLocShape.msg" "hyperLayout3.hyp[104].dn";
connectAttr "Thumb1JntGDMultMatrix.msg" "hyperLayout3.hyp[105].dn";
connectAttr "Thumb1JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[106].dn";
connectAttr "RightThumb1JntGDLoc.msg" "hyperLayout3.hyp[107].dn";
connectAttr "RightThumb1JntGDLocShape.msg" "hyperLayout3.hyp[108].dn";
connectAttr "Thumb2JntGDMultMatrix.msg" "hyperLayout3.hyp[109].dn";
connectAttr "Thumb2JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[110].dn";
connectAttr "RightThumb2JntGDLoc.msg" "hyperLayout3.hyp[111].dn";
connectAttr "RightThumb2JntGDLocShape.msg" "hyperLayout3.hyp[112].dn";
connectAttr "Thumb3JntGDMultMatrix.msg" "hyperLayout3.hyp[113].dn";
connectAttr "Thumb3JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[114].dn";
connectAttr "RightThumb3JntGDLoc.msg" "hyperLayout3.hyp[115].dn";
connectAttr "RightThumb3JntGDLocShape.msg" "hyperLayout3.hyp[116].dn";
connectAttr "Thumb4JntGDMultMatrix.msg" "hyperLayout3.hyp[117].dn";
connectAttr "Thumb4JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[118].dn";
connectAttr "RightThumb4JntGDLoc.msg" "hyperLayout3.hyp[119].dn";
connectAttr "RightThumb4JntGDLocShape.msg" "hyperLayout3.hyp[120].dn";
connectAttr "Thumb5JntGDMultMatrix.msg" "hyperLayout3.hyp[121].dn";
connectAttr "Thumb5JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[122].dn";
connectAttr "RightThumb5JntGDLoc.msg" "hyperLayout3.hyp[123].dn";
connectAttr "RightThumb5JntGDLocShape.msg" "hyperLayout3.hyp[124].dn";
connectAttr "Index1JntGDMultMatrix.msg" "hyperLayout3.hyp[125].dn";
connectAttr "Index1JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[126].dn";
connectAttr "RightIndex1JntGDLoc.msg" "hyperLayout3.hyp[127].dn";
connectAttr "RightIndex1JntGDLocShape.msg" "hyperLayout3.hyp[128].dn";
connectAttr "Index2JntGDMultMatrix.msg" "hyperLayout3.hyp[129].dn";
connectAttr "Index2JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[130].dn";
connectAttr "RightIndex2JntGDLoc.msg" "hyperLayout3.hyp[131].dn";
connectAttr "RightIndex2JntGDLocShape.msg" "hyperLayout3.hyp[132].dn";
connectAttr "Index3JntGDMultMatrix.msg" "hyperLayout3.hyp[133].dn";
connectAttr "Index3JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[134].dn";
connectAttr "RightIndex3JntGDLoc.msg" "hyperLayout3.hyp[135].dn";
connectAttr "RightIndex3JntGDLocShape.msg" "hyperLayout3.hyp[136].dn";
connectAttr "Index4JntGDMultMatrix.msg" "hyperLayout3.hyp[137].dn";
connectAttr "Index4JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[138].dn";
connectAttr "RightIndex4JntGDLoc.msg" "hyperLayout3.hyp[139].dn";
connectAttr "RightIndex4JntGDLocShape.msg" "hyperLayout3.hyp[140].dn";
connectAttr "Index5JntGDMultMatrix.msg" "hyperLayout3.hyp[141].dn";
connectAttr "Index5JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[142].dn";
connectAttr "RightIndex5JntGDLoc.msg" "hyperLayout3.hyp[143].dn";
connectAttr "RightIndex5JntGDLocShape.msg" "hyperLayout3.hyp[144].dn";
connectAttr "Middle1JntGDMultMatrix.msg" "hyperLayout3.hyp[145].dn";
connectAttr "Middle1JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[146].dn";
connectAttr "RightMiddle1JntGDLoc.msg" "hyperLayout3.hyp[147].dn";
connectAttr "RightMiddle1JntGDLocShape.msg" "hyperLayout3.hyp[148].dn";
connectAttr "Middle2JntGDMultMatrix.msg" "hyperLayout3.hyp[149].dn";
connectAttr "Middle2JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[150].dn";
connectAttr "RightMiddle2JntGDLoc.msg" "hyperLayout3.hyp[151].dn";
connectAttr "RightMiddle2JntGDLocShape.msg" "hyperLayout3.hyp[152].dn";
connectAttr "Middle3JntGDMultMatrix.msg" "hyperLayout3.hyp[153].dn";
connectAttr "Middle3JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[154].dn";
connectAttr "RightMiddle3JntGDLoc.msg" "hyperLayout3.hyp[155].dn";
connectAttr "RightMiddle3JntGDLocShape.msg" "hyperLayout3.hyp[156].dn";
connectAttr "Middle4JntGDMultMatrix.msg" "hyperLayout3.hyp[157].dn";
connectAttr "Middle4JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[158].dn";
connectAttr "RightMiddle4JntGDLoc.msg" "hyperLayout3.hyp[159].dn";
connectAttr "RightMiddle4JntGDLocShape.msg" "hyperLayout3.hyp[160].dn";
connectAttr "Middle5JntGDMultMatrix.msg" "hyperLayout3.hyp[161].dn";
connectAttr "Middle5JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[162].dn";
connectAttr "RightMiddle5JntGDLoc.msg" "hyperLayout3.hyp[163].dn";
connectAttr "RightMiddle5JntGDLocShape.msg" "hyperLayout3.hyp[164].dn";
connectAttr "Ring1JntGDMultMatrix.msg" "hyperLayout3.hyp[165].dn";
connectAttr "Ring1JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[166].dn";
connectAttr "RightRing1JntGDLoc.msg" "hyperLayout3.hyp[167].dn";
connectAttr "RightRing1JntGDLocShape.msg" "hyperLayout3.hyp[168].dn";
connectAttr "Ring2JntGDMultMatrix.msg" "hyperLayout3.hyp[169].dn";
connectAttr "Ring2JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[170].dn";
connectAttr "RightRing2JntGDLoc.msg" "hyperLayout3.hyp[171].dn";
connectAttr "RightRing2JntGDLocShape.msg" "hyperLayout3.hyp[172].dn";
connectAttr "Ring3JntGDMultMatrix.msg" "hyperLayout3.hyp[173].dn";
connectAttr "Ring3JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[174].dn";
connectAttr "RightRing3JntGDLoc.msg" "hyperLayout3.hyp[175].dn";
connectAttr "RightRing3JntGDLocShape.msg" "hyperLayout3.hyp[176].dn";
connectAttr "Ring4JntGDMultMatrix.msg" "hyperLayout3.hyp[177].dn";
connectAttr "Ring4JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[178].dn";
connectAttr "RightRing4JntGDLoc.msg" "hyperLayout3.hyp[179].dn";
connectAttr "RightRing4JntGDLocShape.msg" "hyperLayout3.hyp[180].dn";
connectAttr "Ring5JntGDMultMatrix.msg" "hyperLayout3.hyp[181].dn";
connectAttr "Ring5JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[182].dn";
connectAttr "RightRing5JntGDLoc.msg" "hyperLayout3.hyp[183].dn";
connectAttr "RightRing5JntGDLocShape.msg" "hyperLayout3.hyp[184].dn";
connectAttr "Pinky1JntGDMultMatrix.msg" "hyperLayout3.hyp[185].dn";
connectAttr "Pinky1JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[186].dn";
connectAttr "RightPinky1JntGDLoc.msg" "hyperLayout3.hyp[187].dn";
connectAttr "RightPinky1JntGDLocShape.msg" "hyperLayout3.hyp[188].dn";
connectAttr "Pinky2JntGDMultMatrix.msg" "hyperLayout3.hyp[189].dn";
connectAttr "Pinky2JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[190].dn";
connectAttr "RightPinky2JntGDLoc.msg" "hyperLayout3.hyp[191].dn";
connectAttr "RightPinky2JntGDLocShape.msg" "hyperLayout3.hyp[192].dn";
connectAttr "Pinky3JntGDMultMatrix.msg" "hyperLayout3.hyp[193].dn";
connectAttr "Pinky3JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[194].dn";
connectAttr "RightPinky3JntGDLoc.msg" "hyperLayout3.hyp[195].dn";
connectAttr "RightPinky3JntGDLocShape.msg" "hyperLayout3.hyp[196].dn";
connectAttr "Pinky4JntGDMultMatrix.msg" "hyperLayout3.hyp[197].dn";
connectAttr "Pinky4JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[198].dn";
connectAttr "RightPinky4JntGDLoc.msg" "hyperLayout3.hyp[199].dn";
connectAttr "RightPinky4JntGDLocShape.msg" "hyperLayout3.hyp[200].dn";
connectAttr "Pinky5JntGDMultMatrix.msg" "hyperLayout3.hyp[201].dn";
connectAttr "Pinky5JntGDDecomposeMatrix.msg" "hyperLayout3.hyp[202].dn";
connectAttr "RightPinky5JntGDLoc.msg" "hyperLayout3.hyp[203].dn";
connectAttr "RightPinky5JntGDLocShape.msg" "hyperLayout3.hyp[204].dn";
connectAttr "RightClavicleJntGD_parentConstraint1.msg" "hyperLayout3.hyp[205].dn"
		;
connectAttr "RightShoulderJntGD_parentConstraint1.msg" "hyperLayout3.hyp[206].dn"
		;
connectAttr "RightElbowJntGD_parentConstraint1.msg" "hyperLayout3.hyp[207].dn";
connectAttr "RightWristJntGD_parentConstraint1.msg" "hyperLayout3.hyp[208].dn";
connectAttr "RightThumb1JntGD_parentConstraint1.msg" "hyperLayout3.hyp[209].dn";
connectAttr "RightThumb2JntGD_parentConstraint1.msg" "hyperLayout3.hyp[210].dn";
connectAttr "RightThumb3JntGD_parentConstraint1.msg" "hyperLayout3.hyp[211].dn";
connectAttr "RightThumb4JntGD_parentConstraint1.msg" "hyperLayout3.hyp[212].dn";
connectAttr "RightThumb5JntGD_parentConstraint1.msg" "hyperLayout3.hyp[213].dn";
connectAttr "RightIndex1JntGD_parentConstraint1.msg" "hyperLayout3.hyp[214].dn";
connectAttr "RightIndex2JntGD_parentConstraint1.msg" "hyperLayout3.hyp[215].dn";
connectAttr "RightIndex3JntGD_parentConstraint1.msg" "hyperLayout3.hyp[216].dn";
connectAttr "RightIndex4JntGD_parentConstraint1.msg" "hyperLayout3.hyp[217].dn";
connectAttr "RightIndex5JntGD_parentConstraint1.msg" "hyperLayout3.hyp[218].dn";
connectAttr "RightMiddle1JntGD_parentConstraint1.msg" "hyperLayout3.hyp[219].dn"
		;
connectAttr "RightMiddle2JntGD_parentConstraint1.msg" "hyperLayout3.hyp[220].dn"
		;
connectAttr "RightMiddle3JntGD_parentConstraint1.msg" "hyperLayout3.hyp[221].dn"
		;
connectAttr "RightMiddle4JntGD_parentConstraint1.msg" "hyperLayout3.hyp[222].dn"
		;
connectAttr "RightMiddle5JntGD_parentConstraint1.msg" "hyperLayout3.hyp[223].dn"
		;
connectAttr "RightRing1JntGD_parentConstraint1.msg" "hyperLayout3.hyp[224].dn";
connectAttr "RightRing2JntGD_parentConstraint1.msg" "hyperLayout3.hyp[225].dn";
connectAttr "RightRing3JntGD_parentConstraint1.msg" "hyperLayout3.hyp[226].dn";
connectAttr "RightRing4JntGD_parentConstraint1.msg" "hyperLayout3.hyp[227].dn";
connectAttr "RightRing5JntGD_parentConstraint1.msg" "hyperLayout3.hyp[228].dn";
connectAttr "RightPinky1JntGD_parentConstraint1.msg" "hyperLayout3.hyp[229].dn";
connectAttr "RightPinky2JntGD_parentConstraint1.msg" "hyperLayout3.hyp[230].dn";
connectAttr "RightPinky3JntGD_parentConstraint1.msg" "hyperLayout3.hyp[231].dn";
connectAttr "RightPinky4JntGD_parentConstraint1.msg" "hyperLayout3.hyp[232].dn";
connectAttr "RightPinky5JntGD_parentConstraint1.msg" "hyperLayout3.hyp[233].dn";
connectAttr "LeftHipJntGDLoc.msg" "hyperLayout3.hyp[234].dn";
connectAttr "LeftHipJntGDLocShape.msg" "hyperLayout3.hyp[235].dn";
connectAttr "LeftHipJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[236].dn";
connectAttr "LeftKneeJntGDLoc.msg" "hyperLayout3.hyp[237].dn";
connectAttr "LeftKneeJntGDLocShape.msg" "hyperLayout3.hyp[238].dn";
connectAttr "LeftKneeJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[239].dn";
connectAttr "LeftAnkleScaleFixJntGDLoc.msg" "hyperLayout3.hyp[240].dn";
connectAttr "LeftAnkleScaleFixJntGDLocShape.msg" "hyperLayout3.hyp[241].dn";
connectAttr "LeftAnkleScaleFixJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[242].dn"
		;
connectAttr "LeftBallJntGDLoc.msg" "hyperLayout3.hyp[243].dn";
connectAttr "LeftBallJntGDLocShape.msg" "hyperLayout3.hyp[244].dn";
connectAttr "LeftBallJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[245].dn";
connectAttr "LeftFootOutJntGDLoc.msg" "hyperLayout3.hyp[246].dn";
connectAttr "LeftFootOutJntGDLocShape.msg" "hyperLayout3.hyp[247].dn";
connectAttr "LeftFootOutJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[248].dn"
		;
connectAttr "LeftToeJntGDLoc.msg" "hyperLayout3.hyp[249].dn";
connectAttr "LeftToeJntGDLocShape.msg" "hyperLayout3.hyp[250].dn";
connectAttr "LeftToeJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[251].dn";
connectAttr "LeftFootInJntGDLoc.msg" "hyperLayout3.hyp[252].dn";
connectAttr "LeftFootInJntGDLocShape.msg" "hyperLayout3.hyp[253].dn";
connectAttr "LeftFootInJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[254].dn"
		;
connectAttr "LeftHeelJntGDLoc.msg" "hyperLayout3.hyp[255].dn";
connectAttr "LeftHeelJntGDLocShape.msg" "hyperLayout3.hyp[256].dn";
connectAttr "LeftHeelJntGDLoc_parentConstraint1.msg" "hyperLayout3.hyp[257].dn";
connectAttr "HipJntGDMultMatrix.msg" "hyperLayout3.hyp[258].dn";
connectAttr "HipJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[259].dn";
connectAttr "RightHipJntGDLoc.msg" "hyperLayout3.hyp[260].dn";
connectAttr "RightHipJntGDLocShape.msg" "hyperLayout3.hyp[261].dn";
connectAttr "KneeJntGDMultMatrix.msg" "hyperLayout3.hyp[262].dn";
connectAttr "KneeJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[263].dn";
connectAttr "RightKneeJntGDLoc.msg" "hyperLayout3.hyp[264].dn";
connectAttr "RightKneeJntGDLocShape.msg" "hyperLayout3.hyp[265].dn";
connectAttr "AnkleScaleFixJntGDMultMatrix.msg" "hyperLayout3.hyp[266].dn";
connectAttr "AnkleScaleFixJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[267].dn";
connectAttr "RightAnkleScaleFixJntGDLoc.msg" "hyperLayout3.hyp[268].dn";
connectAttr "RightAnkleScaleFixJntGDLocShape.msg" "hyperLayout3.hyp[269].dn";
connectAttr "BallJntGDMultMatrix.msg" "hyperLayout3.hyp[270].dn";
connectAttr "BallJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[271].dn";
connectAttr "RightBallJntGDLoc.msg" "hyperLayout3.hyp[272].dn";
connectAttr "RightBallJntGDLocShape.msg" "hyperLayout3.hyp[273].dn";
connectAttr "FootOutJntGDMultMatrix.msg" "hyperLayout3.hyp[274].dn";
connectAttr "FootOutJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[275].dn";
connectAttr "RightFootOutJntGDLoc.msg" "hyperLayout3.hyp[276].dn";
connectAttr "RightFootOutJntGDLocShape.msg" "hyperLayout3.hyp[277].dn";
connectAttr "ToeJntGDMultMatrix.msg" "hyperLayout3.hyp[278].dn";
connectAttr "ToeJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[279].dn";
connectAttr "RightToeJntGDLoc.msg" "hyperLayout3.hyp[280].dn";
connectAttr "RightToeJntGDLocShape.msg" "hyperLayout3.hyp[281].dn";
connectAttr "FootInJntGDMultMatrix.msg" "hyperLayout3.hyp[282].dn";
connectAttr "FootInJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[283].dn";
connectAttr "RightFootInJntGDLoc.msg" "hyperLayout3.hyp[284].dn";
connectAttr "RightFootInJntGDLocShape.msg" "hyperLayout3.hyp[285].dn";
connectAttr "HeelJntGDMultMatrix.msg" "hyperLayout3.hyp[286].dn";
connectAttr "HeelJntGDDecomposeMatrix.msg" "hyperLayout3.hyp[287].dn";
connectAttr "RightHeelJntGDLoc.msg" "hyperLayout3.hyp[288].dn";
connectAttr "RightHeelJntGDLocShape.msg" "hyperLayout3.hyp[289].dn";
connectAttr "RightAnkleJntGD_orientConstraint1.msg" "hyperLayout3.hyp[290].dn";
connectAttr "RightAnkleJntGD_pointConstraint1.msg" "hyperLayout3.hyp[291].dn";
connectAttr "RightHipJntGD_parentConstraint1.msg" "hyperLayout3.hyp[292].dn";
connectAttr "RightKneeJntGD_parentConstraint1.msg" "hyperLayout3.hyp[293].dn";
connectAttr "RightAnkleScaleFixJntGD_parentConstraint1.msg" "hyperLayout3.hyp[294].dn"
		;
connectAttr "RightFootOutJntGD_parentConstraint1.msg" "hyperLayout3.hyp[295].dn"
		;
connectAttr "RightToeJntGD_parentConstraint1.msg" "hyperLayout3.hyp[296].dn";
connectAttr "RightFootInJntGD_parentConstraint1.msg" "hyperLayout3.hyp[297].dn";
connectAttr "RightHeelJntGD_parentConstraint1.msg" "hyperLayout3.hyp[298].dn";
connectAttr "conGrp.msg" "hyperLayout3.hyp[299].dn";
connectAttr "conGrp_parentConstraint1.msg" "hyperLayout3.hyp[300].dn";
connectAttr "MirrorLocGrp.msg" "hyperLayout3.hyp[301].dn";
connectAttr "nurbsPlane1.msg" "hyperLayout3.hyp[302].dn";
connectAttr "nurbsPlaneShape1.msg" "hyperLayout3.hyp[303].dn";
connectAttr "nurbsPlane2.msg" "hyperLayout3.hyp[304].dn";
connectAttr "nurbsPlaneShape2.msg" "hyperLayout3.hyp[305].dn";
connectAttr "nurbsPlane3.msg" "hyperLayout3.hyp[306].dn";
connectAttr "nurbsPlaneShape3.msg" "hyperLayout3.hyp[307].dn";
connectAttr "nurbsPlane4.msg" "hyperLayout3.hyp[308].dn";
connectAttr "nurbsPlaneShape4.msg" "hyperLayout3.hyp[309].dn";
connectAttr "nurbsPlane5.msg" "hyperLayout3.hyp[310].dn";
connectAttr "nurbsPlaneShape5.msg" "hyperLayout3.hyp[311].dn";
connectAttr "nurbsPlane1_parentConstraint1.msg" "hyperLayout3.hyp[312].dn";
connectAttr "nurbsPlane2_parentConstraint1.msg" "hyperLayout3.hyp[313].dn";
connectAttr "nurbsPlane3_parentConstraint1.msg" "hyperLayout3.hyp[314].dn";
connectAttr "nurbsPlane4_parentConstraint1.msg" "hyperLayout3.hyp[315].dn";
connectAttr "nurbsPlane5_parentConstraint1.msg" "hyperLayout3.hyp[316].dn";
connectAttr "nurbsPlane1_scaleConstraint1.msg" "hyperLayout3.hyp[317].dn";
connectAttr "nurbsPlane2_scaleConstraint1.msg" "hyperLayout3.hyp[318].dn";
connectAttr "nurbsPlane3_scaleConstraint1.msg" "hyperLayout3.hyp[319].dn";
connectAttr "nurbsPlane4_scaleConstraint1.msg" "hyperLayout3.hyp[320].dn";
connectAttr "nurbsPlane5_scaleConstraint1.msg" "hyperLayout3.hyp[321].dn";
connectAttr "lambert2.msg" "hyperLayout3.hyp[322].dn";
connectAttr "lambert2SG.msg" "hyperLayout3.hyp[323].dn";
connectAttr "FingerUpHelper.msg" "hyperLayout3.hyp[324].dn";
connectAttr "hyperView4.msg" "nodeEditorPanel4Info.b[0]";
connectAttr "hyperLayout4.msg" "hyperView4.hl";
connectAttr "LeftClavicleJntGDLoc.msg" "hyperLayout4.hyp[0].dn";
connectAttr "RightClavicleJntGDLocShape.msg" "hyperLayout4.hyp[1].dn";
connectAttr "ClavicleJntGDMultMatrix.msg" "hyperLayout4.hyp[2].dn";
connectAttr "ClavicleJntGDDecomposeMatrix.msg" "hyperLayout4.hyp[3].dn";
connectAttr "RightClavicleJntGDLoc.msg" "hyperLayout4.hyp[4].dn";
connectAttr "MirrorMatrix.msg" "hyperLayout4.hyp[5].dn";
connectAttr "RightClavicleJntGD_parentConstraint1.msg" "hyperLayout4.hyp[6].dn";
connectAttr "RightShoulderJntGD_parentConstraint1.msg" "hyperLayout4.hyp[7].dn";
connectAttr "RightElbowJntGD_parentConstraint1.msg" "hyperLayout4.hyp[8].dn";
connectAttr "RightWristJntGD_parentConstraint1.msg" "hyperLayout4.hyp[9].dn";
connectAttr "RightThumb1JntGD_parentConstraint1.msg" "hyperLayout4.hyp[10].dn";
connectAttr "RightThumb2JntGD_parentConstraint1.msg" "hyperLayout4.hyp[11].dn";
connectAttr "RightThumb3JntGD_parentConstraint1.msg" "hyperLayout4.hyp[12].dn";
connectAttr "RightThumb4JntGD_parentConstraint1.msg" "hyperLayout4.hyp[13].dn";
connectAttr "RightThumb5JntGD_parentConstraint1.msg" "hyperLayout4.hyp[14].dn";
connectAttr "RightIndex1JntGD_parentConstraint1.msg" "hyperLayout4.hyp[15].dn";
connectAttr "RightIndex2JntGD_parentConstraint1.msg" "hyperLayout4.hyp[16].dn";
connectAttr "RightIndex3JntGD_parentConstraint1.msg" "hyperLayout4.hyp[17].dn";
connectAttr "RightIndex4JntGD_parentConstraint1.msg" "hyperLayout4.hyp[18].dn";
connectAttr "RightIndex5JntGD_parentConstraint1.msg" "hyperLayout4.hyp[19].dn";
connectAttr "RightMiddle1JntGD_parentConstraint1.msg" "hyperLayout4.hyp[20].dn";
connectAttr "RightMiddle2JntGD_parentConstraint1.msg" "hyperLayout4.hyp[21].dn";
connectAttr "RightMiddle3JntGD_parentConstraint1.msg" "hyperLayout4.hyp[22].dn";
connectAttr "RightMiddle4JntGD_parentConstraint1.msg" "hyperLayout4.hyp[23].dn";
connectAttr "RightMiddle5JntGD_parentConstraint1.msg" "hyperLayout4.hyp[24].dn";
connectAttr "RightRing1JntGD_parentConstraint1.msg" "hyperLayout4.hyp[25].dn";
connectAttr "RightRing2JntGD_parentConstraint1.msg" "hyperLayout4.hyp[26].dn";
connectAttr "RightRing3JntGD_parentConstraint1.msg" "hyperLayout4.hyp[27].dn";
connectAttr "RightRing4JntGD_parentConstraint1.msg" "hyperLayout4.hyp[28].dn";
connectAttr "RightRing5JntGD_parentConstraint1.msg" "hyperLayout4.hyp[29].dn";
connectAttr "RightPinky1JntGD_parentConstraint1.msg" "hyperLayout4.hyp[30].dn";
connectAttr "RightPinky2JntGD_parentConstraint1.msg" "hyperLayout4.hyp[31].dn";
connectAttr "RightPinky3JntGD_parentConstraint1.msg" "hyperLayout4.hyp[32].dn";
connectAttr "RightPinky4JntGD_parentConstraint1.msg" "hyperLayout4.hyp[33].dn";
connectAttr "RightPinky5JntGD_parentConstraint1.msg" "hyperLayout4.hyp[34].dn";
connectAttr "LeftClavicleJntGDLoc.wm" "ClavicleJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "ClavicleJntGDMultMatrix.i[1]";
connectAttr "ClavicleJntGDMultMatrix.o" "ClavicleJntGDDecomposeMatrix.imat";
connectAttr "LeftShoulderJntGDLoc.wm" "ShoulderJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "ShoulderJntGDMultMatrix.i[1]";
connectAttr "ShoulderJntGDMultMatrix.o" "ShoulderJntGDDecomposeMatrix.imat";
connectAttr "LeftElbowJntGDLoc.wm" "ElbowJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "ElbowJntGDMultMatrix.i[1]";
connectAttr "ElbowJntGDMultMatrix.o" "ElbowJntGDDecomposeMatrix.imat";
connectAttr "LeftWristJntGDLoc.wm" "WristJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "WristJntGDMultMatrix.i[1]";
connectAttr "WristJntGDMultMatrix.o" "WristJntGDDecomposeMatrix.imat";
connectAttr "LeftThumb1JntGDLoc.wm" "Thumb1JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Thumb1JntGDMultMatrix.i[1]";
connectAttr "Thumb1JntGDMultMatrix.o" "Thumb1JntGDDecomposeMatrix.imat";
connectAttr "LeftThumb2JntGDLoc.wm" "Thumb2JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Thumb2JntGDMultMatrix.i[1]";
connectAttr "Thumb2JntGDMultMatrix.o" "Thumb2JntGDDecomposeMatrix.imat";
connectAttr "LeftThumb3JntGDLoc.wm" "Thumb3JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Thumb3JntGDMultMatrix.i[1]";
connectAttr "Thumb3JntGDMultMatrix.o" "Thumb3JntGDDecomposeMatrix.imat";
connectAttr "LeftThumb4JntGDLoc.wm" "Thumb4JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Thumb4JntGDMultMatrix.i[1]";
connectAttr "Thumb4JntGDMultMatrix.o" "Thumb4JntGDDecomposeMatrix.imat";
connectAttr "LeftThumb5JntGDLoc.wm" "Thumb5JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Thumb5JntGDMultMatrix.i[1]";
connectAttr "Thumb5JntGDMultMatrix.o" "Thumb5JntGDDecomposeMatrix.imat";
connectAttr "LeftIndex1JntGDLoc.wm" "Index1JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Index1JntGDMultMatrix.i[1]";
connectAttr "Index1JntGDMultMatrix.o" "Index1JntGDDecomposeMatrix.imat";
connectAttr "LeftIndex2JntGDLoc.wm" "Index2JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Index2JntGDMultMatrix.i[1]";
connectAttr "Index2JntGDMultMatrix.o" "Index2JntGDDecomposeMatrix.imat";
connectAttr "LeftIndex3JntGDLoc.wm" "Index3JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Index3JntGDMultMatrix.i[1]";
connectAttr "Index3JntGDMultMatrix.o" "Index3JntGDDecomposeMatrix.imat";
connectAttr "LeftIndex4JntGDLoc.wm" "Index4JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Index4JntGDMultMatrix.i[1]";
connectAttr "Index4JntGDMultMatrix.o" "Index4JntGDDecomposeMatrix.imat";
connectAttr "LeftIndex5JntGDLoc.wm" "Index5JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Index5JntGDMultMatrix.i[1]";
connectAttr "Index5JntGDMultMatrix.o" "Index5JntGDDecomposeMatrix.imat";
connectAttr "LeftMiddle1JntGDLoc.wm" "Middle1JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Middle1JntGDMultMatrix.i[1]";
connectAttr "Middle1JntGDMultMatrix.o" "Middle1JntGDDecomposeMatrix.imat";
connectAttr "LeftMiddle2JntGDLoc.wm" "Middle2JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Middle2JntGDMultMatrix.i[1]";
connectAttr "Middle2JntGDMultMatrix.o" "Middle2JntGDDecomposeMatrix.imat";
connectAttr "LeftMiddle3JntGDLoc.wm" "Middle3JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Middle3JntGDMultMatrix.i[1]";
connectAttr "Middle3JntGDMultMatrix.o" "Middle3JntGDDecomposeMatrix.imat";
connectAttr "LeftMiddle4JntGDLoc.wm" "Middle4JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Middle4JntGDMultMatrix.i[1]";
connectAttr "Middle4JntGDMultMatrix.o" "Middle4JntGDDecomposeMatrix.imat";
connectAttr "LeftMiddle5JntGDLoc.wm" "Middle5JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Middle5JntGDMultMatrix.i[1]";
connectAttr "Middle5JntGDMultMatrix.o" "Middle5JntGDDecomposeMatrix.imat";
connectAttr "LeftRing1JntGDLoc.wm" "Ring1JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Ring1JntGDMultMatrix.i[1]";
connectAttr "Ring1JntGDMultMatrix.o" "Ring1JntGDDecomposeMatrix.imat";
connectAttr "LeftRing2JntGDLoc.wm" "Ring2JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Ring2JntGDMultMatrix.i[1]";
connectAttr "Ring2JntGDMultMatrix.o" "Ring2JntGDDecomposeMatrix.imat";
connectAttr "LeftRing3JntGDLoc.wm" "Ring3JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Ring3JntGDMultMatrix.i[1]";
connectAttr "Ring3JntGDMultMatrix.o" "Ring3JntGDDecomposeMatrix.imat";
connectAttr "LeftRing4JntGDLoc.wm" "Ring4JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Ring4JntGDMultMatrix.i[1]";
connectAttr "Ring4JntGDMultMatrix.o" "Ring4JntGDDecomposeMatrix.imat";
connectAttr "LeftRing5JntGDLoc.wm" "Ring5JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Ring5JntGDMultMatrix.i[1]";
connectAttr "Ring5JntGDMultMatrix.o" "Ring5JntGDDecomposeMatrix.imat";
connectAttr "LeftPinky1JntGDLoc.wm" "Pinky1JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Pinky1JntGDMultMatrix.i[1]";
connectAttr "Pinky1JntGDMultMatrix.o" "Pinky1JntGDDecomposeMatrix.imat";
connectAttr "LeftPinky2JntGDLoc.wm" "Pinky2JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Pinky2JntGDMultMatrix.i[1]";
connectAttr "Pinky2JntGDMultMatrix.o" "Pinky2JntGDDecomposeMatrix.imat";
connectAttr "LeftPinky3JntGDLoc.wm" "Pinky3JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Pinky3JntGDMultMatrix.i[1]";
connectAttr "Pinky3JntGDMultMatrix.o" "Pinky3JntGDDecomposeMatrix.imat";
connectAttr "LeftPinky4JntGDLoc.wm" "Pinky4JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Pinky4JntGDMultMatrix.i[1]";
connectAttr "Pinky4JntGDMultMatrix.o" "Pinky4JntGDDecomposeMatrix.imat";
connectAttr "LeftPinky5JntGDLoc.wm" "Pinky5JntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "Pinky5JntGDMultMatrix.i[1]";
connectAttr "Pinky5JntGDMultMatrix.o" "Pinky5JntGDDecomposeMatrix.imat";
connectAttr "LeftHipJntGDLoc.wm" "HipJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "HipJntGDMultMatrix.i[1]";
connectAttr "HipJntGDMultMatrix.o" "HipJntGDDecomposeMatrix.imat";
connectAttr "LeftKneeJntGDLoc.wm" "KneeJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "KneeJntGDMultMatrix.i[1]";
connectAttr "KneeJntGDMultMatrix.o" "KneeJntGDDecomposeMatrix.imat";
connectAttr "LeftAnkleScaleFixJntGDLoc.wm" "AnkleScaleFixJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "AnkleScaleFixJntGDMultMatrix.i[1]";
connectAttr "AnkleScaleFixJntGDMultMatrix.o" "AnkleScaleFixJntGDDecomposeMatrix.imat"
		;
connectAttr "LeftBallJntGDLoc.wm" "BallJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "BallJntGDMultMatrix.i[1]";
connectAttr "BallJntGDMultMatrix.o" "BallJntGDDecomposeMatrix.imat";
connectAttr "LeftFootOutJntGDLoc.wm" "FootOutJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "FootOutJntGDMultMatrix.i[1]";
connectAttr "FootOutJntGDMultMatrix.o" "FootOutJntGDDecomposeMatrix.imat";
connectAttr "LeftToeJntGDLoc.wm" "ToeJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "ToeJntGDMultMatrix.i[1]";
connectAttr "ToeJntGDMultMatrix.o" "ToeJntGDDecomposeMatrix.imat";
connectAttr "LeftFootInJntGDLoc.wm" "FootInJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "FootInJntGDMultMatrix.i[1]";
connectAttr "FootInJntGDMultMatrix.o" "FootInJntGDDecomposeMatrix.imat";
connectAttr "LeftHeelJntGDLoc.wm" "HeelJntGDMultMatrix.i[0]";
connectAttr "MirrorMatrix.o" "HeelJntGDMultMatrix.i[1]";
connectAttr "HeelJntGDMultMatrix.o" "HeelJntGDDecomposeMatrix.imat";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "nurbsPlaneShape5.iog" "lambert2SG.dsm" -na;
connectAttr "nurbsPlaneShape4.iog" "lambert2SG.dsm" -na;
connectAttr "nurbsPlaneShape3.iog" "lambert2SG.dsm" -na;
connectAttr "nurbsPlaneShape2.iog" "lambert2SG.dsm" -na;
connectAttr "nurbsPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "HeadEndJntGDSphereShape.iog" "lambert2SG.dsm" -na;
connectAttr "LeftEyeJntGDSphereShape.iog" "lambert2SG.dsm" -na;
connectAttr "Neck1JntGDSphereShape.iog" "lambert2SG.dsm" -na;
connectAttr "Spine4JntGDSphereShape.iog" "lambert2SG.dsm" -na;
connectAttr "Spine3JntGDSphereShape.iog" "lambert2SG.dsm" -na;
connectAttr "Spine2JntGDSphereShape.iog" "lambert2SG.dsm" -na;
connectAttr "Spine1JntGDSphereShape.iog" "lambert2SG.dsm" -na;
connectAttr "RootJntGDSphereShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "HeadJntGDSphereShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "setRange1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "plusMinusAverage1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "MirrorHipTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "MirrorKneeTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "MirrorAnkelTX.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseMirrorMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "NoseDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "MirrorMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ClavicleJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ClavicleJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ShoulderJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ShoulderJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ElbowJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ElbowJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "WristJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "WristJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb1JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb1JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb2JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb2JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb3JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb3JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb4JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb4JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb5JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Thumb5JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index1JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index1JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index2JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index2JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index3JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index3JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index4JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index4JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index5JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Index5JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Middle1JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Middle1JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Middle2JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Middle2JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Middle3JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Middle3JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Middle4JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Middle4JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Middle5JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Middle5JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "Ring1JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring1JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring2JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring2JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring3JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring3JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring4JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring4JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring5JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Ring5JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky1JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky1JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky2JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky2JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky3JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky3JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky4JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky4JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky5JntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Pinky5JntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "HipJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "HipJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "KneeJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "KneeJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "AnkleScaleFixJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "AnkleScaleFixJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "BallJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "BallJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FootOutJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FootOutJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ToeJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ToeJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FootInJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "FootInJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "HeelJntGDMultMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "HeelJntGDDecomposeMatrix.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of KGM_JntGD.ma
