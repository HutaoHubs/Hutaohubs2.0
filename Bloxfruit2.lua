local id = game.PlaceId
if id == 2753915549 then
World1 = true; 
elseif id == 4442272183 then
World2 = true;
elseif id == 7449423635 then
World3 = true;
else
game:Shutdown()
end;
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
    if World3 then
    
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i
    end

    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
        MirageMessage = '```Mirage is spawing : 🟢```'
    else
        MirageMessage = '```Mirage isn\'t spawn : ❌```'
    end
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
        '\'' .. tostring(game.JobId) .. '\'' .. ')'
    
    
    local url = "https://discord.com/api/webhooks/1278884503657382000/9kDl7uDfuZaJ7x78usrF2I3CSHVKHGS8BSsjkXmGbDvFHL7k97BT4SejCImEAcix7HdA"                                                                                                                
    local data = {
        ["username"] = 'Mirage Finder Hutaohub',                                                                                                                                                                                                           
        ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                            
        ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=280&height=280", 
        ["embeds"] = {
            {
                ["description"] = "**__Mirage Webhook__**",
                ["color"] = tonumber(0x0000FF), -- color id		#
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "[👥] Players Active",
                        ["value"] = '```' .. tostring(PlayersMin) .. '/12```'
                    },
                    {
                        ["name"] = "[📃] JobID",
                        ["value"] = '```' .. tostring(game.JobId) .. '```'
                    },
                    {
                        ["name"] = "[📁] Join Server",
                        ["value"] = '```' .. JoinServer .. '```',
                    },
                    {
                        ["name"] = "[🌲] Mirage Check",
                        ["value"] = MirageMessage,
                        ["inline"] = true
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook Created By Hutaohub", 
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["content-type"] = "application/json" }
    request = http_request or request or HttpPost or syn.request
    local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
    request(abcdef)
    end
    end
    
    local MoonCheck = {
        ['2'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
        ['1'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
    };

for i, v in pairs(MoonCheck) do
    if  game:GetService("Lighting").Sky.MoonTextureId == tonumber(i) or game:GetService("Lighting").Sky.MoonTextureId == v then
        if World3 then
        local Moon = {
            ['8'] = "http://www.roblox.com/asset/?id=9709149431", -- 🌕
            ['7'] = "http://www.roblox.com/asset/?id=9709149052", -- 🌖
            ['6'] = "http://www.roblox.com/asset/?id=9709143733", -- 🌗
            ['5'] = "http://www.roblox.com/asset/?id=9709150401", -- 🌘
            ['4'] = "http://www.roblox.com/asset/?id=9709135895",  -- 🌑
            ['3'] = "http://www.roblox.com/asset/?id=9709139597", -- 🌒
            ['2'] = "http://www.roblox.com/asset/?id=9709150086", -- 🌓
            ['1'] = "http://www.roblox.com/asset/?id=9709149680", -- 🌔
        };
        
        for i, v in pairs(Moon) do
            if game:GetService("Lighting").Sky.MoonTextureId == v then
                MoonPercent = i / 8 * 100
            end
        end
        
        for i, v in pairs(game.Players:GetPlayers()) do
            PlayersMin = i
        end
        
        if game:GetService("Lighting").Sky.MoonTextureId == Moon['1'] then
            MoonIcon = '🌔'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['2'] then
            MoonIcon = '🌓'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['3'] then
            MoonIcon = '🌒'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['4'] then
            MoonIcon = '🌑'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['5'] then
            MoonIcon = '🌘'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['6'] then
            MoonIcon = '🌘'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['7'] then
            MoonIcon = '🌖'
        elseif game:GetService("Lighting").Sky.MoonTextureId == Moon['8'] then
            MoonIcon = '🌕'
        end
        MoonMessage = '```' .. tostring(MoonPercent .. '%' .. ' : ' .. MoonIcon) .. '```'
        JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
            '\'' .. tostring(game.JobId) .. '\'' .. ')'
        
        local url = "https://discord.com/api/webhooks/1290558404775120896/nElLejKXulDBBWeBgz4cKgVKtefFSgNKQgOLtC-AoqS6y3Iz6rEKc5No9pRK_WKiDAzN"                                                                                                               
        local data = {
            ["username"] = 'Fullmoon Finder Hutaohub',                                                                                                                                                                                                          
            ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                             
            ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=315&height=315", 
            ["embeds"] = {
                {
                    ["description"] = "**__Moon__**",
                    ["color"] = tonumber(0x0000FF), 
                    ["type"] = "rich",
                    ["fields"] = {
                        {
                            ["name"] = "[👥] Players Active",
                            ["value"] = '```' .. tostring(PlayersMin) .. '/12```'
                        },
                        {
                            ["name"] = "[📃] JobID",
                            ["value"] = '```' .. tostring(game.JobId) .. '```'
                        },
                        {
                            ["name"] = "[📁] Join Server",
                            ["value"] = '```' .. JoinServer .. '```',
                        },
                        {
                            ["name"] = "[🕑] Moon Check",
                            ["value"] = MoonMessage,
                            ["inline"] = true
                        },
                        
                    },
                    ["footer"] = {
                        ["text"] = "Webhook Created Hutaohub", 
                    },
                    ["timestamp"] = DateTime.now():ToIsoDate(),
                }
            },
        }
        local newdata = game:GetService("HttpService"):JSONEncode(data)
        local headers = { ["content-type"] = "application/json" }
        request = http_request or request or HttpPost or syn.request
        local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
        request(abcdef)
        end
    end
end

if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
    if World3 then  
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i 
    end
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        KitsuneMassasge = '```Kitsune Island is spawing : 🟢```'
    else
        KitsuneMassasge = '```Kitsune Island isn\'t spawn : ❌```'
    end
    
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
        '\'' .. tostring(game.JobId) .. '\'' .. ')'
    
    
    local url = "https://discord.com/api/webhooks/1290556671801819136/q9Y7FOVEhIWogfqjRB-NlGCxMKj5ttzSYZVZYQhld1HmYraUsnfqCF2m8r14zYaq9SIF"                                                                                                                
    local data = {
        ["username"] = 'Kitsune Finder Hutaohub',                                                                                                                                                                                                           
        ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                            
        ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=315&height=315", 
        ["embeds"] = {
            {
                ["description"] = "**__Kitsune Webhook__**",
                ["color"] = tonumber(0x0000FF), -- color id		#
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "[👥] Players Active",
                        ["value"] = '```' .. tostring(PlayersMin) .. '/12```'
                    },
                    {
                        ["name"] = "[📃] JobID",
                        ["value"] = '```' .. tostring(game.JobId) .. '```'
                    },
                    {
                        ["name"] = "[📁] Join Server",
                        ["value"] = '```' .. JoinServer .. '```',
                    },
                    {
                        ["name"] = "[🦊] Kitsune Check",
                        ["value"] = KitsuneMassasge,
                        ["inline"] = true
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook Created By Hutaohub", 
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["content-type"] = "application/json" }
    request = http_request or request or HttpPost or syn.request
    local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
    request(abcdef)
    end
end

([[This file was protected with MoonSec V3]]):gsub('.+', (function(a) _fYUiDvEkjsJM = a; end)); return(function(h,...)local a;local s;local t;local r;local o;local d;local e=24915;local n=0;local l={};while n<949 do n=n+1;while n<0x189 and e%0x45cc<0x22e6 do n=n+1 e=(e+169)%29375 local f=n+e if(e%0x3bcc)>=0x1de6 then e=(e+0x2f8)%0x54d7 while n<0x3b0 and e%0xc84<0x642 do n=n+1 e=(e*563)%7993 local t=n+e if(e%0x33c8)<0x19e4 then e=(e-0x2ee)%0x7559 local e=72509 if not l[e]then l[e]=0x1 o={};end elseif e%2~=0 then e=(e*0x15)%0x6c8d local e=76055 if not l[e]then l[e]=0x1 end else e=(e+0x2e4)%0x4eb5 n=n+1 local e=98612 if not l[e]then l[e]=0x1 end end end elseif e%2~=0 then e=(e*0x1c7)%0x6a1f while n<0x1c5 and e%0x49ac<0x24d6 do n=n+1 e=(e+995)%32920 local d=n+e if(e%0x360a)>=0x1b05 then e=(e+0x3c)%0x633e local e=94360 if not l[e]then l[e]=0x1 r=string;end elseif e%2~=0 then e=(e*0xf4)%0x47ee local e=48360 if not l[e]then l[e]=0x1 t=(not t)and _ENV or t;end else e=(e-0x24a)%0x611 n=n+1 local e=89984 if not l[e]then l[e]=0x1 t=getfenv and getfenv();end end end else e=(e*0x385)%0x6d3b n=n+1 while n<0x2d6 and e%0x2820<0x1410 do n=n+1 e=(e-920)%27719 local f=n+e if(e%0x2946)>0x14a3 then e=(e*0xc5)%0xa4c2 local e=54788 if not l[e]then l[e]=0x1 s=tonumber;end elseif e%2~=0 then e=(e*0x308)%0x9698 local e=21679 if not l[e]then l[e]=0x1 d=function(d)local e=0x01 local function l(n)e=e+n return d:sub(e-n,e-0x01)end while true do local n=l(0x01)if(n=="\5")then break end local e=r.byte(l(0x01))local e=l(e)if n=="\2"then e=o.bFMkALPu(e)elseif n=="\3"then e=e~="\0"elseif n=="\6"then t[e]=function(e,n)return h(8,nil,h,n,e)end elseif n=="\4"then e=t[e]elseif n=="\0"then e=t[e][l(r.byte(l(0x01)))];end local n=l(0x08)o[n]=e end end end else e=(e+0x49)%0x9ceb n=n+1 local e=17517 if not l[e]then l[e]=0x1 a="\4\8\116\111\110\117\109\98\101\114\98\70\77\107\65\76\80\117\0\6\115\116\114\105\110\103\4\99\104\97\114\72\104\84\110\68\95\67\87\0\6\115\116\114\105\110\103\3\115\117\98\77\75\72\100\112\66\122\68\0\6\115\116\114\105\110\103\4\98\121\116\101\107\81\109\115\121\115\75\101\0\5\116\97\98\108\101\6\99\111\110\99\97\116\65\69\110\70\119\84\104\122\0\5\116\97\98\108\101\6\105\110\115\101\114\116\89\114\97\122\75\90\68\71\5";end end end end end e=(e*693)%48105 end d(a);local n={};for e=0x0,0xff do local l=o.HhTnD_CW(e);n[e]=l;n[l]=e;end local function c(e)return n[e];end local r=(function(f,d)local a,l=0x01,0x10 local n={{},{},{}}local t=-0x01 local e=0x01 local r=f while true do n[0x03][o.MKHdpBzD(d,e,(function()e=a+e return e-0x01 end)())]=(function()t=t+0x01 return t end)()if t==(0x0f)then t=""l=0x000 break end end local t=#d while e<t+0x01 do n[0x02][l]=o.MKHdpBzD(d,e,(function()e=a+e return e-0x01 end)())l=l+0x01 if l%0x02==0x00 then l=0x00 o.YrazKZDG(n[0x01],(c((((n[0x03][n[0x02][0x00]]or 0x00)*0x10)+(n[0x03][n[0x02][0x01]]or 0x00)+r)%0x100)));r=f+r;end end return o.AEnFwThz(n[0x01])end);d(r(251,"/x3GN4smP5<gMWnH7<"));d(r(25,"7F>^L*TqVkQ0K+#h#q+L>VFph*+^0hkh>^TQT>LF>0&k+L#Lk+V;k**T*0+#KTFVh>+qKk0uqTqV*^LV^#;h+Qh*TLLhQFVQTV*LLF,K#^K00TQqQKT^*Q#K+k>+F*hQ+VKLQL>kqV*^L+>^ h+}##QrQhT+qq^#*TKT0FPF+K+T0F^*V^T>LQLL>^C>h*Q+KTk#T;L#^0+TK*F^#K#>K>QFkqT0T*^k>FF>h>KkQ+QFT0qKTk^>>T0&kQ+.KTQ0Q^V*ThFq>>FqwkK++FkqkKVkYq##LVFkfVhQ+J0Kk^qTqhTTF+F^QqV+QKKFV0kQT**qFhFVh{kTVF+L0TQFVkT#LK^VFVih#T+*kGk#VKqK^K+B0KF>#TK#0hkh>qq+*+LTF#fqhT0TKhkFQ8VL^T>T>0Q#kq#+K+0TV#qqTT^T?h<hhQK^+Lk0VVF#3T*VLFFhP0hV#>QqV#kXTKLL>p>TQqk1#L0+Q0V0qoTV>+>Kh4dL00KTVqqVF^h#L#>k>^h#V>KQ0qQFVVq>Lk^+F+#L#++k0VVh>L"));local e=(-13479+(function()local l,e=0,1;(function(e,l,n,t)n(n(n,t,e,l)and n(e,l,n,e),n(e and e,l,e,l),l(l,l,e,n),e(n and n,e,e,t))end)(function(n,d,o,t)if l>404 then return d end l=l+1 e=(e+742)%26182 if(e%802)<401 then e=(e-253)%31372 return d(o(t,o,t,t),d(n,d,t,n),n(n,n,o,t and n),n(d,n,n,o))else return n end return n end,function(t,o,n,d)if l>433 then return n end l=l+1 e=(e+948)%41178 if(e%680)<=340 then return t(n(n,o,n,t),d(o,t and d,d,o)and t(n,n,d,d and d),n(t,n,n,n),n(n,t,d,o)and t(t and t,d,o,t))else return o end return t end,function(d,t,n,o)if l>281 then return t end l=l+1 e=(e*706)%19628 if(e%864)>=432 then return d(t(n,o,o and n,d),n(t,n,d and t,n),n(d and n,d and t,t,t)and d(t,n,o,d),o(n,d,n,o))else return o end return t end,function(t,o,n,d)if l>257 then return d end l=l+1 e=(e-222)%24279 if(e%1168)<=584 then e=(e-879)%20321 return n(o(d,o,n,t),t(n,n,n,d)and o(t,n,t,t),t(t,t,d,n),n(t,n,t,o and n))else return n end return d end)return e;end)())local a=o.TF_cEoOU or o.DvQyvAJh;local ne=(getfenv)or(function()return _ENV end);local f=4;local le=1;local t=2;local d=3;local function g(b,...)local u=r(e,"3DX&BbMSYFN <js1<<YNB1DBjFNXM&XYsjDFjYNFMM<M XbaDbjN1&<<FXMDj&jsNMMsX<N<<YSSBs<8jbF<bsXYjsNDSSXj1DSXYsBbDb<sB &jXBsFNjbSXs1DS&MsD6NXSDX<1D MsSN1MMXs/X<YY BSDD<1Xj11 SS<BDMb&DsFNNY&X&DNNsFFbjX <SY1rSsbFDbMD XjDBjFFjBSDssDNXb BD+B<xYNBYDF &FFbFDssB XBNBX=S<NDjsFNSM<&D&sX11B bbD&B)YbF&1s&NYMjFNM &C1D FBb11<B<NY_bSDjj&FbMDX  hNNS &s<b<jYDb<jF jY b &&sBFxBMX&FSb<XDsM NSU&b1N 1FSBFcsj&FFbjXXsS sSS&M1 <(YNBN41jBN M&X&sYNjSM&S1<<DN<bsD9jbFNMbXBsNNsSb&Y(D<SYSB<DDj<F MDXbss BSB&F1s<NYYBsDXjSNBMDXMs  DSb&N11jMFSBsD&jYN>MXXSs<<&Yb& oD<bY B1DBjF sM<XYss XSY&<oS<MFjbXDbjjF1M XFss &SYbMvX<YY<bBDMj N}Mb&js1 BSF&sz&<NYjbXD1j<NDMMX<1R MSN&1Db<FYsb&DFjjNXMSX<");local n=0;o.KfZhwaEy(function()o.chXTvvFU()n=n+1 end)local function e(l,e)if e then return n end;n=l+n;end local l,n,c=h(0,h,e,u,o.kQmsysKe);local function r()local l,n=o.kQmsysKe(u,e(1,3),e(5,6)+2);e(2);return(n*256)+l;end;local k=true;local k=0 local function j()local e=n();local n=n();local d=1;local t=(l(n,1,20)*(2^32))+e;local e=l(n,21,31);local n=((-1)^l(n,32));if(e==0)then if(t==k)then return n*0;else e=1;d=0;end;elseif(e==2047)then return(t==0)and(n*(1/0))or(n*(0/0));end;return o.htEwhCJP(n,e-1023)*(d+(t/(2^52)));end;local p=n;local function y(n)local l;if(not n)then n=p();if(n==0)then return'';end;end;l=o.MKHdpBzD(u,e(1,3),e(5,6)+n-1);e(n)local e=""for n=(1+k),#l do e=e..o.MKHdpBzD(l,n,n)end return e;end;local k=#o.wgoCjqzS(s('\49.\48'))~=1 local e=n;local function g(...)return{...},o.RjGtDhBL('#',...)end local function m()local h={};local u={};local e={};local s={u,h,nil,e};local e=n()local a={}for t=1,e do local l=c();local e;if(l==2)then e=(c()~=#{});elseif(l==1)then local n=j();if k and o.ByDlCfFw(o.wgoCjqzS(n),'.(\48+)$')then n=o.bohHjogW(n);end e=n;elseif(l==0)then e=y();end;a[t]=e;end;for e=1,n()do h[e-(#{1})]=m();end;for h=1,n()do local e=c();if(l(e,1,1)==0)then local o=l(e,2,3);local c=l(e,4,6);local e={r(),r(),nil,nil};if(o==0)then e[d]=r();e[f]=r();elseif(o==#{1})then e[d]=n();elseif(o==b[2])then e[d]=n()-(2^16)elseif(o==b[3])then e[d]=n()-(2^16)e[f]=r();end;if(l(c,1,1)==1)then e[t]=a[e[t]]end if(l(c,2,2)==1)then e[d]=a[e[d]]end if(l(c,3,3)==1)then e[f]=a[e[f]]end u[h]=e;end end;s[3]=c();return s;end;local function _(l,e,n)local t=e;local t=n;return s(o.ByDlCfFw(o.ByDlCfFw(({o.KfZhwaEy(l)})[2],e),n))end local function ee(k,e,u)local function ee(...)local c,_,b,m,s,l,r,z,p,j,y,n;local e=0;while-1<e do if 3>e then if 1<=e then if e>0 then for n=47,94 do if 1~=e then l=-41;r=-1;break;end;b=h(6,68,3,96,k);s=g m=0;break;end;else b=h(6,68,3,96,k);s=g m=0;end else c=h(6,55,1,97,k);_=h(6,46,2,36,k);end else if e>=5 then if e>3 then repeat if 6~=e then n=h(7);break;end;e=-2;until true;else e=-2;end else if e>=0 then repeat if 3~=e then j=o.RjGtDhBL('#',...)-1;y={};break;end;z={};p={...};until true;else j=o.RjGtDhBL('#',...)-1;y={};end end end e=e+1;end;for e=0,j do if(e>=b)then z[e-b]=p[e+1];else n[e]=p[e+1];end;end;local e=j-b+1 local e;local o;local function h(...)while true do end end while true do if l<-40 then l=l+42 end e=c[l];o=e[le];if 12<=o then if 17>=o then if 14>=o then if o<13 then if(n[e[t]]==e[f])then l=l+1;else l=e[d];end;else if 12<o then repeat if 14>o then local l=e[t]local t,e=s(n[l](a(n,l+1,e[d])))r=e+l-1 local e=0;for l=l,r do e=e+1;n[l]=t[e];end;break;end;n[e[t]]=u[e[d]];until true;else local l=e[t]local t,e=s(n[l](a(n,l+1,e[d])))r=e+l-1 local e=0;for l=l,r do e=e+1;n[l]=t[e];end;end end else if o>15 then if 16~=o then local o,c,r,a,f;local l=0;while l>-1 do if 3<=l then if 5<=l then if l>=1 then for e=42,82 do if l<6 then n(f,a);break;end;l=-2;break;end;else l=-2;end else if-1<l then repeat if 4~=l then a=o[r];break;end;f=o[c];until true;else a=o[r];end end else if 1<=l then if 1~=l then r=d;else c=t;end else o=e;end end l=l+1 end else n[e[t]]=(e[d]~=0);end else local o,b,k,j,h;n[e[t]]=u[e[d]];l=l+1;e=c[l];o=e[t];b=n[e[d]];n[o+1]=b;n[o]=b[e[f]];l=l+1;e=c[l];n(e[t],e[d]);l=l+1;e=c[l];o=e[t]k,j=s(n[o](a(n,o+1,e[d])))r=j+o-1 h=0;for e=o,r do h=h+1;n[e]=k[h];end;l=l+1;e=c[l];o=e[t]n[o]=n[o](a(n,o+1,r))l=l+1;e=c[l];n[e[t]]();l=l+1;e=c[l];do return end;end end else if o>20 then if 22>o then do return end;else if 19<=o then repeat if o~=22 then local l=e[t]local t,e=s(n[l](a(n,l+1,e[d])))r=e+l-1 local e=0;for l=l,r do e=e+1;n[l]=t[e];end;break;end;local l=e[t];local t=n[e[d]];n[l+1]=t;n[l]=t[e[f]];until true;else local l=e[t];local t=n[e[d]];n[l+1]=t;n[l]=t[e[f]];end end else if 18>=o then n[e[t]]=u[e[d]];else if 15<o then for h=19,54 do if 19~=o then local e=e[t]n[e]=n[e](a(n,e+1,r))break;end;for o=0,3 do if 2<=o then if 3>o then n[e[t]]=u[e[d]];l=l+1;e=c[l];else if(n[e[t]]==e[f])then l=l+1;else l=e[d];end;end else if o~=0 then u[e[d]]=n[e[t]];l=l+1;e=c[l];else n[e[t]]=(e[d]~=0);l=l+1;e=c[l];end end end break;end;else local e=e[t]n[e]=n[e](a(n,e+1,r))end end end end else if o>5 then if o<9 then if 7<=o then if o==8 then do return end;else l=e[d];end else if(n[e[t]]==e[f])then l=l+1;else l=e[d];end;end else if o>9 then if o>8 then repeat if 11>o then local e=e[t]n[e]=n[e](a(n,e+1,r))break;end;u[e[d]]=n[e[t]];until true;else local e=e[t]n[e]=n[e](a(n,e+1,r))end else local o,c,r,a,f;local l=0;while l>-1 do if 3<=l then if 4<l then if l>3 then repeat if 5~=l then l=-2;break;end;n(f,a);until true;else l=-2;end else if-1<l then for e=19,84 do if l~=4 then a=o[r];break;end;f=o[c];break;end;else a=o[r];end end else if l>0 then if l>1 then r=d;else c=t;end else o=e;end end l=l+1 end end end else if o>2 then if 4<=o then if o>0 then repeat if 5>o then local t=e[t];local l=n[e[d]];n[t+1]=l;n[t]=l[e[f]];break;end;l=e[d];until true;else l=e[d];end else n[e[t]]=(e[d]~=0);end else if 1<=o then if 0<=o then repeat if 2~=o then u[e[d]]=n[e[t]];break;end;n[e[t]]();until true;else n[e[t]]();end else n[e[t]]();end end end end l=1+l;end;end;return ee end;local t=0xff;local c={};local r=(1);local d='';(function(n)local l=n local f=0x00 local e=0x00 l={(function(o)if f>0x2c then return o end f=f+1 e=(e+0x1116-o)%0x22 return(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x87);d='\37';t={function()t()end};d=d..'\100\43';end return true end)'MmUJV'and l[0x2](0x2b4+o))or(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x6e);end return true end)'rWGzJ'and l[0x1](o+0x223))or(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x87);end return true end)'XBid_'and l[0x3](o+0x3dd))or o end),(function(a)if f>0x28 then return a end f=f+1 e=(e+0xcea-a)%0x26 return(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0xb7);end return true end)'mLGSb'and l[0x2](0x100+a))or(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0xa4);d={d..'\58 a',d};c[r]=m();r=r+((not o.gKtFBpJh)and 1 or 0);d[1]='\58'..d[1];t[2]=0xff;end return true end)'ZgPMf'and l[0x3](a+0x36d))or(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x8f);c[r]=ne();r=r+t;end return true end)'lDZsp'and l[0x1](a+0x323))or a end),(function(o)if f>0x24 then return o end f=f+1 e=(e+0x10af-o)%0x1e return(e%0x03==0x2 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x8a);t[2]=(t[2]*(_(function()c()end,a(d))-_(t[1],a(d))))+1;c[r]={};t=t[2];r=r+t;end return true end)'bRmcf'and l[0x2](0xa3+o))or(e%0x03==0x0 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x47);end return true end)'rgIxt'and l[0x3](o+0x2c4))or(e%0x03==0x1 and(function(l)if not n[l]then e=e+0x01 n[l]=(0x82);end return true end)'bsMZQ'and l[0x1](o+0x160))or o end)}l[0x1](0x253f)end){};local e=ee(a(c));return e(...);end return g((function()local n={}local e=0x01;local l;if o.gKtFBpJh then l=o.gKtFBpJh(g)else l=''end if o.ByDlCfFw(l,o.XHIMWuEU)then e=e+0;else e=e+1;end n[e]=0x02;n[n[e]+0x01]=0x03;return n;end)(),...)end)((function(e,n,l,t,d,o)local o;if 3<e then if e<=5 then if 0<=e then for o=47,60 do if 5~=e then local e=t;local t,r,a=d(2);do return function()local d,o,l,n=n(l,e(e,e),e(e,e)+3);e(4);return(n*t)+(l*r)+(o*a)+d;end;end;break;end;local e=t;do return function()local n=n(l,e(e,e),e(e,e));e(1);return n;end;end;break;end;else local e=t;local t,d,o=d(2);do return function()local n,a,r,l=n(l,e(e,e),e(e,e)+3);e(4);return(l*t)+(r*d)+(a*o)+n;end;end;end else if e<=6 then do return d[l]end;else if e<8 then do return setmetatable({},{['__\99\97\108\108']=function(e,t,d,l,n)if n then return e[n]elseif l then return e else e[t]=d end end})end else do return l(e,nil,l);end end end end else if e>1 then if 3>e then do return 16777216,65536,256 end;else do return n(1),n(4,d,t,l,n),n(5,d,t,l)end;end else if e>=-1 then for o=17,75 do if e<1 then do return n(1),n(4,d,t,l,n),n(5,d,t,l)end;break;end;do return function(n,e,l)if l then local e=(n/2^(e-1))%2^((l-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(n%(e+e)>=e)and 1 or 0;end;end;end;break;end;else do return function(l,e,n)if n then local e=(l/2^(e-1))%2^((n-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(l%(e+e)>=e)and 1 or 0;end;end;end;end end end end),...)
