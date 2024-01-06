import settings;
import three;
import solids;unitsize(4cm);

currentprojection=perspective( camera = (-1.0, -0.7, 0.3), target = (0.0, 0.0, 0.0) );
currentlight=nolight;

revolution S=sphere(O,0.995);
pen SpherePen = rgb(0.85,0.85,0.85)+opacity(0.6);
pen SphereLinePen = rgb(0.75,0.75,0.75)+opacity(0.6)+linewidth(0.5pt);
draw(surface(S), surfacepen=SpherePen, meshpen=SphereLinePen);

/*
  Colors
*/
pen curveStyle1 = rgb(0.0,0.0,0.0)+linewidth(1.5pt)+opacity(1.0);
pen pointStyle1 = rgb(0.0,0.4666666666666667,0.7333333333333333)+linewidth(4.0pt)+opacity(1.0);
pen pointStyle2 = rgb(0.0,0.6,0.5333333333333333)+linewidth(4.0pt)+opacity(1.0);
pen tVectorStyle1 = rgb(0.9333333333333333,0.4666666666666667,0.2)+linewidth(1.5pt)+opacity(1.0);

/*
  Exported Points
*/
dot( (0.0,0.0,1.0), pointStyle1);
dot( (0.0,-1.0,0.0), pointStyle1);
dot( (-1.0,0.0,0.0), pointStyle1);
dot( (0.0,0.0,-1.0), pointStyle1);
dot( (0.2705980500730985,-0.2705980500730985,0.9238795325112867), pointStyle2);
dot( (0.5,-0.7071067811865476,0.5), pointStyle2);
dot( (-0.5,-0.7071067811865476,-0.5), pointStyle2);
dot( (-0.7071067811865476,-0.5,0.5), pointStyle2);
dot( (-0.7071067811865476,0.5,-0.5), pointStyle2);
dot( (-0.2705980500730985,0.2705980500730985,-0.9238795325112867), pointStyle2);

/*
  Exported Curves
*/
path3 p1 = (0.0,0.0,1.0) .. (0.012534813536851982,-0.012691561730117639,0.9998408886970201) .. (0.02513539281706406,-0.025771283760181972,0.9993518164096586) .. (0.03778245856247521,-0.03923306929327541,0.9985155242152242) .. (0.050456328218299165,-0.0530701856651276,0.9973152532355034) .. (0.06313693367361421,-0.06727526581228802,0.9957347870874952) .. (0.07580384090464931,-0.08184031158283178,0.9937584923431485) .. (0.0884362714011019,-0.09675669884244814,0.9913713568233563) .. (0.10101312522377873,-0.11201518430932217,0.9885590255602718) .. (0.11351300553124788,-0.12760591403178795,0.9853078342728099) .. (0.12591424440407112,-0.14351843340348353,0.9816048402129859) .. (0.13819492978766354,-0.15974169859182785,0.9774378502554423) .. (0.15033293336902223,-0.17626408923724202,0.9727954461190855) .. (0.16230593919858655,-0.19307342226282426,0.9676670066280993) .. (0.174091472866429,-0.21015696661733177,0.9620427269396091) .. (0.18566693104192755,-0.22750145875850414,0.95591363468685) .. (0.19700961118808838,-0.24509311866914235,0.9492716030096716) .. (0.20809674126586009,-0.26291766618512696,0.9421093604684628) .. (0.2189055092501242,-0.2809603374028666,0.9344204978629328) .. (0.22941309228760848,-0.29920590092368826,0.9261994720034562) .. (0.23959668533775896,-0.31763867368457477,0.9174416065096803) .. (0.2494335291506108,-0.3362425361185587,0.9081430897386331) .. (0.2589009374509146,-0.35500094638416685,0.8983009699724162) .. (0.26797632321514114,-0.37389695340167584,0.8879131480235211) .. (0.276637223947476,-0.39291320843475563,0.876978367443656) .. (0.28486132588241886,-0.41203197495942157,0.8654962025494676) .. (0.2926264870650712,-0.4312351365682396,0.8534670445054848) .. (0.29991075928547745,-0.45050420266648944,0.8408920857307668) .. (0.3066924088703886,-0.46982031172862104,0.8277733029208537) .. (0.3129499363643864,-0.4891642318978914,0.8141134390005317) .. (0.3186620951622714,-0.5085163587296266,0.7999159843453268) .. (0.3238079091858348,-0.5278567098992046,0.7851851576304056) .. (0.3283666897303688,-0.5471649167196025,0.7699258866843939) .. (0.3323180516393544,-0.5664202123403229,0.7541437897423586) .. (0.33564192899944323,-0.5856014165296749,0.7378451575066214) .. (0.3383185905819047,-0.6046869169758387,0.7210369364359422) .. (0.3403286552908667,-0.6236546470788713,0.7037267136927792) .. (0.3416531079126659,-0.6424820602458672,0.6859227041845475) .. (0.34227331549415946,-0.6611461007448725,0.6676337401378741) .. (0.342171044710604,-0.679623171219883,0.6488692636445985) .. (0.3413284806153599,-0.6978890970193184,0.6296393226144392) .. (0.33972824719386924,-0.7159190875437647,0.6099545705616811) .. (0.3373534301727037,-0.7336876948754579,0.5898262706416592) .. (0.33418760256058755,-0.7511687700119342,0.5692663043370517) .. (0.3302148534217306,-0.7683354170893809,0.5482871851737481) .. (0.32541982040210177,-0.7851599460474532,0.5269020778211303) .. (0.31978772654594595,-0.8016138242564719,0.5051248229017152) .. (0.31330442195236796,-0.8176676276999075,0.4829699677999638) .. (0.3059564308296146,-0.8332909923795758,0.4604528037194091) .. (0.29773100450719897,-0.8484525666878415,0.43758940919079403) .. (0.28861618096258346,-0.8631199655699209,0.4143967001813019) .. (0.27860085140911595,-0.8772597273797612,0.390892486895953) .. (0.2676748344745813,-0.890837274414371,0.36709553729646477) .. (0.25582895847437526,-0.9038168781933322,0.3430256472900765) .. (0.24305515224913826,-0.916161630631783,0.3187037174606858) .. (0.22934654499293483,-0.9278334223355886,0.2941518361269109) .. (0.21469757544391577,-0.9387929293256982,0.26939336841611145) .. (0.19910411074404696,-0.9489996095737014,0.24445305093981684) .. (0.1825635751971047,-0.9584117108009913,0.2193570915442849) .. (0.16507508906395746,-0.9669862910582382,0.19413327349004011) .. (0.14663961743040008,-0.9746792536583657,0.16881106328625822) .. (0.12726012906478837,-0.9814453980830311,0.14342172127001562) .. (0.10694176504982239,-0.9872384885176113,0.11799841387701188) .. (0.0856920168245438,-0.9920113416906196,0.09257632639999708) .. (0.06352091310855779,-0.9957159356977885,0.06719277487448111) .. (0.04044121500051495,-0.9983035414760733,0.04188731556942177) .. (0.016468618346963948,-0.9997248785556632,0.016701850394686135) .. (-0.008333923710076657,-0.9999315629714263,-0.008210669224547204) .. (-0.03335749874644878,-0.9989495729368969,-0.031417001871151554) .. (-0.05836554685844557,-0.996912911814553,-0.05251770365642122) .. (-0.08330499637770858,-0.9939513789594564,-0.0715607004095476) .. (-0.1081321848876709,-0.9901805785945474,-0.08859939258022748) .. (-0.13281144298226813,-0.9857024007189354,-0.10369135851118394) .. (-0.15731380129056452,-0.9806056267842352,-0.11689727388869986) .. (-0.1816158205987766,-0.9749666294286673,-0.12828002653857157) .. (-0.20569854309850488,-0.968850140398436,-0.13790400580506462) .. (-0.22954656141406912,-0.9623100650390848,-0.1458345462071634) .. (-0.25314720104091726,-0.9553903254326508,-0.15213750581248303) .. (-0.2764898110953711,-0.948125717424838,-0.15687896072476523) .. (-0.29956515777423526,-0.9405427694714987,-0.16012499818135925) .. (-0.3223649145989171,-0.932660593480748,-0.16194159195145502) .. (-0.3448812433277767,-0.924491719683402,-0.16239454497461672) .. (-0.36710645932451597,-0.9160429090780832,-0.16154948545253958) .. (-0.3890327751384688,-0.907315938215554,-0.1594719038830683) .. (-0.4106521160598693,-0.8983083520554701,-0.1562272197887965) .. (-0.43195600144073343,-0.8890141813912223,-0.15188086813232293) .. (-0.45293548560630337,-0.8794246219355842,-0.14649839661933775) .. (-0.47358115221435404,-0.869528672628869,-0.1401455662645166) .. (-0.49388315594541454,-0.8593137311060316,-0.13288844873061065) .. (-0.5138313054250796,-0.8487661445696703,-0.12479351504583806) .. (-0.5334151812920089,-0.8378717145881182,-0.11592771135660426) .. (-0.5526242833361051,-0.826616154593777,-0.10635851837936289) .. (-0.571448200646725,-0.814985499114301,-0.09615399217418913) .. (-0.5898767987375564,-0.8029664640419842,-0.08538278476979608) .. (-0.6079004176605682,-0.7905467575445192,-0.07411414402092029) .. (-0.6255100751936412,-0.7777153415492154,-0.062417892869212954) .. (-0.6426976692919827,-0.7644626440952788,-0.050364388902360724) .. (-0.6594561741380844,-0.7507807232441728,-0.038024465757160245) .. (-0.6757798243131387,-0.7366633836629094,-0.02546935848458859) .. (-0.6916642818471966,-0.7221062474435445,-0.012770615482602277) .. (-0.7071067811865477,-0.7071067811865475,-8.326672684688674e-17) .. (-0.7221062474435445,-0.6916642818471965,0.012770615482602193) .. (-0.7366633836629094,-0.6757798243131388,0.025469358484588533) .. (-0.7507807232441728,-0.6594561741380843,0.03802446575716027) .. (-0.7644626440952789,-0.6426976692919826,0.05036438890236071) .. (-0.7777153415492155,-0.6255100751936411,0.06241789286921294) .. (-0.7905467575445194,-0.6079004176605682,0.07411414402092022) .. (-0.8029664640419842,-0.5898767987375565,0.085382784769796) .. (-0.814985499114301,-0.5714482006467252,0.09615399217418905) .. (-0.826616154593777,-0.5526242833361051,0.10635851837936278) .. (-0.8378717145881183,-0.533415181292009,0.11592771135660421) .. (-0.8487661445696705,-0.5138313054250798,0.12479351504583808) .. (-0.8593137311060316,-0.49388315594541454,0.13288844873061056) .. (-0.869528672628869,-0.47358115221435404,0.14014556626451652) .. (-0.8794246219355843,-0.4529354856063034,0.14649839661933758) .. (-0.8890141813912222,-0.43195600144073343,0.15188086813232293) .. (-0.8983083520554702,-0.4106521160598693,0.1562272197887965) .. (-0.907315938215554,-0.3890327751384688,0.1594719038830682) .. (-0.9160429090780831,-0.3671064593245161,0.16154948545253964) .. (-0.9244917196834019,-0.3448812433277768,0.16239454497461672) .. (-0.9326605934807481,-0.3223649145989171,0.16194159195145502) .. (-0.940542769471499,-0.2995651577742353,0.16012499818135922) .. (-0.9481257174248379,-0.27648981109537085,0.1568789607247652) .. (-0.9553903254326506,-0.25314720104091737,0.152137505812483) .. (-0.9623100650390848,-0.2295465614140691,0.14583454620716335) .. (-0.9688501403984361,-0.20569854309850494,0.13790400580506462) .. (-0.9749666294286672,-0.18161582059877646,0.12828002653857148) .. (-0.9806056267842351,-0.1573138012905645,0.1168972738886998) .. (-0.9857024007189354,-0.132811442982268,0.10369135851118386) .. (-0.9901805785945477,-0.10813218488767096,0.08859939258022745) .. (-0.9939513789594565,-0.08330499637770866,0.0715607004095476) .. (-0.996912911814553,-0.05836554685844558,0.052517703656421166) .. (-0.9989495729368969,-0.03335749874644878,0.03141700187115165) .. (-0.9999315629714263,-0.00833392371007663,0.008210669224547162) .. (-0.9997248785556632,0.01646861834696347,-0.01670185039468562) .. (-0.998303541476073,0.040441215000514785,-0.04188731556942169) .. (-0.9957159356977885,0.06352091310855774,-0.067192774874481) .. (-0.9920113416906196,0.08569201682454387,-0.0925763263999972) .. (-0.9872384885176114,0.10694176504982225,-0.11799841387701165) .. (-0.9814453980830312,0.12726012906478826,-0.1434217212700154) .. (-0.9746792536583655,0.14663961743040016,-0.16881106328625825) .. (-0.9669862910582382,0.1650750890639576,-0.19413327349004034) .. (-0.9584117108009914,0.18256357519710453,-0.2193570915442848) .. (-0.9489996095737014,0.199104110744047,-0.24445305093981673) .. (-0.9387929293256982,0.21469757544391585,-0.2693933684161116) .. (-0.9278334223355886,0.22934654499293464,-0.29415183612691054) .. (-0.9161616306317831,0.24305515224913837,-0.3187037174606858) .. (-0.9038168781933319,0.2558289584743754,-0.34302564729007673) .. (-0.8908372744143707,0.26767483447458146,-0.36709553729646516) .. (-0.8772597273797613,0.2786008514091159,-0.3908924868959528) .. (-0.8631199655699209,0.2886161809625835,-0.41439670018130204) .. (-0.8484525666878414,0.29773100450719897,-0.43758940919079425) .. (-0.833290992379576,0.30595643082961455,-0.4604528037194089) .. (-0.8176676276999075,0.31330442195236796,-0.4829699677999637) .. (-0.8016138242564721,0.31978772654594595,-0.5051248229017152) .. (-0.7851599460474531,0.32541982040210177,-0.5269020778211303) .. (-0.768335417089381,0.33021485342173057,-0.5482871851737479) .. (-0.751168770011934,0.33418760256058755,-0.5692663043370519) .. (-0.7336876948754578,0.3373534301727037,-0.5898262706416593) .. (-0.715919087543765,0.33972824719386924,-0.6099545705616807) .. (-0.6978890970193188,0.3413284806153599,-0.6296393226144392) .. (-0.6796231712198829,0.34217104471060394,-0.6488692636445985) .. (-0.6611461007448723,0.3422733154941595,-0.6676337401378744) .. (-0.6424820602458674,0.3416531079126659,-0.6859227041845473) .. (-0.6236546470788713,0.3403286552908667,-0.7037267136927792) .. (-0.6046869169758387,0.33831859058190467,-0.7210369364359421) .. (-0.5856014165296746,0.3356419289994431,-0.7378451575066216) .. (-0.566420212340323,0.3323180516393545,-0.7541437897423586) .. (-0.5471649167196025,0.32836668973036887,-0.7699258866843939) .. (-0.5278567098992043,0.32380790918583474,-0.785185157630406) .. (-0.5085163587296269,0.3186620951622715,-0.7999159843453265) .. (-0.4891642318978915,0.3129499363643865,-0.8141134390005317) .. (-0.46982031172862115,0.3066924088703886,-0.8277733029208538) .. (-0.45050420266648905,0.2999107592854774,-0.840892085730767) .. (-0.43123513656823975,0.29262648706507133,-0.8534670445054848) .. (-0.41203197495942173,0.2848613258824189,-0.8654962025494676) .. (-0.39291320843475563,0.27663722394747603,-0.8769783674436562) .. (-0.37389695340167617,0.26797632321514125,-0.887913148023521) .. (-0.3550009463841669,0.2589009374509145,-0.8983009699724159) .. (-0.3362425361185587,0.24943352915061073,-0.9081430897386331) .. (-0.3176386736845746,0.23959668533775885,-0.9174416065096804) .. (-0.2992059009236885,0.2294130922876086,-0.9261994720034561) .. (-0.2809603374028665,0.21890550925012414,-0.9344204978629328) .. (-0.26291766618512674,0.20809674126586006,-0.9421093604684627) .. (-0.2450931186691426,0.19700961118808855,-0.9492716030096716) .. (-0.22750145875850417,0.1856669310419276,-0.95591363468685) .. (-0.21015696661733171,0.17409147286642895,-0.9620427269396089) .. (-0.19307342226282406,0.16230593919858638,-0.9676670066280993) .. (-0.17626408923724227,0.15033293336902237,-0.9727954461190855) .. (-0.1597416985918279,0.13819492978766362,-0.9774378502554422) .. (-0.14351843340348336,0.12591424440407095,-0.981604840212986) .. (-0.12760591403178784,0.11351300553124782,-0.9853078342728099) .. (-0.11201518430932239,0.1010131252237789,-0.9885590255602716) .. (-0.09675669884244836,0.08843627140110202,-0.9913713568233564) .. (-0.08184031158283173,0.07580384090464928,-0.9937584923431486) .. (-0.06727526581228815,0.06313693367361445,-0.9957347870874953) .. (-0.05307018566512761,0.05045632821829915,-0.9973152532355034) .. (-0.03923306929327525,0.03778245856247511,-0.9985155242152242) .. (-0.025771283760181785,0.02513539281706384,-0.9993518164096585) .. (-0.012691561730117651,0.012534813536852096,-0.9998408886970201) .. (0.0,0.0,-1.0);
 draw(p1, curveStyle1);

/*
  Exported tangent vectors
*/
draw( (0.0,0.0,1.0)--(0.09516023801747622,0.11624248623701305,1.0), tVectorStyle1,Arrow3(10.0));
draw( (0.2705980500730985,-0.2705980500730985,0.9238795325112867)--(0.3209015545956388,-0.3953320210344171,0.8726122429038365), tVectorStyle1,Arrow3(10.0));
draw( (0.5,-0.7071067811865476,0.5)--(0.37291814239214394,-1.1621549018491484,-0.016453366165626426), tVectorStyle1,Arrow3(10.0));
draw( (0.0,-1.0,0.0)--(0.4017657261694952,-1.0,0.9557744419935092), tVectorStyle1,Arrow3(10.0));
draw( (-0.5,-0.7071067811865476,-0.5)--(-0.3729181423921436,-1.162154901849148,0.01645336616562687), tVectorStyle1,Arrow3(10.0));
draw( (-0.7071067811865476,-0.5,0.5)--(-1.1621549018486963,-0.3729181423935738,-0.016453366166361505), tVectorStyle1,Arrow3(10.0));
draw( (-1.0,0.0,0.0)--(-1.0,-0.2330032810544354,0.2296490334359053), tVectorStyle1,Arrow3(10.0));
draw( (-0.7071067811865476,0.5,-0.5)--(-1.1621549018487018,0.37291814239357773,0.01645336616635762), tVectorStyle1,Arrow3(10.0));
draw( (-0.2705980500730985,0.2705980500730985,-0.9238795325112867)--(-0.3953320210349259,0.32090155459570413,-0.8726122429036686), tVectorStyle1,Arrow3(10.0));
draw( (0.0,0.0,-1.0)--(0.11624248623677716,0.09516023801735543,-1.0), tVectorStyle1,Arrow3(10.0));
