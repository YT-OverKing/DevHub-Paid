return(function(h,a,a)local k=string.char;local e=string.sub;local n=table.concat;local l=math.ldexp;local o=getfenv or function()return _ENV end;local m=select;local g=unpack or table.unpack;local j=tonumber;local function p(h)local b,c,g="","",{}local f=256;local d={}for a=0,f-1 do d[a]=k(a)end;local a=1;local function i()local b=j(e(h,a,a),36)a=a+1;local c=j(e(h,a,a+b-1),36)a=a+b;return c end;b=k(i())g[1]=b;while a<#h do local a=i()if d[a]then c=d[a]else c=b..e(b,1,1)end;d[f]=b..e(c,1,1)g[#g+1],b,f=c,c,f+1 end;return table.concat(g)end;local j=p('22E21Z27521X21V27521Z1W2122161Y21X21S2791N2172122101Y1E1Z27925Z25I1L2402531621X2252792172142121Z21G21F21H21A2151W27F2791F21F21F21J101Y21F21X1027921B28C21J21G23H22W22W21H21221C22X1W21A21F21B21E21121E21G1Y21H21021421521F1Y29822X29621622W1U1J22Y1821D2941C2861W22W131Y21D1F29022Y1N21221A1Z22W21621228329422W1C1N22X21721E21227924N25D1M23024X27V1C28K28M28O28Q28S28U28W28Y29029229429629829A21F29C21429E29G29I29K21H29M28722W1621721A27L1L1Y2171Y2A21Y2A029X21522W1121E210218192141A2AU21Q27921324Z23X23L24W27V1B2AK28D2AM28R28T28V28X28Z29129329529729929B29D29F29H29J29L29N29P29R22Y29T21122Y1H23A2BJ28622W1G21B21221F1E21G1J21B21A21G2A82AA28927527I27K27M1327H24824H26B24Y2AI2C428N28P2C72AP2CA2AS2CD2AV2CG2AY2CI2B22CL2B52CN29Q29S29U29W29Y2BJ2A321H22W2BD21221J2942D92AB27522V2601F21M24R27V1D2DN2C62AO2C92AR2CC2AU2CF2AX2AZ2B12CK2B42B629O2E32CR29V29X29Z2A12E922W1K2122112EF2A921221X21U27921J28529821X22D2791027C1Y22V2BR21F22V1K21E21J21J21421H2991Z1727922D21Y2792GA2EI22127927621Z22P22F27922321Z2GA21W21Z21V2GO2752GL2GA2G927927827522D2272GM2H12EI2752GA2GA2FK2FQ21Z2GO21T2GF2H42H92HC2HC21X2HF2H52GP2GF23C2H12GV2HD2GD2HG2GH2GJ27522N2H127G2GQ2792HV2GU2GC2HK2GY2H02HJ2H32H12H621Z2H82GO2H02HC2GN2HF2GF2HH2IE2H12GX2752HM2I12GB27922V2GE2IH2HS27922R2H12262GP2GR21Z2IW2IO2752IL2GZ2I82IQ2HD2I92IB21Z27X2IJ2J02IG2II2GF2HJ2IL21Z2IN2IA2I22I22IR2HC2242IU27523B2H12GL2HY2JU2HN2I22J52I52H221Z22V2J921Z2H72752GO2222HI2HE2IG2GG2IJ2GA2JK2JM2HO2K42JQ2GF2JS2GI27923F2H12GE2JY21Z2KS2J32I32IA2K32JP2K72K92HE2202KD2JF2HF2JH2IP2KI2HL2K02792HT2IA22L2H12742GW2792HH2GC22M2IP2752G72HP2K42JO2LM2LW2KG21Z2JH2M02LX2LZ2LL2J42M42KZ2FK2752M82K82792MA2MD2MC2MF27527G2MH2792MI21Z2ML2ID21Z2MO2MQ2792MR2752MT2JC2792JD2MW2752MY2JS2752N221Z2N42N62792N72N32792KC2752NC21Z2NE2NE2IS21Z2NI2NK2792NL2752NN21Z2LG2NR27922A2KF');local a=(bit or bit32);local d=a and a.bxor or function(a,c)local b,d,e=1,0,10 while a>0 and c>0 do local f,e=a%2,c%2 if f~=e then d=d+b end a,c,b=(a-f)/2,(c-e)/2,b*2 end if a<c then a=c end while a>0 do local c=a%2 if c>0 then d=d+b end a,b=(a-c)/2,b*2 end return d end local function c(b,a,c)if c then local a=(b/2^(a-1))%2^((c-1)-(a-1)+1);return a-a%1;else local a=2^(a-1);return(b%(a+a)>=a)and 1 or 0;end;end;local a=1;local function b()local f,b,c,e=h(j,a,a+3);f=d(f,71)b=d(b,71)c=d(c,71)e=d(e,71)a=a+4;return(e*16777216)+(c*65536)+(b*256)+f;end;local function i()local b=d(h(j,a,a),71);a=a+1;return b;end;local function f()local c,b=h(j,a,a+2);c=d(c,71)b=d(b,71)a=a+2;return(b*256)+c;end;local function q()local a=b();local b=b();local e=1;local d=(c(b,1,20)*(2^32))+a;local a=c(b,21,31);local b=((-1)^c(b,32));if(a==0)then if(d==0)then return b*0;else a=1;e=0;end;elseif(a==2047)then return(d==0)and(b*(1/0))or(b*(0/0));end;return l(b,a-1023)*(e+(d/(2^52)));end;local l=b;local function p(b)local c;if(not b)then b=l();if(b==0)then return'';end;end;c=e(j,a,a+b-1);a=a+b;local b={}for a=1,#c do b[a]=k(d(h(e(c,a,a)),71))end return n(b);end;local a=b;local function l(...)return{...},m('#',...)end local function n()local l={};local k={};local j={};local h={[#{"1 + 1 = 111";{927;245;889;645};}]=k,[#{{370;700;209;838};"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{{662;538;221;316};{404;580;857;829};"1 + 1 = 111";{148;765;421;808};}]=j,[#{"1 + 1 = 111";}]=l,};local a=b()local d={}for c=1,a do local b=i();local a;if(b==3)then a=(i()~=0);elseif(b==0)then a=q();elseif(b==2)then a=p();end;d[c]=a;end;for h=1,b()do local a=i();if(c(a,1,1)==0)then local e=c(a,2,3);local g=c(a,4,6);local a={f(),f(),nil,nil};if(e==0)then a[3]=f();a[4]=f();elseif(e==1)then a[3]=b();elseif(e==2)then a[3]=b()-(2^16)elseif(e==3)then a[3]=b()-(2^16)a[4]=f();end;if(c(g,1,1)==1)then a[2]=d[a[2]]end if(c(g,2,2)==1)then a[3]=d[a[3]]end if(c(g,3,3)==1)then a[4]=d[a[4]]end l[h]=a;end end;for a=1,b()do j[a]=b();end;for a=1,b()do k[a-1]=n();end;h[3]=i();return h;end;local p=pcall local function q(i,a,h)i=(i==true and n())or i;return(function(...)local b=1;local f=-1;local k={...};local j=m('#',...)-1;local d=i[#{{820;30;955;599};}];local e=i[#{"1 + 1 = 111";"1 + 1 = 111";{541;695;571;817};}];local a=i[#{{200;189;479;177};"1 + 1 = 111";}];local function n()local i=l local l={};local a={};local c={};for a=0,j do if(a>=e)then l[a-e]=k[a+1];else c[a]=k[a+1];end;end;local a=j-e+1 local a;local e;while true do a=d[b];e=a[1];if e<=12 then if e<=5 then if e<=2 then if e<=0 then local b=a[2]local d,a=i(c[b](g(c,b+1,a[3])))f=a+b-1 local a=0;for b=b,f do a=a+1;c[b]=d[a];end;elseif e>1 then local j;local l,m;local k;local e;c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]l,m=i(c[e](g(c,e+1,a[3])))f=m+e-1 j=0;for a=e,f do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,f))b=b+1;a=d[b];c[a[2]]();b=b+1;a=d[b];b=a[3];else c[a[2]]=h[a[3]];end;elseif e<=3 then b=a[3];elseif e>4 then c[a[2]]();else local a=a[2]c[a](c[a+1])end;elseif e<=8 then if e<=6 then local a=a[2]c[a]=c[a](g(c,a+1,f))elseif e>7 then local j;local l,m;local k;local e;c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]l,m=i(c[e](g(c,e+1,a[3])))f=m+e-1 j=0;for a=e,f do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,f))b=b+1;a=d[b];c[a[2]]();b=b+1;a=d[b];b=a[3];else if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;end;elseif e<=10 then if e==9 then local j;local m,l;local k;local e;c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]m,l=i(c[e](g(c,e+1,a[3])))f=l+e-1 j=0;for a=e,f do j=j+1;c[a]=m[j];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,f))b=b+1;a=d[b];c[a[2]]();b=b+1;a=d[b];b=a[3];else local a=a[2]c[a](c[a+1])end;elseif e>11 then c[a[2]]=a[3];else local a=a[2]c[a]=c[a](g(c,a+1,f))end;elseif e<=19 then if e<=15 then if e<=13 then local b=a[2];local d=c[a[3]];c[b+1]=d;c[b]=d[a[4]];elseif e==14 then c[a[2]]=c[a[3]][a[4]];else local j;local l,m;local k;local e;c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]l,m=i(c[e](g(c,e+1,a[3])))f=m+e-1 j=0;for a=e,f do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,f))b=b+1;a=d[b];c[a[2]]();b=b+1;a=d[b];b=a[3];end;elseif e<=17 then if e==16 then if(c[a[2]]==a[4])then b=b+1;else b=a[3];end;else local j;local l,m;local k;local e;c[a[2]]=h[a[3]];b=b+1;a=d[b];e=a[2];k=c[a[3]];c[e+1]=k;c[e]=k[a[4]];b=b+1;a=d[b];c[a[2]]=a[3];b=b+1;a=d[b];e=a[2]l,m=i(c[e](g(c,e+1,a[3])))f=m+e-1 j=0;for a=e,f do j=j+1;c[a]=l[j];end;b=b+1;a=d[b];e=a[2]c[e]=c[e](g(c,e+1,f))b=b+1;a=d[b];c[a[2]]();b=b+1;a=d[b];b=a[3];end;elseif e>18 then c[a[2]]=c[a[3]][a[4]];else do return end;end;elseif e<=22 then if e<=20 then c[a[2]]=h[a[3]];elseif e==21 then b=a[3];else c[a[2]]();end;elseif e<=24 then if e>23 then local d=a[2];local b=c[a[3]];c[d+1]=b;c[d]=b[a[4]];else local b=a[2]local d,a=i(c[b](g(c,b+1,a[3])))f=a+b-1 local a=0;for b=b,f do a=a+1;c[b]=d[a];end;end;elseif e==25 then do return end;else c[a[2]]=a[3];end;b=b+1;end;end;A,B=l(p(n))if not A[1]then local a=i[4][b]or'?';error('ERROR IN IRONBREW SCRIPT [LINE '..a..']:'..A[2]);wait(9e9);else return g(A,2,B);end;end);end;return q(true,{},o())();end)(string.byte,table.insert,setmetatable);
