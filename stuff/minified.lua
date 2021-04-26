local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o=component,computer,unicode,{"/init.lua","/OS.lua"},{},{}local function p(q)local r={b.pullSignal(q)}r[1]=r[1]or""if cyan and cyan[1].n>0 and(r[1]:match("ey")and not cyan[1][r[5]]or r[1]:match("cl")and not cyan[1][r[4]])then return""end;f[r[4]or""]=r[1]:match"do"and 1;if f[29]and(f[46]or f[32])and r[1]:match"do"then return"F"end;return table.unpack(r)end;local function s(t,u,v,w,x)x=x or xpcall;local y,z=load("return "..t,u,F,v)if not y then y,z=load(t,u,F,v)end;if y then v=a.invoke;a.invoke=w and function(A,B,...)if k and A==k.address and B=="set"then k.setPaletteColor(9,0x969696)k.setPaletteColor(11,0xb4b4b4)a.invoke=v end;return v(A,B,...)end or v;return x(y,debug.traceback)end;return F,z end;local function C(D)return a.list(D)()and a.proxy(a.list(D)())end;local function E(G,H)n={}for I in G:gmatch"[^\r\n]+"do n[#n+1]=I:gsub("\t",H and"    "or"")end end;local function J(q,K,L)local M,N,t,O=b.uptime()+(q or math.huge)::P::N,O,O,t=p(M-b.uptime())if N=="F"or N:match"do"and(t==K or K==0)then return 1,L and L()elseif b.uptime()<M then goto P end end;local function Q(R,S,T,U,V)k.setBackground(U or 0x002b36)k.setForeground(V or 0x8cb9c5)k.set(R,S,T)end;local function W(R,S,X,Y,U,V)k.setBackground(U or 0x002b36)k.setForeground(V or 0x8cb9c5)k.fill(R,S,X,Y," ")end;local function Z()W(1,1,i,j)end;local function _(a0)return math.floor(i/2-a0/2)end;local function a1(S,G,U,V)Q(_(c.len(G)),S,G,U,V)end;local function a2()k,l=C"gp",C"sc"if k and l then if k.getScreen()~=l.address then k.bind(l.address)end;local a3,a4,a5=l.getAspectRatio()i,j=k.maxResolution()a5=2*(16*a3-4.5)/(16*a4-4.5)if a5>i/j then j=math.floor(i/a5)else i=math.floor(j*a5)end;k.set(1,1,"")k.setResolution(i,j)k.setPaletteColor(9,0x002b36)k.setPaletteColor(11,0x8cb9c5)end end;local function a6(G,a7,a8,K,L)if k and l then Z()E(G)local S=math.ceil(j/2-#n/2)if a7 then a1(S-1,a7,0x002b36,0xffffff)S=S+1 end;for a9=1,#n do a1(S,n[a9])S=S+1 end;J(a8 or 0,K or 0,L)end end;local function aa(G,ab)return c.len(G)>ab and c.sub(G,1,ab).."…"or G end;local function ac(ad,S,ae,af,V,v)local G,ag,ah,ai,aj,R,N,ak,t,O="",c.len(ad),1,1;V=V or 0x8cb9c5::P::R=ae and _(c.len(G)+ag)or 1;aj=R+ag+ah-1;W(1,S,i,1)Q(R,S,ad..G,F,V)if aj<=i then Q(aj,S,k.get(aj,S),ai and V or 0x002b36,ai and 0x002b36 or V)end;N,O,ak,t=p(.5)if N:match"do"then if t==203 and ah>1 then ah=ah-1 elseif t==205 and ah<=c.len(G)then ah=ah+1 elseif t==200 and af then G=af;ah=c.len(af)+1 elseif t==208 and af then G=""ah=1 elseif t==14 and#G>0 and ah>1 then G=f[29]and""or c.sub(c.sub(G,1,ah-1),1,-2)..c.sub(G,ah,-1)ah=f[29]and 1 or ah-1 elseif t==28 then return G elseif ak>=32 and c.len(ag..G)<i-ag then G=c.sub(G,1,ah-1)..c.char(ak)..c.sub(G,ah,-1)ah=ah+1 end;ai=1 elseif N:match"cl"then G=c.sub(G,1,ah-1)..ak..c.sub(G,ah,-1)ah=ah+c.len(ak)elseif N:match"mp"or N=="F"then m=N:match"mp"and 1;return elseif not N:match"up"then ai=not ai end;goto P end;local function al(A)local C,am,a9=a.proxy(A)if C and A~=b.tmpAddress()then a9=#e+1;for an=1,#d do if C.exists(d[an])then am=d[an]break end end;e[a9]={r=C,p=function(ao,S)ao=ao and Z()or ao;a1(S or j/2,am and("Boot%s %s from %s (%s)"):format(ao and"ing"or"",am,aa(C.getLabel()or"N/A",6),aa(A,ao and i>80 and 36 or 6))or("Boot from %s (%s) isn't available"):format(C.getLabel()or"N/A",aa(A,ao and i>80 and 36 or 6)),F,not ao and 0xffffff)ao=ao and not g and a6"Hold ENTER to boot"and J(math.huge,28)end}e[a9].b=function()if am then local ap,aq,y,ar,z=C.open(am,"r"),""::P::y=C.read(ap,math.huge)if y then aq=aq..y;goto P end;C.close(ap)pcall(e[a9].p,1)y=h~=A and b.setBootAddress(A)ar,z=s(aq,"="..am,F,1)ar=ar and b.shutdown()a2()a6(z,"¯\\_(ツ)_/¯",math.huge,0,b.shutdown)error(z)end end or b.uptime;o[a9]={aa(C.getLabel()or"N/A",6),e[a9].b}end end;local function as(at)e={}o={s=at or 1}al(h)for A in next,a.list"file"do al(A~=h and A or"")end end;local function au()g=1::av::local aw,ax,ay,az,aA,N,t,aB,aq,aC,S,aD,v,G,aE,O=function(aF,S,aG,aH,aI,aJ)local aK,R=0;for a9=1,#aF do aK=aK+c.len(aF[a9][1])+aG end;aK=aK-aG;R=_(aK)if aJ then aJ()end;for a9=1,#aF do if aF.s==a9 and aI then W(R-aG/2,S-math.floor(aH/2),c.len(aF[a9][1])+aG,aH,0x8cb9c5)Q(R,S,aF[a9][1],0x8cb9c5,0x002b36)else Q(R,S,aF[a9][1],0x002b36,0x8cb9c5)end;R=R+c.len(aF[a9][1])+aG end end;function az()S=j/2-(#e>0 and-1 or 1)Z()aw(o,S-4,8,3,not aA.p and 1,function()if#e>0 then aD=e[o.s].r;e[o.s].p(F,S+3)a1(S+5,("Storage %s%% / %s / %s"):format(math.floor(aD.spaceUsed()/(aD.spaceTotal()/100)),aD.isReadOnly()and"Read only"or"Read & Write",aD.spaceTotal()<2^20 and"FDD"or aD.spaceTotal()<2^20*12 and"HDD"or"RAID"))for a9=ax,#ay do ay[a9]=F end;if not aD.isReadOnly()then ay[ax]={"Rename",function()Z()a1(j/2-1,"Change label",F,0xffffff)aB=ac("Enter new name: ",j/2+1,1,F,0x8cb9c5)if aB and#aB>0 then aD.setLabel(aB)as(o.s)end end}ay[ax+1]={"Format",function()aD.remove("/")aD.setLabel(F)as(o.s)end}end else a1(S+3,"No drives available",F,0xffffff)end end)aw(ay,S,6,1,aA.p and 1 or F)end;ay={s=1,p=1,{"Halt",b.shutdown},{"Shell",function()Z()v=setmetatable({print=function(...)G=table.pack(...)for a9=1,G.n do if type(G[a9])=="table"then aE=''for aL,aM in pairs(G[a9])do aE=aE..tostring(aL).."    "..tostring(aM).."\n"end;G[a9]=aE else G[a9]=tostring(G[a9])end end;E(table.concat(G,"    "),1)for a9=1,#n do k.copy(1,1,i,j-1,0,-1)W(1,j-1,i,1)Q(1,j-1,n[a9])end end,proxy=C,sleep=function(q)J(q,32,error)end},{__index=_G})::P::aq=ac("> ",j,F,aq,0xffffff,v)if aq then v.print("> "..aq)W(1,j,i,1)Q(1,j,">")v.print(select(2,s(aq,"=shell",v)))goto P end end},C"net"and{"Netboot",function()Z()a1(j/2-1,"Internet boot",F,0xffffff)aC=ac("URL: ",j/2+1,1,F,0x8cb9c5)if aC and#aC>0 then local ap,aq,y=C"net".request(aC,F,F,{["user-agent"]="Cyan"}),""if ap then a6("Downloading script...","Internet boot")::P::y=ap.read()if y then aq=aq..y;goto P end;aq=select(2,s(aq,"=stdin",F,1,pcall))or""a2()a6(aq,"Internet boot",#aq==0 and 0 or math.huge)else a6("Invalid URL","Internet boot",math.huge)end end end}}ax=#ay+1;m=F;as()aA=#e>0 and o or ay::P::pcall(az)N,O,O,t=p()if N=="F"then b.shutdown()else if N:match"do"then aA=(t==200 or t==208)and(#e>0 and(aA.p and o or ay)or aA)or aA;aA.s=t==203 and(aA.s==1 and#aA or aA.s-1)or t==205 and(aA.s==#aA and 1 or aA.s+1)or aA.s;if t==28 then pcall(aA[aA.s][2])end end;if N:match"mp"or m then pcall(a2)goto av end end;goto P end;b.getBootAddress=function(...)return C"pro".getData(...)end;b.setBootAddress=function(...)C"pro".setData(...)end;h=b.getBootAddress()g=(not cyan or not cyan[2])and 1;as()a2()a6("Hold ALT to stay in bootloader",F,1,56,au)for a9=1,#e do e[a9].b()end;k=k and l and au()or error("No drives available")