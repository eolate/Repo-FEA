  function x = gausspoints1d(n)
%
%  function x = gauss_points(n)
%
%  For 1 <= n <= 20, returns the abscissas x of an n point
%  Gauss-Legendre quadrature rule over the interval [-1,1].
%
  x = ones(1,n);

  if ( n == 1 ) 
    x(1) = 0.0;
  elseif ( n == 2 )
    x(1) = - 0.577350269189625764509148780502; 
    x(2) =   0.577350269189625764509148780502;  
  elseif ( n == 3 )
    x(1) = - 0.774596669241483377035853079956; 
    x(2) =  0.000000000000000;
    x(3) =   0.774596669241483377035853079956;
  elseif ( n == 4 )
    x(1) = - 0.861136311594052575223946488893;
    x(2) = - 0.339981043584856264802665759103;
    x(3) =   0.339981043584856264802665759103;
    x(4) =   0.861136311594052575223946488893;
  elseif ( n == 5 )
    x(1) = - 0.906179845938663992797626878299;
    x(2) = - 0.538469310105683091036314420700;
    x(3) =   0.0;
    x(4) =   0.538469310105683091036314420700;
    x(5) =   0.906179845938663992797626878299;
  elseif ( n == 6 ) 
    x(1) = - 0.932469514203152027812301554494;
    x(2) = - 0.661209386466264513661399595020;
    x(3) = - 0.238619186083196908630501721681;
    x(4) =   0.238619186083196908630501721681;
    x(5) =   0.661209386466264513661399595020;
    x(6) =   0.932469514203152027812301554494;
  elseif ( n == 7 ) 
    x(1) = - 0.949107912342758524526189684048;
    x(2) = - 0.741531185599394439863864773281;
    x(3) = - 0.405845151377397166906606412077;
    x(4) =   0.0;
    x(5) =   0.405845151377397166906606412077;
    x(6) =   0.741531185599394439863864773281;
    x(7) =   0.949107912342758524526189684048;
  elseif ( n == 8 )
    x(1) = - 0.960289856497536231683560868569;
    x(2) = - 0.796666477413626739591553936476;
    x(3) = - 0.525532409916328985817739049189;
    x(4) = - 0.183434642495649804939476142360;
    x(5) =   0.183434642495649804939476142360;
    x(6) =   0.525532409916328985817739049189;
    x(7) =   0.796666477413626739591553936476;
    x(8) =   0.960289856497536231683560868569;
  elseif ( n == 9 )
    x(1) = - 0.968160239507626089835576202904;
    x(2) = - 0.836031107326635794299429788070;
    x(3) = - 0.613371432700590397308702039341;
    x(4) = - 0.324253423403808929038538014643;
    x(5) =   0.0;
    x(6) =   0.324253423403808929038538014643;
    x(7) =   0.613371432700590397308702039341;
    x(8) =   0.836031107326635794299429788070;
    x(9) =   0.968160239507626089835576202904;
  elseif ( n == 10 )
    x(1) =  - 0.973906528517171720077964012084;
    x(2) =  - 0.865063366688984510732096688423;
    x(3) =  - 0.679409568299024406234327365115;
    x(4) =  - 0.433395394129247290799265943166;
    x(5) =  - 0.148874338981631210884826001130;
    x(6) =    0.148874338981631210884826001130;
    x(7) =    0.433395394129247290799265943166;
    x(8) =    0.679409568299024406234327365115;
    x(9) =    0.865063366688984510732096688423;
    x(10) =   0.973906528517171720077964012084;
  elseif (n == 11)
    x(1)=-0.978228658146056992803938001123;
    x(2)=-0.887062599768095299075157769304;
    x(3)=-0.730152005574049324093416252031;
    x(4)=-0.519096129206811815925725669459;
    x(5)=-0.269543155952344972331531985401;
    x(6)= 0;
    x(7)= 0.269543155952344972331531985401;
    x(8)= 0.519096129206811815925725669459;
    x(9)= 0.730152005574049324093416252031;
    x(10)= 0.887062599768095299075157769304;
    x(11)= 0.978228658146056992803938001123;
  elseif (n == 12)
    x(1)=-0.981560634246719250690549090149;
    x(2)=-0.904117256370474856678465866119;
    x(3)=-0.769902674194304687036893833213;
    x(4)=-0.587317954286617447296702418941;
    x(5)=-0.367831498998180193752691536644;
    x(6)=-0.125233408511468915472441369464;
    x(7)= 0.125233408511468915472441369464;
    x(8)= 0.367831498998180193752691536644;
    x(9)= 0.587317954286617447296702418941;
    x(10)= 0.769902674194304687036893833213;
    x(11)= 0.904117256370474856678465866119;
    x(12)= 0.981560634246719250690549090149;
  elseif (n == 13)
    x(1)=-0.984183054718588149472829448807;
    x(2)=-0.917598399222977965206547836501;
    x(3)=-0.801578090733309912794206489583;
    x(4)=-0.642349339440340220643984606996;
    x(5)=-0.448492751036446852877912852128;
    x(6)=-0.230458315955134794065528121098;
    x(7)= 0;
    x(8)= 0.230458315955134794065528121098;
    x(9)= 0.448492751036446852877912852128;
    x(10)= 0.642349339440340220643984606996;
    x(11)= 0.801578090733309912794206489583;
    x(12)= 0.917598399222977965206547836501;
    x(13)= 0.984183054718588149472829448807;
  elseif (n == 14)
    x(1)=-0.986283808696812338841597266704;
    x(2)=-0.928434883663573517336391139378;
    x(3)=-0.827201315069764993189794742650;
    x(4)=-0.687292904811685470148019803019;
    x(5)=-0.515248636358154091965290718551;
    x(6)=-0.319112368927889760435671824168;
    x(7)=-0.108054948707343662066244650220;
    x(8)= 0.108054948707343662066244650220;
    x(9)= 0.319112368927889760435671824168;
    x(10)= 0.515248636358154091965290718551;
    x(11)= 0.687292904811685470148019803019;
    x(12)= 0.827201315069764993189794742650;
    x(13)= 0.928434883663573517336391139378;
    x(14)= 0.986283808696812338841597266704;
  elseif (n == 15)
    x(1)=-0.987992518020485428489565718587;
    x(2)=-0.937273392400705904307758947710;
    x(3)=-0.848206583410427216200648320774;
    x(4)=-0.724417731360170047416186054614;
    x(5)=-0.570972172608538847537226737254;
    x(6)=-0.394151347077563369897207370981;
    x(7)=-0.201194093997434522300628303395;
    x(8)= 0;
    x(9)= 0.201194093997434522300628303395;
    x(10)= 0.394151347077563369897207370981;
    x(11)= 0.570972172608538847537226737254;
    x(12)= 0.724417731360170047416186054614;
    x(13)= 0.848206583410427216200648320774;
    x(14)= 0.937273392400705904307758947710;
    x(15)= 0.987992518020485428489565718587;
  elseif (n == 16)
    x(1)=-0.989400934991649932596154173450;
    x(2)=-0.944575023073232576077988415535;
    x(3)=-0.865631202387831743880467897712;
    x(4)=-0.755404408355003033895101194847;
    x(5)=-0.617876244402643748446671764049;
    x(6)=-0.458016777657227386342419442984;
    x(7)=-0.281603550779258913230460501460;
    x(8)=-0.0950125098376374401853193354250;
    x(9)= 0.0950125098376374401853193354250;
    x(10)= 0.281603550779258913230460501460;
    x(11)= 0.458016777657227386342419442984;
    x(12)= 0.617876244402643748446671764049;
    x(13)= 0.755404408355003033895101194847;
    x(14)= 0.865631202387831743880467897712;
    x(15)= 0.944575023073232576077988415535;
    x(16)= 0.989400934991649932596154173450;
  elseif (n == 17)
    x(1)=-0.990575475314417335675434019941;
    x(2)=-0.950675521768767761222716957896;
    x(3)=-0.880239153726985902122955694488;
    x(4)=-0.781514003896801406925230055520;
    x(5)=-0.657671159216690765850302216643;
    x(6)=-0.512690537086476967886246568630;
    x(7)=-0.351231763453876315297185517095;
    x(8)=-0.178484181495847855850677493654;
    x(9)= 0;
    x(10)= 0.178484181495847855850677493654;
    x(11)= 0.351231763453876315297185517095;
    x(12)= 0.512690537086476967886246568630;
    x(13)= 0.657671159216690765850302216643;
    x(14)= 0.781514003896801406925230055520;
    x(15)= 0.880239153726985902122955694488;
    x(16)= 0.950675521768767761222716957896;
    x(17)= 0.990575475314417335675434019941;
  elseif (n == 18)
    x(1)=-0.991565168420930946730016004706;
    x(2)=-0.955823949571397755181195892930;
    x(3)=-0.892602466497555739206060591127;
    x(4)=-0.803704958972523115682417455015;
    x(5)=-0.691687043060353207874891081289;
    x(6)=-0.559770831073947534607871548525;
    x(7)=-0.411751161462842646035931793833;
    x(8)=-0.251886225691505509588972854878;
    x(9)=-0.0847750130417353012422618529358;
    x(10)= 0.0847750130417353012422618529358;
    x(11)= 0.251886225691505509588972854878;
    x(12)= 0.411751161462842646035931793833;
    x(13)= 0.559770831073947534607871548525;
    x(14)= 0.691687043060353207874891081289;
    x(15)= 0.803704958972523115682417455015;
    x(16)= 0.892602466497555739206060591127;
    x(17)= 0.955823949571397755181195892930;
    x(18)= 0.991565168420930946730016004706;
  elseif (n == 19)
    x(1)=-0.992406843843584403189017670253;
    x(2)=-0.960208152134830030852778840688;
    x(3)=-0.903155903614817901642660928532;
    x(4)=-0.822714656537142824978922486713;
    x(5)=-0.720966177335229378617095860824;
    x(6)=-0.600545304661681023469638164946;
    x(7)=-0.464570741375960945717267148104;
    x(8)=-0.316564099963629831990117328850;
    x(9)=-0.160358645640225375868096115741;
    x(10)= 0;
    x(11)= 0.160358645640225375868096115741;
    x(12)= 0.316564099963629831990117328850;
    x(13)= 0.464570741375960945717267148104;
    x(14)= 0.600545304661681023469638164946;
    x(15)= 0.720966177335229378617095860824;
    x(16)= 0.822714656537142824978922486713;
    x(17)= 0.903155903614817901642660928532;
    x(18)= 0.960208152134830030852778840688;
    x(19)= 0.992406843843584403189017670253;
  elseif (n == 20)
    x(1)=-0.993128599185094924786122388471;
    x(2)=-0.963971927277913791267666131197;
    x(3)=-0.912234428251325905867752441203;
    x(4)=-0.839116971822218823394529061702;
    x(5)=-0.746331906460150792614305070356;
    x(6)=-0.636053680726515025452836696226;
    x(7)=-0.510867001950827098004364050955;
    x(8)=-0.373706088715419560672548177025;
    x(9)=-0.227785851141645078080496195369;
    x(10)=-0.0765265211334973337546404093988;
    x(11)= 0.0765265211334973337546404093988;
    x(12)= 0.227785851141645078080496195369;
    x(13)= 0.373706088715419560672548177025;
    x(14)= 0.510867001950827098004364050955;
    x(15)= 0.636053680726515025452836696226;
    x(16)= 0.746331906460150792614305070356;
    x(17)= 0.839116971822218823394529061702;
    x(18)= 0.912234428251325905867752441203;
    x(19)= 0.963971927277913791267666131197;
    x(20)= 0.993128599185094924786122388471;
  else
    error('GAUSS_WEIGHTS - Fatal error! Illegal value of n.')
  end
