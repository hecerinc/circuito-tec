//
//  Globals.swift
//  circuito
//
//  Created by Hector Rincon on 11/3/16.
//  Copyright © 2016 Hector Rincon. All rights reserved.
//

import Foundation
class Globals {
    static let _rutas = ["Ruta Garza Sada", "Ruta Hospitales"]
    static let resource_gps_url = "http://ws.locatel.es/servicios/vehiculos/vehiculos.asmx/ListaVehiculos?usuario=tec1&password=tec1" // kml url
    static let mapCoords : [(Double, Double)] = [(-100.290891,25.652429), (-100.290921,25.652485), (-100.290999,25.65257), (-100.291077,25.652561), (-100.292126,25.651756), (-100.29223,25.65171), (-100.292395,25.651733), (-100.292483,25.651832), (-100.293156,25.65292), (-100.293771,25.653903), (-100.293832,25.654083), (-100.293952,25.654211), (-100.294744,25.655527), (-100.295318,25.656401), (-100.295879,25.657261), (-100.296366,25.658026), (-100.296604,25.658424), (-100.296671,25.658601), (-100.296763,25.658938), (-100.296919,25.659515), (-100.297001,25.659846), (-100.297021,25.660041), (-100.297027,25.660195), (-100.297089,25.660467), (-100.297086,25.660709), (-100.297104,25.661284), (-100.297114,25.662642), (-100.297132,25.663352), (-100.29714,25.664696), (-100.29716,25.665411), (-100.297149,25.665892), (-100.297196,25.666116), (-100.297284,25.666305), (-100.297653,25.66706), (-100.298224,25.66817), (-100.298606,25.668889), (-100.298689,25.669113), (-100.298713,25.66932), (-100.298693,25.669507), (-100.298604,25.669893), (-100.298443,25.670986), (-100.298375,25.671424), (-100.298325,25.671891), (-100.298361,25.672001), (-100.298481,25.672053), (-100.29859,25.672015), (-100.2987,25.671746), (-100.298738,25.671017), (-100.298817,25.67045), (-100.298913,25.669879), (-100.298913,25.669475), (-100.298888,25.669229), (-100.298627,25.668674), (-100.297747,25.666966), (-100.297531,25.666442), (-100.297489,25.666188), (-100.297493,25.665886), (-100.297455,25.665541), (-100.297447,25.665101), (-100.297405,25.664355), (-100.29739,25.662672), (-100.29736,25.660905), (-100.297364,25.660317), (-100.297369,25.65989), (-100.2974,25.659562), (-100.297362,25.659336), (-100.297258,25.659047), (-100.29702,25.658601), (-100.296465,25.657689), (-100.296043,25.657016), (-100.295549,25.656178), (-100.295216,25.655692), (-100.294979,25.655306), (-100.294682,25.654835), (-100.294504,25.654566), (-100.293836,25.653462), (-100.293261,25.652524), (-100.292841,25.651832), (-100.292688,25.651602), (-100.2927,25.651493), (-100.29265,25.651308), (-100.292459,25.651197), (-100.292303,25.651008), (-100.291385,25.64955), (-100.290791,25.648572), (-100.290366,25.64788), (-100.290214,25.647693), (-100.289837,25.647075), (-100.289376,25.646366), (-100.289119,25.646012), (-100.288847,25.645591), (-100.288418,25.644901), (-100.288084,25.644381), (-100.287812,25.643947), (-100.287377,25.64325), (-100.286983,25.642643), (-100.286218,25.641346), (-100.285823,25.640756), (-100.28534,25.639947), (-100.285044,25.639467), (-100.284627,25.638828), (-100.284006,25.63785), (-100.283411,25.636886), (-100.282901,25.636061), (-100.282574,25.635567), (-100.281936,25.63452), (-100.281273,25.633486), (-100.280677,25.632542), (-100.280293,25.631946), (-100.280054,25.631576), (-100.279723,25.631042), (-100.278948,25.629814), (-100.278587,25.629224), (-100.278204,25.628614), (-100.277941,25.628212), (-100.277632,25.627706), (-100.277342,25.627176), (-100.277159,25.626876), (-100.27677,25.626302), (-100.27644,25.625786), (-100.276357,25.625558), (-100.276189,25.625271), (-100.27564,25.624396), (-100.275394,25.624066), (-100.275278,25.624001), (-100.275179,25.623936), (-100.275036,25.623793), (-100.274763,25.623488), (-100.274108,25.622869), (-100.273596,25.622496), (-100.273011,25.622117), (-100.271814,25.621163), (-100.271605,25.620987), (-100.271428,25.62077), (-100.271304,25.620602), (-100.271192,25.620339), (-100.271106,25.620132), (-100.271052,25.619913), (-100.271001,25.619522), (-100.270992,25.619204), (-100.271032,25.618302), (-100.271122,25.617462), (-100.271165,25.616843), (-100.271215,25.616711), (-100.271266,25.616434), (-100.271271,25.616002), (-100.271269,25.615696), (-100.271224,25.615465), (-100.271223,25.615305), (-100.271232,25.614636), (-100.271315,25.614283), (-100.271589,25.614148), (-100.272029,25.614111), (-100.272723,25.614096), (-100.27314,25.614091), (-100.273579,25.614145), (-100.273874,25.614236), (-100.274244,25.614401), (-100.275075,25.614912), (-100.275669,25.615312), (-100.276064,25.615567), (-100.276101,25.615636), (-100.27608,25.615711), (-100.275966,25.615902), (-100.275808,25.616105), (-100.275661,25.616308), (-100.275345,25.616729), (-100.275253,25.616851), (-100.275228,25.616904), (-100.275238,25.61696), (-100.275829,25.617351), (-100.276337,25.61767), (-100.276658,25.617871), (-100.27696,25.618062), (-100.277792,25.618592), (-100.277866,25.618605), (-100.277929,25.618563), (-100.278214,25.618217), (-100.27851,25.617831), (-100.278803,25.617421), (-100.278836,25.617388), (-100.278894,25.617389), (-100.279017,25.61746), (-100.279524,25.617794), (-100.280303,25.618294), (-100.28078,25.618617), (-100.2814,25.619013), (-100.282148,25.619487), (-100.282486,25.619694), (-100.283258,25.620158), (-100.283672,25.620467), (-100.283979,25.62065), (-100.284441,25.620894), (-100.284938,25.621154), (-100.285024,25.621135), (-100.285109,25.621095), (-100.285197,25.621024), (-100.285246,25.620927), (-100.285255,25.620817), (-100.285168,25.620706), (-100.284929,25.620526), (-100.284279,25.620101), (-100.284009,25.619903), (-100.283678,25.619688), (-100.283194,25.619385), (-100.282847,25.619173), (-100.282374,25.618874), (-100.281875,25.618547), (-100.28096,25.617966), (-100.28061,25.617749), (-100.280071,25.617396), (-100.279422,25.616987), (-100.27873,25.616544), (-100.278162,25.616179), (-100.27753,25.615777), (-100.277188,25.615562), (-100.276927,25.615399), (-100.276514,25.615133), (-100.27608,25.614854), (-100.275763,25.614655), (-100.275452,25.614506), (-100.27526,25.614366), (-100.274993,25.614168), (-100.274622,25.613955), (-100.274104,25.613832), (-100.273941,25.613805), (-100.273441,25.613782), (-100.272737,25.613781), (-100.272396,25.61378), (-100.271784,25.613801), (-100.271498,25.613793), (-100.27138,25.613684), (-100.271338,25.613475), (-100.271304,25.612992), (-100.271289,25.612662), (-100.271257,25.612108), (-100.271206,25.611778), (-100.271139,25.611373), (-100.270946,25.610671), (-100.27082,25.610224), (-100.270621,25.609627), (-100.270309,25.608895), (-100.269818,25.607939), (-100.269387,25.607096), (-100.269107,25.606538), (-100.268856,25.606195), (-100.268373,25.605264), (-100.268155,25.604947), (-100.267966,25.604626), (-100.267872,25.604519), (-100.267672,25.604537), (-100.267534,25.604605), (-100.267496,25.604754), (-100.267602,25.604953), (-100.268144,25.605958), (-100.268709,25.606915), (-100.269017,25.607416), (-100.26915,25.607667), (-100.269448,25.608218), (-100.269621,25.608564), (-100.269703,25.608711), (-100.269904,25.609097), (-100.270037,25.609326), (-100.27028,25.609864), (-100.270403,25.61013), (-100.27055,25.610504), (-100.270711,25.61108), (-100.270886,25.611644), (-100.270954,25.611955), (-100.271009,25.612411), (-100.271027,25.612905), (-100.270961,25.615377), (-100.270903,25.616502), (-100.270919,25.616747), (-100.270921,25.616984), (-100.270909,25.617379), (-100.270865,25.618138), (-100.270828,25.618476), (-100.270812,25.619229), (-100.270821,25.619469), (-100.270889,25.62002), (-100.271048,25.620457), (-100.271221,25.620792), (-100.271517,25.621154), (-100.271915,25.621474), (-100.272542,25.621967), (-100.27293,25.622254), (-100.273564,25.622723), (-100.274083,25.623172), (-100.274489,25.623558), (-100.274883,25.623989), (-100.275372,25.624609), (-100.275569,25.624895), (-100.275738,25.625228), (-100.276056,25.625728), (-100.276319,25.626185), (-100.276544,25.626522), (-100.27681,25.626949), (-100.277023,25.627293), (-100.277417,25.627881), (-100.277789,25.62848), (-100.278082,25.628909), (-100.278221,25.629174), (-100.278623,25.629821), (-100.278815,25.630126), (-100.279094,25.630568), (-100.279123,25.630706), (-100.279239,25.630802), (-100.279381,25.631017), (-100.27973,25.631552), (-100.2801,25.632152), (-100.280543,25.632851), (-100.280739,25.633216), (-100.280849,25.633337), (-100.28114,25.633805), (-100.281273,25.634061), (-100.281394,25.634294), (-100.281559,25.634491), (-100.28206,25.635281), (-100.282315,25.635738), (-100.282601,25.636155), (-100.282867,25.636569), (-100.283207,25.637113), (-100.283559,25.637702), (-100.283672,25.637873), (-100.283801,25.638099), (-100.283856,25.638248), (-100.283961,25.638343), (-100.284111,25.63859), (-100.284378,25.63902), (-100.284647,25.639452), (-100.284904,25.639862), (-100.284943,25.639953), (-100.28501,25.640018), (-100.285046,25.640075), (-100.285264,25.640425), (-100.285423,25.640649), (-100.285821,25.641284), (-100.285995,25.641546), (-100.286685,25.642667), (-100.287112,25.643298), (-100.287335,25.643665), (-100.28756,25.644014), (-100.287862,25.64449), (-100.288067,25.644828), (-100.288213,25.645038), (-100.288559,25.645605), (-100.289079,25.646435), (-100.289404,25.647003), (-100.289962,25.647843), (-100.290622,25.648886), (-100.290604,25.648955), (-100.290485,25.649028), (-100.290454,25.649117), (-100.290487,25.649153), (-100.290559,25.649128), (-100.290559,25.649062), (-100.290673,25.649037), (-100.290729,25.649061), (-100.291356,25.650048), (-100.291869,25.650875), (-100.292045,25.651153), (-100.292092,25.651239), (-100.292095,25.651359), (-100.292095,25.651555), (-100.292065,25.65168), (-100.291979,25.651793), (-100.291555,25.65211), (-100.291108,25.65247), (-100.291044,25.652472), (-100.291,25.652429), (-100.290934,25.652407), (-100.290891,25.652429)]
    static let rutaHosp :[(Double, Double)] =  [(-100.290919,25.652418), (-100.29095,25.652501), (-100.290993,25.652563), (-100.290982,25.652619), (-100.290846,25.652732), (-100.289855,25.653536), (-100.289839,25.653576), (-100.289855,25.65363), (-100.290872,25.654556), (-100.291464,25.655068), (-100.291693,25.655225), (-100.292993,25.656394), (-100.29514,25.658217), (-100.296251,25.659139), (-100.296949,25.65974), (-100.297036,25.659907), (-100.297098,25.66006), (-100.297146,25.660566), (-100.297187,25.661335), (-100.297213,25.662357), (-100.297212,25.662739), (-100.297201,25.664786), (-100.297214,25.665709), (-100.297299,25.666254), (-100.29747,25.666666), (-100.297702,25.66716), (-100.298397,25.668492), (-100.298393,25.668592), (-100.298307,25.668679), (-100.298086,25.668732), (-100.297612,25.668733), (-100.297472,25.668778), (-100.297403,25.668878), (-100.297422,25.669012), (-100.2975,25.669085), (-100.29761,25.66908), (-100.298333,25.668798), (-100.299627,25.668183), (-100.300427,25.667738), (-100.301525,25.667182), (-100.302419,25.666749), (-100.303122,25.666414), (-100.30377,25.666019), (-100.304427,25.665527), (-100.304947,25.665048), (-100.30519,25.664872), (-100.305702,25.664547), (-100.306358,25.664178), (-100.306758,25.664016), (-100.307193,25.663841), (-100.308101,25.663638), (-100.309253,25.663535), (-100.309795,25.663569), (-100.310175,25.66369), (-100.310368,25.663876), (-100.310456,25.664129), (-100.310386,25.664592), (-100.310288,25.665046), (-100.310107,25.665915), (-100.309997,25.666505), (-100.309804,25.667529), (-100.309815,25.66766), (-100.309955,25.667748), (-100.310101,25.66777), (-100.310361,25.667788), (-100.310679,25.667795), (-100.310707,25.667742), (-100.31099,25.666418), (-100.31123,25.665131), (-100.311404,25.664386), (-100.311474,25.664159), (-100.311572,25.664105), (-100.311761,25.664068), (-100.311973,25.66408), (-100.313896,25.664411), (-100.315119,25.664614), (-100.315317,25.664624), (-100.315985,25.664658), (-100.317062,25.66483), (-100.31819,25.665033), (-100.319245,25.665384), (-100.319524,25.665456), (-100.320442,25.665604), (-100.321797,25.665756), (-100.322586,25.665849), (-100.324249,25.666106), (-100.326968,25.666575), (-100.32845,25.666838), (-100.330721,25.667219), (-100.332984,25.667627), (-100.334666,25.667966), (-100.335544,25.668117), (-100.338001,25.668527), (-100.340239,25.669004), (-100.342866,25.669683), (-100.343967,25.669999), (-100.345921,25.670601), (-100.347205,25.670952), (-100.349999,25.671749), (-100.351464,25.672202), (-100.351767,25.672315), (-100.351981,25.672391), (-100.352128,25.672394), (-100.352312,25.672356), (-100.352536,25.672235), (-100.352637,25.67204), (-100.352797,25.671561), (-100.35281,25.671298), (-100.352785,25.671082), (-100.352726,25.670886), (-100.352561,25.670632), (-100.352338,25.670453), (-100.352105,25.670278), (-100.351783,25.670135), (-100.351348,25.67003), (-100.350537,25.669776), (-100.350481,25.669713), (-100.350479,25.669585), (-100.35055,25.668829), (-100.35063,25.668416), (-100.350613,25.668058), (-100.350808,25.666191), (-100.350816,25.666119), (-100.350721,25.666055), (-100.349177,25.66547), (-100.348664,25.665297), (-100.348324,25.665241), (-100.347751,25.665221), (-100.346942,25.665169), (-100.34658,25.665133), (-100.346172,25.665102), (-100.346129,25.665052), (-100.346122,25.664957), (-100.346202,25.664782), (-100.346283,25.664696), (-100.346437,25.664564), (-100.346587,25.664511), (-100.346914,25.664491), (-100.347603,25.664561), (-100.348091,25.664664), (-100.348535,25.66482), (-100.348927,25.664906), (-100.349374,25.664912), (-100.349955,25.664929), (-100.350267,25.664907), (-100.350728,25.664812), (-100.351107,25.664712), (-100.351237,25.664644), (-100.351377,25.664534), (-100.351462,25.664434), (-100.351533,25.664302), (-100.351626,25.664099), (-100.351758,25.663942), (-100.351903,25.663819), (-100.352128,25.663676), (-100.352489,25.663548), (-100.353009,25.663524), (-100.353577,25.663542), (-100.353898,25.663552), (-100.354151,25.6635), (-100.354392,25.663417), (-100.354571,25.663322), (-100.354756,25.663128), (-100.354823,25.663011), (-100.354874,25.662821), (-100.354877,25.662652), (-100.354791,25.662453), (-100.354708,25.662326), (-100.354557,25.662233), (-100.354308,25.662165), (-100.353541,25.662203), (-100.353206,25.662233), (-100.352705,25.662191), (-100.352194,25.662063), (-100.351649,25.661887), (-100.350532,25.661456), (-100.34953,25.661079), (-100.347347,25.660249), (-100.346853,25.660069), (-100.3454,25.659528), (-100.344931,25.659345), (-100.344634,25.659205), (-100.344319,25.659014), (-100.344015,25.658756), (-100.343539,25.658378), (-100.342813,25.657801), (-100.341965,25.657133), (-100.340871,25.656288), (-100.339667,25.655322), (-100.339279,25.655038), (-100.338171,25.654143), (-100.337347,25.653523), (-100.336988,25.653219), (-100.336713,25.653029), (-100.336465,25.652892), (-100.336095,25.6527), (-100.335041,25.652107), (-100.334359,25.651734), (-100.33283,25.650889), (-100.332273,25.650546), (-100.330513,25.649472), (-100.329927,25.649137), (-100.32924,25.648726), (-100.328987,25.648542), (-100.328821,25.648381), (-100.328753,25.648248), (-100.328738,25.648101), (-100.328748,25.647965), (-100.329028,25.647594), (-100.329376,25.647158), (-100.329509,25.647071), (-100.329669,25.647028), (-100.329883,25.647038), (-100.330662,25.647372), (-100.331341,25.647644), (-100.331699,25.647785), (-100.332019,25.647842), (-100.332359,25.647816), (-100.332681,25.647735), (-100.332842,25.647674), (-100.333074,25.647686), (-100.333229,25.647733), (-100.333544,25.647835), (-100.333869,25.648031), (-100.334251,25.648261), (-100.334331,25.648278), (-100.33439,25.648231), (-100.334386,25.648161), (-100.334177,25.647999), (-100.333894,25.647768), (-100.333635,25.64754), (-100.333069,25.646895), (-100.332858,25.646742), (-100.332782,25.646601), (-100.332725,25.646063), (-100.332724,25.645615), (-100.332823,25.645218), (-100.332998,25.644766), (-100.333115,25.644591), (-100.3332,25.644521), (-100.333195,25.644404), (-100.333113,25.64435), (-100.333047,25.644213), (-100.332879,25.643976), (-100.332639,25.643599), (-100.332553,25.643416), (-100.332485,25.643268), (-100.332356,25.643229), (-100.33223,25.643289), (-100.332005,25.643449), (-100.331546,25.643666), (-100.331196,25.643747), (-100.330808,25.643768), (-100.330301,25.643715), (-100.329744,25.643609), (-100.328287,25.643373), (-100.327855,25.643303), (-100.327616,25.643212), (-100.327386,25.643078), (-100.326811,25.642857), (-100.326655,25.642845), (-100.326555,25.642907), (-100.326455,25.643106), (-100.326443,25.643362), (-100.326303,25.643565), (-100.326012,25.64392), (-100.325977,25.644149), (-100.325424,25.644885), (-100.325203,25.645011), (-100.324918,25.645053), (-100.324528,25.644997), (-100.324298,25.645089), (-100.324114,25.645215), (-100.323803,25.645258), (-100.32326,25.64494), (-100.321725,25.643972), (-100.320571,25.643376), (-100.320152,25.643122), (-100.319455,25.642671), (-100.319064,25.642419), (-100.317708,25.641563), (-100.316343,25.640686), (-100.315764,25.640319), (-100.314257,25.63936), (-100.312666,25.638349), (-100.312153,25.638023), (-100.311855,25.637848), (-100.311478,25.637679), (-100.311,25.637391), (-100.310545,25.6371), (-100.310384,25.637049), (-100.310253,25.637096), (-100.310247,25.637096), (-100.310122,25.637157), (-100.30974,25.637411), (-100.308736,25.638108), (-100.307437,25.638964), (-100.30695,25.639292), (-100.306477,25.639658), (-100.306046,25.640035), (-100.305322,25.64067), (-100.304603,25.641291), (-100.303876,25.64191), (-100.303439,25.642134), (-100.303157,25.64228), (-100.302858,25.642501), (-100.302216,25.642653), (-100.301715,25.642969), (-100.301238,25.643169), (-100.298621,25.64351), (-100.298614,25.64351), (-100.298239,25.643641), (-100.297415,25.644171), (-100.297224,25.644229), (-100.295381,25.64477), (-100.293675,25.645287), (-100.293607,25.645329), (-100.293665,25.645451), (-100.29413,25.645972), (-100.294412,25.646323), (-100.295331,25.647372), (-100.295782,25.647905), (-100.296199,25.648384), (-100.296222,25.648451), (-100.296175,25.648537), (-100.294802,25.649589), (-100.293263,25.650791), (-100.292658,25.651285), (-100.292457,25.651213), (-100.292201,25.651354), (-100.292143,25.6515), (-100.292121,25.651697), (-100.291179,25.652457), (-100.29108,25.652475), (-100.290946,25.65239)]
    static let paradas : [(Double, Double)] = [(-100.290877,25.652424), (-100.293852,25.654103), (-100.294733,25.655537), (-100.296999,25.66017), (-100.297111,25.665471), (-100.298441,25.670737), (-100.29875,25.671751), (-100.297533,25.665411), (-100.297526,25.662495), (-100.295676,25.656218), (-100.292885,25.651802), (-100.290401,25.647854), (-100.28834,25.644711), (-100.286228,25.641238), (-100.285049,25.639385), (-100.282824,25.635882), (-100.280429,25.632057), (-100.277539,25.627489), (-100.275439,25.623984), (-100.271323,25.615975), (-100.275817,25.617391), (-100.280776,25.618658), (-100.283764,25.620551), (-100.28425,25.620044), (-100.275801,25.614668), (-100.270636,25.609615), (-100.269138,25.60653), (-100.268021,25.605753), (-100.269615,25.608571), (-100.270914,25.616115), (-100.276187,25.625997), (-100.277902,25.628761), (-100.279124,25.630733), (-100.279894,25.631911), (-100.281427,25.634394), (-100.282627,25.636267), (-100.283831,25.638263), (-100.284934,25.639983), (-100.285938,25.641517), (-100.287691,25.644273), (-100.290444,25.649054)]
}
