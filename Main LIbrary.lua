--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local a;
a = {cache={},load=function(b)
	if not a.cache[b] then
		a.cache[b] = {c=a[b]()};
	end
	return a.cache[b].c;
end};
do
	a.a = function()
		local b = game:GetService("RunService");
		local c, d, e, f = b.Heartbeat, game:GetService("UserInputService"), game:GetService("TweenService"), loadstring(game:HttpGetAsync([[https://raw.githubusercontent.com/Footagesus/Icons/main/Main.lua]]))();
		f.SetIconsType("lucide");
		local g = {Font="rbxassetid://12187365364",CanDraggable=true,Theme=nil,Themes=nil,WindUI=nil,Signals={},Objects={},FontObjects={},Request=(http_request or (syn and syn.request) or request),DefaultProperties={ScreenGui={ResetOnSpawn=false,ZIndexBehavior="Sibling"},CanvasGroup={BorderSizePixel=0,BackgroundColor3=Color3.new(1, 1, 1)},Frame={BorderSizePixel=0,BackgroundColor3=Color3.new(1, 1, 1)},TextLabel={BackgroundColor3=Color3.new(1, 1, 1),BorderSizePixel=0,Text="",RichText=true,TextColor3=Color3.new(1, 1, 1),TextSize=14},TextButton={BackgroundColor3=Color3.new(1, 1, 1),BorderSizePixel=0,Text="",AutoButtonColor=false,TextColor3=Color3.new(1, 1, 1),TextSize=14},TextBox={BackgroundColor3=Color3.new(1, 1, 1),BorderColor3=Color3.new(0, 0, 0),ClearTextOnFocus=false,Text="",TextColor3=Color3.new(0, 0, 0),TextSize=14},ImageLabel={BackgroundTransparency=1,BackgroundColor3=Color3.new(1, 1, 1),BorderSizePixel=0},ImageButton={BackgroundColor3=Color3.new(1, 1, 1),BorderSizePixel=0,AutoButtonColor=false},UIListLayout={SortOrder="LayoutOrder"}},Colors={Red="#e53935",Orange="#f57c00",Green="#43a047",Blue="#039be5",White="#ffffff",Grey="#484848"}};
		g.Init = function(h)
			g.WindUI = h;
		end;
		g.AddSignal = function(h, i)
			table.insert(g.Signals, h:Connect(i));
		end;
		g.DisconnectAll = function()
			for h, i in next, g.Signals do
				local j = table.remove(g.Signals, h);
				j:Disconnect();
			end
		end;
		g.SafeCallback = function(h, ...)
			if not h then
				return;
			end
			local i, j = pcall(h, ...);
			if not i then
				local k, l = j:find(":%d+: ");
				warn("[ WindUI: DEBUG Mode ] " .. j);
				return g.WindUI({Title="DEBUG Mode: Error",Content=((not l and j) or j:sub(l + 1)),Duration=8});
			end
		end;
		g.SetTheme = function(h)
			g.Theme = h;
			g.UpdateTheme(nil, true);
		end;
		g.AddFontObject = function(h)
			table.insert(g.FontObjects, h);
			g.UpdateFont(g.Font);
		end;
		g.UpdateFont = function(h)
			g.Font = h;
			for i, j in next, g.FontObjects do
				j.FontFace = Font.new(h, j.FontFace.Weight, j.FontFace.Style);
			end
		end;
		g.GetThemeProperty = function(h, i)
			return i[h] or g.Themes.Dark[h];
		end;
		g.AddThemeObject = function(h, i)
			g.Objects[h] = {Object=h,Properties=i};
			g.UpdateTheme(h, false);
			return h;
		end;
		g.UpdateTheme = function(h, i)
			local j = function(j)
				for k, l in pairs(j.Properties or {}) do
					local m = g.GetThemeProperty(l, g.Theme);
					if m then
						if not i then
							j.Object[k] = Color3.fromHex(m);
						else
							g.Tween(j.Object, 0.08, {[k]=Color3.fromHex(m)}):Play();
						end
					end
				end
			end;
			if h then
				local k = g.Objects[h];
				if k then
					j(k);
				end
			else
				for k, l in pairs(g.Objects) do
					j(l);
				end
			end
		end;
		g.Icon = function(h)
			return f.Icon(h);
		end;
		g.New = function(h, i, j)
			local k = Instance.new(h);
			for l, m in next, g.DefaultProperties[h] or {} do
				k[l] = m;
			end
			for n, o in next, i or {} do
				if (n ~= "ThemeTag") then
					k[n] = o;
				end
			end
			for p, q in next, j or {} do
				q.Parent = k;
			end
			if (i and i.ThemeTag) then
				g.AddThemeObject(k, i.ThemeTag);
			end
			if (i and i.FontFace) then
				g.AddFontObject(k);
			end
			return k;
		end;
		g.Tween = function(h, i, j, ...)
			return e:Create(h, TweenInfo.new(i, ...), j);
		end;
		g.NewRoundFrame = function(h, i, j, k, n)
			local o = g.New((n and "ImageButton") or "ImageLabel", {Image=(((i == "Squircle") and "rbxassetid://80999662900595") or ((i == "SquircleOutline") and "rbxassetid://117788349049947") or ((i == "Shadow-sm") and "rbxassetid://84825982946844") or ((i == "Squircle-TL-TR") and "rbxassetid://73569156276236")),ScaleType="Slice",SliceCenter=(((i ~= "Shadow-sm") and Rect.new(256, 256, 256, 256)) or Rect.new(512, 512, 512, 512)),SliceScale=1,BackgroundTransparency=1,ThemeTag=(j.ThemeTag and j.ThemeTag)}, k);
			for p, q in pairs(j or {}) do
				if (p ~= "ThemeTag") then
					o[p] = q;
				end
			end
			local r = function(r)
				local s = ((i ~= "Shadow-sm") and (r / 256)) or (r / 512);
				o.SliceScale = s;
			end;
			r(h);
			return o;
		end;
		local h, i = g.New, g.Tween;
		g.SetDraggable = function(j)
			g.CanDraggable = j;
		end;
		g.Drag = function(j, k, n)
			local o, p, q, r, s, t = {CanDraggable=true};
			if (not k or (type(k) ~= "table")) then
				k = {j};
			end
			local u = function(u)
				local v = u.Position - s;
				g.Tween(j, 0.02, {Position=UDim2.new(t.X.Scale, t.X.Offset + v.X, t.Y.Scale, t.Y.Offset + v.Y)}):Play();
			end;
			for v, w in pairs(k) do
				w.InputBegan:Connect(function(x)
					if (((x.UserInputType == Enum.UserInputType.MouseButton1) or (x.UserInputType == Enum.UserInputType.Touch)) and o.CanDraggable) then
						if (p == nil) then
							p = w;
							q = true;
							s = x.Position;
							t = j.Position;
							if (n and (type(n) == "function")) then
								n(true, p);
							end
							x.Changed:Connect(function()
								if (x.UserInputState == Enum.UserInputState.End) then
									q = false;
									p = nil;
									if (n and (type(n) == "function")) then
										n(false, p);
									end
								end
							end);
						end
					end
				end);
				w.InputChanged:Connect(function(x)
					if ((p == w) and q) then
						if ((x.UserInputType == Enum.UserInputType.MouseMovement) or (x.UserInputType == Enum.UserInputType.Touch)) then
							r = x;
						end
					end
				end);
			end
			d.InputChanged:Connect(function(x)
				if ((x == r) and q and (p ~= nil)) then
					if o.CanDraggable then
						u(x);
					end
				end
			end);
			o.Set = function(x, y)
				o.CanDraggable = y;
			end;
			return o;
		end;
		g.Image = function(j, k, n, o, p, q, r)
			local s = function(s)
				s = s:gsub('[%s/\\:*?"<>|]+', "-");
				s = s:gsub("[^%w%-_%.]", "");
				return s;
			end;
			k = s(k);
			local t = h("Frame", {Size=UDim2.new(0, 0, 0, 0),BackgroundTransparency=1}, {h("ImageLabel", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1,ScaleType="Crop",ThemeTag=(((g.Icon(j) or r) and {ImageColor3=(q and "Icon")}) or nil)}, {h("UICorner", {CornerRadius=UDim.new(0, n)})})});
			if g.Icon(j) then
				t.ImageLabel.Image = g.Icon(j)[1];
				t.ImageLabel.ImageRectOffset = g.Icon(j)[2].ImageRectPosition;
				t.ImageLabel.ImageRectSize = g.Icon(j)[2].ImageRectSize;
			end
			if string.find(j, "http") then
				local u = "WindUI/" .. o .. "/Assets/." .. p .. "-" .. k .. ".png";
				local v, w = pcall(function()
					task.spawn(function()
						if not isfile(u) then
							local v = g.Request({Url=j,Method="GET"}).Body;
							writefile(u, v);
						end
						t.ImageLabel.Image = getcustomasset(u);
					end);
				end);
				if not v then
					warn("[ WindUI.Creator ]  '" .. identifyexecutor() .. "' doesnt support the URL Images. Error: " .. w);
					t:Destroy();
				end
			elseif string.find(j, "rbxassetid") then
				t.ImageLabel.Image = j;
			end
			return t;
		end;
		return g;
	end;
	a.b = function()
		return {Dark={Name="Dark",Accent="#18181b",Outline="#FFFFFF",Text="#FFFFFF",Placeholder="#999999",Background="#0e0e10",Button="#52525b",Icon="#a1a1aa"},Light={Name="Light",Accent="#FFFFFF",Outline="#09090b",Text="#000000",Placeholder="#777777",Background="#e4e4e7",Button="#18181b",Icon="#a1a1aa"},Rose={Name="Rose",Accent="#881337",Outline="#FFFFFF",Text="#FFFFFF",Placeholder="#6B7280",Background="#4c0519",Button="#52525b",Icon="#a1a1aa"},Plant={Name="Plant",Accent="#365314",Outline="#FFFFFF",Text="#e6ffe5",Placeholder="#7d977d",Background="#1a2e05",Button="#52525b",Icon="#a1a1aa"},Red={Name="Red",Accent="#7f1d1d",Outline="#FFFFFF",Text="#ffeded",Placeholder="#977d7d",Background="#450a0a",Button="#52525b",Icon="#a1a1aa"},Indigo={Name="Indigo",Accent="#312e81",Outline="#FFFFFF",Text="#ffeded",Placeholder="#977d7d",Background="#1e1b4b",Button="#52525b",Icon="#a1a1aa"}};
	end;
	a.c = function()
		local b, c, d = {}, {lua={"and","break","or","else","elseif","if","then","until","repeat","while","do","for","in","end","local","return","function","export"},rbx={"game","workspace","script","math","string","table","task","wait","select","next","Enum","tick","assert","shared","loadstring","tonumber","tostring","type","typeof","unpack","Instance","CFrame","Vector3","Vector2","Color3","UDim","UDim2","Ray","BrickColor","OverlapParams","RaycastParams","Axes","Random","Region3","Rect","TweenInfo","collectgarbage","not","utf8","pcall","xpcall","_G","setmetatable","getmetatable","os","pairs","ipairs"},operators={"#","+","-","*","%","/","^","=","~","=","<",">"}}, {numbers=Color3.fromHex("#FAB387"),boolean=Color3.fromHex("#FAB387"),operator=Color3.fromHex("#94E2D5"),lua=Color3.fromHex("#CBA6F7"),rbx=Color3.fromHex("#F38BA8"),str=Color3.fromHex("#A6E3A1"),comment=Color3.fromHex("#9399B2"),null=Color3.fromHex("#F38BA8"),call=Color3.fromHex("#89B4FA"),self_call=Color3.fromHex("#89B4FA"),local_property=Color3.fromHex("#CBA6F7")};
		local e = function(e)
			local f = {};
			for g, h in ipairs(e) do
				f[h] = true;
			end
			return f;
		end;
		local f, g, h = e(c.lua), e(c.rbx), e(c.operators);
		local i = function(i, j)
			local k = i[j];
			if d[k .. "_color"] then
				return d[k .. "_color"];
			end
			if tonumber(k) then
				return d.numbers;
			elseif (k == "nil") then
				return d.null;
			elseif (k:sub(1, 2) == "--") then
				return d.comment;
			elseif h[k] then
				return d.operator;
			elseif f[k] then
				return d.lua;
			elseif g[k] then
				return d.rbx;
			elseif ((k:sub(1, 1) == '"') or (k:sub(1, 1) == "'")) then
				return d.str;
			elseif ((k == "true") or (k == "false")) then
				return d.boolean;
			end
			if (i[j + 1] == "(") then
				if (i[j - 1] == ":") then
					return d.self_call;
				end
				return d.call;
			end
			if (i[j - 1] == ".") then
				if (i[j - 2] == "Enum") then
					return d.rbx;
				end
				return d.local_property;
			end
		end;
		b.run = function(j)
			local k, n, o, p, q = {}, "", false, false, false;
			for r = 1, #j do
				local s = j:sub(r, r);
				if p then
					if ((s == "\n") and not q) then
						table.insert(k, n);
						table.insert(k, s);
						n = "";
						p = false;
					elseif ((j:sub(r - 1, r) == "]]") and q) then
						n ..= "]"
						table.insert(k, n);
						n = "";
						p = false;
						q = false;
					else
						n = n .. s;
					end
				elseif o then
					if (((s == o) and (j:sub(r - 1, r - 1) ~= "\\")) or (s == "\n")) then
						n = n .. s;
						o = false;
					else
						n = n .. s;
					end
				elseif (j:sub(r, r + 1) == "--") then
					table.insert(k, n);
					n = "-";
					p = true;
					q = j:sub(r + 2, r + 3) == "[[";
				elseif ((s == '"') or (s == "'")) then
					table.insert(k, n);
					n = s;
					o = s;
				elseif h[s] then
					table.insert(k, n);
					table.insert(k, s);
					n = "";
				elseif s:match("[%w_]") then
					n = n .. s;
				else
					table.insert(k, n);
					table.insert(k, s);
					n = "";
				end
			end
			table.insert(k, n);
			local r = {};
			for s, t in ipairs(k) do
				local u = i(k, s);
				if u then
					local v = string.format('<font color = "#%s">%s</font>', u:ToHex(), t:gsub("<", "&lt;"):gsub(">", "&gt;"));
					table.insert(r, v);
				else
					table.insert(r, t);
				end
			end
			return table.concat(r);
		end;
		return b;
	end;
	a.d = function()
		local b, c, d, e, f = game:GetService("UserInputService"), game:GetService("TweenService"), a.load("c"), {}, a.load("a");
		local g, h = f.New, f.Tween;
		e.Button = function(i, j, k, n, o, p)
			n = n or "Primary";
			local q, r = 10;
			if (j and (j ~= "")) then
				r = g("ImageLabel", {Image=f.Icon(j)[1],ImageRectSize=f.Icon(j)[2].ImageRectSize,ImageRectOffset=f.Icon(j)[2].ImageRectPosition,Size=UDim2.new(0, 21, 0, 21),BackgroundTransparency=1,ThemeTag={ImageColor3="Icon"}});
			end
			local s = g("TextButton", {Size=UDim2.new(0, 0, 1, 0),AutomaticSize="X",Parent=o,BackgroundTransparency=1}, {f.NewRoundFrame(q, "Squircle", {ThemeTag={ImageColor3=(((n ~= "White") and "Button") or nil)},ImageColor3=(((n == "White") and Color3.new(1, 1, 1)) or nil),Size=UDim2.new(1, 0, 1, 0),Name="Squircle",ImageTransparency=(((n == "Primary") and 0) or ((n == "White") and 0) or 1)}),f.NewRoundFrame(q, "Squircle", {ImageColor3=Color3.new(1, 1, 1),Size=UDim2.new(1, 0, 1, 0),Name="Special",ImageTransparency=(((n == "Secondary") and 0.95) or 1)}),f.NewRoundFrame(q, "Shadow-sm", {ImageColor3=Color3.new(0, 0, 0),Size=UDim2.new(1, 3, 1, 3),AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Name="Shadow",ImageTransparency=(((n == "Secondary") and 0) or 1)}),f.NewRoundFrame(q, "SquircleOutline", {ThemeTag={ImageColor3=(((n ~= "White") and "Outline") or nil)},Size=UDim2.new(1, 0, 1, 0),ImageColor3=(((n == "White") and Color3.new(0, 0, 0)) or nil),ImageTransparency=(((n == "Primary") and 0.95) or 0.85)}),f.NewRoundFrame(q, "Squircle", {Size=UDim2.new(1, 0, 1, 0),Name="Frame",ThemeTag={ImageColor3=(((n ~= "White") and "Text") or nil)},ImageColor3=(((n == "White") and Color3.new(0, 0, 0)) or nil),ImageTransparency=1}, {g("UIPadding", {PaddingLeft=UDim.new(0, 12),PaddingRight=UDim.new(0, 12)}),g("UIListLayout", {FillDirection="Horizontal",Padding=UDim.new(0, 8),VerticalAlignment="Center",HorizontalAlignment="Center"}),r,g("TextLabel", {BackgroundTransparency=1,FontFace=Font.new(f.Font, Enum.FontWeight.SemiBold),Text=(i or "Button"),ThemeTag={TextColor3=((n ~= "Primary") and (n ~= "White") and "Text")},TextColor3=(((n == "Primary") and Color3.new(1, 1, 1)) or ((n == "White") and Color3.new(0, 0, 0)) or nil),AutomaticSize="XY",TextSize=18})})});
			f.AddSignal(s.MouseEnter, function()
				h(s.Frame, 0.047, {ImageTransparency=0.95}):Play();
			end);
			f.AddSignal(s.MouseLeave, function()
				h(s.Frame, 0.047, {ImageTransparency=1}):Play();
			end);
			f.AddSignal(s.MouseButton1Up, function()
				if p then
					p:Close()();
				end
				if k then
					f.SafeCallback(k);
				end
			end);
			return s;
		end;
		e.Input = function(i, j, k, n, o)
			local p, q = 10;
			if (j and (j ~= "")) then
				q = g("ImageLabel", {Image=f.Icon(j)[1],ImageRectSize=f.Icon(j)[2].ImageRectSize,ImageRectOffset=f.Icon(j)[2].ImageRectPosition,Size=UDim2.new(0, 21, 0, 21),BackgroundTransparency=1,ThemeTag={ImageColor3="Icon"}});
			end
			local r = g("TextBox", {BackgroundTransparency=1,TextSize=16,FontFace=Font.new(f.Font, Enum.FontWeight.Regular),Size=UDim2.new(1, (q and -29) or 0, 1, 0),PlaceholderText=i,ClearTextOnFocus=false,ClipsDescendants=true,MultiLine=(((n == "Input") and false) or true),TextWrapped=(((n == "Input") and false) or true),TextXAlignment="Left",TextYAlignment=(((n == "Input") and "Center") or "Top"),ThemeTag={PlaceholderColor3="PlaceholderText",TextColor3="Text"}});
			local s = g("Frame", {Size=UDim2.new(1, 0, 0, 42),Parent=k,BackgroundTransparency=1}, {g("Frame", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1}, {f.NewRoundFrame(p, "Squircle", {ThemeTag={ImageColor3="Accent"},Size=UDim2.new(1, 0, 1, 0),ImageTransparency=0.45}),f.NewRoundFrame(p, "SquircleOutline", {ThemeTag={ImageColor3="Outline"},Size=UDim2.new(1, 0, 1, 0),ImageTransparency=0.9}),f.NewRoundFrame(p, "Squircle", {Size=UDim2.new(1, 0, 1, 0),Name="Frame",ImageColor3=Color3.new(1, 1, 1),ImageTransparency=0.95}, {g("UIPadding", {PaddingTop=UDim.new(0, ((n == "Input") and 0) or 12),PaddingLeft=UDim.new(0, 12),PaddingRight=UDim.new(0, 12),PaddingBottom=UDim.new(0, ((n == "Input") and 0) or 12)}),g("UIListLayout", {FillDirection="Horizontal",Padding=UDim.new(0, 8),VerticalAlignment=(((n == "Input") and "Center") or "Top"),HorizontalAlignment="Left"}),q,r})})});
			f.AddSignal(r.FocusLost, function()
				if o then
					f.SafeCallback(o, r.Text);
				end
			end);
			return s;
		end;
		e.Label = function(i, j, k)
			local n, o = 10;
			if (j and (j ~= "")) then
				o = g("ImageLabel", {Image=f.Icon(j)[1],ImageRectSize=f.Icon(j)[2].ImageRectSize,ImageRectOffset=f.Icon(j)[2].ImageRectPosition,Size=UDim2.new(0, 21, 0, 21),BackgroundTransparency=1,ThemeTag={ImageColor3="Icon"}});
			end
			local p = g("TextLabel", {BackgroundTransparency=1,TextSize=16,FontFace=Font.new(f.Font, Enum.FontWeight.Regular),Size=UDim2.new(1, (o and -29) or 0, 1, 0),TextXAlignment="Left",ThemeTag={TextColor3="Text"},Text=i});
			local q = g("TextButton", {Size=UDim2.new(1, 0, 0, 42),Parent=k,BackgroundTransparency=1,Text=""}, {g("Frame", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1}, {f.NewRoundFrame(n, "Squircle", {ThemeTag={ImageColor3="Accent"},Size=UDim2.new(1, 0, 1, 0),ImageTransparency=0.45}),f.NewRoundFrame(n, "SquircleOutline", {ThemeTag={ImageColor3="Outline"},Size=UDim2.new(1, 0, 1, 0),ImageTransparency=0.9}),f.NewRoundFrame(n, "Squircle", {Size=UDim2.new(1, 0, 1, 0),Name="Frame",ImageColor3=Color3.new(1, 1, 1),ImageTransparency=0.95}, {g("UIPadding", {PaddingLeft=UDim.new(0, 12),PaddingRight=UDim.new(0, 12)}),g("UIListLayout", {FillDirection="Horizontal",Padding=UDim.new(0, 8),VerticalAlignment="Center",HorizontalAlignment="Left"}),o,p})})});
			return q;
		end;
		e.Toggle = function(i, j, k, n)
			local o, p, q = {}, 13;
			if (j and (j ~= "")) then
				q = g("ImageLabel", {Size=UDim2.new(1, -7, 1, -7),BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Image=f.Icon(j)[1],ImageRectOffset=f.Icon(j)[2].ImageRectPosition,ImageRectSize=f.Icon(j)[2].ImageRectSize,ImageTransparency=1,ImageColor3=Color3.new(0, 0, 0)});
			end
			local r = f.NewRoundFrame(p, "Squircle", {ImageTransparency=0.95,ThemeTag={ImageColor3="Text"},Parent=k,Size=UDim2.new(0, 42, 0, 26)}, {f.NewRoundFrame(p, "Squircle", {Size=UDim2.new(1, 0, 1, 0),Name="Layer",ThemeTag={ImageColor3="Button"},ImageTransparency=1}),f.NewRoundFrame(p, "SquircleOutline", {Size=UDim2.new(1, 0, 1, 0),Name="Stroke",ImageColor3=Color3.new(1, 1, 1),ImageTransparency=1}, {g("UIGradient", {Rotation=90,Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})})}),f.NewRoundFrame(p, "Squircle", {Size=UDim2.new(0, 18, 0, 18),Position=UDim2.new(0, 3, 0.5, 0),AnchorPoint=Vector2.new(0, 0.5),ImageTransparency=0,ImageColor3=Color3.new(1, 1, 1),Name="Frame"}, {q})});
			o.Set = function(s, t)
				if t then
					h(r.Frame, 0.1, {Position=UDim2.new(1, -22, 0.5, 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					h(r.Layer, 0.1, {ImageTransparency=0}):Play();
					h(r.Stroke, 0.1, {ImageTransparency=0.95}):Play();
					if q then
						h(q, 0.1, {ImageTransparency=0}):Play();
					end
				else
					h(r.Frame, 0.1, {Position=UDim2.new(0, 4, 0.5, 0),Size=UDim2.new(0, 18, 0, 18)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					h(r.Layer, 0.1, {ImageTransparency=1}):Play();
					h(r.Stroke, 0.1, {ImageTransparency=1}):Play();
					if q then
						h(q, 0.1, {ImageTransparency=1}):Play();
					end
				end
				task.spawn(function()
					if n then
						f.SafeCallback(n, t);
					end
				end);
			end;
			return r, o;
		end;
		e.Checkbox = function(i, j, k, n)
			local o = {};
			j = j or "check";
			local p, q = 10, g("ImageLabel", {Size=UDim2.new(1, -10, 1, -10),BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Image=f.Icon(j)[1],ImageRectOffset=f.Icon(j)[2].ImageRectPosition,ImageRectSize=f.Icon(j)[2].ImageRectSize,ImageTransparency=1,ImageColor3=Color3.new(1, 1, 1)});
			local r = f.NewRoundFrame(p, "Squircle", {ImageTransparency=0.95,ThemeTag={ImageColor3="Text"},Parent=k,Size=UDim2.new(0, 27, 0, 27)}, {f.NewRoundFrame(p, "Squircle", {Size=UDim2.new(1, 0, 1, 0),Name="Layer",ThemeTag={ImageColor3="Button"},ImageTransparency=1}),f.NewRoundFrame(p, "SquircleOutline", {Size=UDim2.new(1, 0, 1, 0),Name="Stroke",ImageColor3=Color3.new(1, 1, 1),ImageTransparency=1}, {g("UIGradient", {Rotation=90,Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})})}),q});
			o.Set = function(s, t)
				if t then
					h(r.Layer, 0.06, {ImageTransparency=0}):Play();
					h(r.Stroke, 0.06, {ImageTransparency=0.95}):Play();
					h(q, 0.06, {ImageTransparency=0}):Play();
				else
					h(r.Layer, 0.05, {ImageTransparency=1}):Play();
					h(r.Stroke, 0.05, {ImageTransparency=1}):Play();
					h(q, 0.06, {ImageTransparency=1}):Play();
				end
				task.spawn(function()
					if n then
						f.SafeCallback(n, t);
					end
				end);
			end;
			return r, o;
		end;
		e.ScrollSlider = function(i, j, k, n)
			local o = g("Frame", {Size=UDim2.new(0, n, 1, 0),BackgroundTransparency=1,Position=UDim2.new(1, 0, 0, 0),AnchorPoint=Vector2.new(1, 0),Parent=j,ZIndex=999,Active=true});
			local p = f.NewRoundFrame(n / 2, "Squircle", {Size=UDim2.new(1, 0, 0, 0),ImageTransparency=0.85,ThemeTag={ImageColor3="Text"},Parent=o});
			local q, r, s, t, u = g("Frame", {Size=UDim2.new(1, 12, 1, 12),Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5),BackgroundTransparency=1,Active=true,ZIndex=999,Parent=p}), false, 0, function()
				local q = i;
				local r, s = q.AbsoluteCanvasSize.Y, q.AbsoluteWindowSize.Y;
				if (r <= s) then
					p.Visible = false;
					return;
				end
				local t = math.clamp(s / r, 0.1, 1);
				p.Size = UDim2.new(1, 0, t, 0);
				p.Visible = true;
			end, function()
				local q, r, s = p.Position.Y.Scale, i.AbsoluteCanvasSize.Y, i.AbsoluteWindowSize.Y;
				local t = math.max(r - s, 0);
				if (t <= 0) then
					return;
				end
				local u = math.max(1 - p.Size.Y.Scale, 0);
				if (u <= 0) then
					return;
				end
				local v = q / u;
				i.CanvasPosition = Vector2.new(i.CanvasPosition.X, v * t);
			end;
			local v = function()
				if r then
					return;
				end
				local v, w, x = i.CanvasPosition.Y, i.AbsoluteCanvasSize.Y, i.AbsoluteWindowSize.Y;
				local y = math.max(w - x, 0);
				if (y <= 0) then
					p.Position = UDim2.new(0, 0, 0, 0);
					return;
				end
				local z, A = v / y, math.max(1 - p.Size.Y.Scale, 0);
				local B = math.clamp(z * A, 0, A);
				p.Position = UDim2.new(0, 0, B, 0);
			end;
			f.AddSignal(o.InputBegan, function(w)
				if ((w.UserInputType == Enum.UserInputType.MouseButton1) or (w.UserInputType == Enum.UserInputType.Touch)) then
					local x = p.AbsolutePosition.Y;
					local y = x + p.AbsoluteSize.Y;
					if not ((w.Position.Y >= x) and (w.Position.Y <= y)) then
						local z, A, B = o.AbsolutePosition.Y, o.AbsoluteSize.Y, p.AbsoluteSize.Y;
						local C, D = (w.Position.Y - z) - (B / 2), A - B;
						local E = math.clamp(C / D, 0, 1 - p.Size.Y.Scale);
						p.Position = UDim2.new(0, 0, E, 0);
						u();
					end
				end
			end);
			f.AddSignal(q.InputBegan, function(w)
				if ((w.UserInputType == Enum.UserInputType.MouseButton1) or (w.UserInputType == Enum.UserInputType.Touch)) then
					r = true;
					s = w.Position.Y - p.AbsolutePosition.Y;
					local x, y;
					x = b.InputChanged:Connect(function(z)
						if ((z.UserInputType == Enum.UserInputType.MouseMovement) or (z.UserInputType == Enum.UserInputType.Touch)) then
							local A, B, C = o.AbsolutePosition.Y, o.AbsoluteSize.Y, p.AbsoluteSize.Y;
							local D, E = (z.Position.Y - A) - s, B - C;
							local F = math.clamp(D / E, 0, 1 - p.Size.Y.Scale);
							p.Position = UDim2.new(0, 0, F, 0);
							u();
						end
					end);
					y = b.InputEnded:Connect(function(z)
						if ((z.UserInputType == Enum.UserInputType.MouseButton1) or (z.UserInputType == Enum.UserInputType.Touch)) then
							r = false;
							if x then
								x:Disconnect();
							end
							if y then
								y:Disconnect();
							end
						end
					end);
				end
			end);
			f.AddSignal(i:GetPropertyChangedSignal("AbsoluteWindowSize"), function()
				t();
				v();
			end);
			f.AddSignal(i:GetPropertyChangedSignal("AbsoluteCanvasSize"), function()
				t();
				v();
			end);
			f.AddSignal(i:GetPropertyChangedSignal("CanvasPosition"), function()
				if not r then
					v();
				end
			end);
			t();
			v();
			return o;
		end;
		e.ToolTip = function(i, j)
			local k, n, o = {Container=nil,ToolTipSize=16}, g("TextLabel", {AutomaticSize="XY",TextWrapped=true,BackgroundTransparency=1,FontFace=Font.new(f.Font, Enum.FontWeight.Medium),Text=i,TextSize=17,ThemeTag={TextColor3="Text"}}), g("UIScale", {Scale=0.9});
			local p = g("CanvasGroup", {AnchorPoint=Vector2.new(0.5, 0),AutomaticSize="XY",BackgroundTransparency=1,Parent=j,GroupTransparency=1,Visible=false}, {g("UISizeConstraint", {MaxSize=Vector2.new(400, math.huge)}),g("Frame", {AutomaticSize="XY",BackgroundTransparency=1,LayoutOrder=99,Visible=false}, {g("ImageLabel", {Size=UDim2.new(0, k.ToolTipSize, 0, k.ToolTipSize / 2),BackgroundTransparency=1,Rotation=180,Image="rbxassetid://89524607682719",ThemeTag={ImageColor3="Accent"}}, {g("ImageLabel", {Size=UDim2.new(0, k.ToolTipSize, 0, k.ToolTipSize / 2),BackgroundTransparency=1,LayoutOrder=99,ImageTransparency=0.9,Image="rbxassetid://89524607682719",ThemeTag={ImageColor3="Text"}})})}),g("Frame", {AutomaticSize="XY",ThemeTag={BackgroundColor3="Accent"}}, {g("UICorner", {CornerRadius=UDim.new(0, 16)}),g("Frame", {ThemeTag={BackgroundColor3="Text"},AutomaticSize="XY",BackgroundTransparency=0.9}, {g("UICorner", {CornerRadius=UDim.new(0, 16)}),g("UIListLayout", {Padding=UDim.new(0, 12),FillDirection="Horizontal",VerticalAlignment="Center"}),n,g("UIPadding", {PaddingTop=UDim.new(0, 12),PaddingLeft=UDim.new(0, 12),PaddingRight=UDim.new(0, 12),PaddingBottom=UDim.new(0, 12)})})}),o,g("UIListLayout", {Padding=UDim.new(0, 0),FillDirection="Vertical",VerticalAlignment="Center",HorizontalAlignment="Center"})});
			k.Container = p;
			k.Open = function(q)
				p.Visible = true;
				h(p, 0.16, {GroupTransparency=0}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				h(o, 0.18, {Scale=1}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
			end;
			k.Close = function(q)
				h(p, 0.2, {GroupTransparency=1}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				h(o, 0.2, {Scale=0.9}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				task.wait(0.25);
				p.Visible = false;
				p:Destroy();
			end;
			return k;
		end;
		e.Code = function(i, j, k, n)
			local o = {Radius=12,Padding=10};
			local p = g("TextLabel", {Text="",TextColor3=Color3.fromHex("#CDD6F4"),TextTransparency=0,TextSize=14,TextWrapped=false,LineHeight=1.15,RichText=true,TextXAlignment="Left",Size=UDim2.new(0, 0, 0, 0),BackgroundTransparency=1,AutomaticSize="XY"}, {g("UIPadding", {PaddingTop=UDim.new(0, o.Padding + 3),PaddingLeft=UDim.new(0, o.Padding + 3),PaddingRight=UDim.new(0, o.Padding + 3),PaddingBottom=UDim.new(0, o.Padding + 3)})});
			p.Font = "Code";
			local q, r = g("ScrollingFrame", {Size=UDim2.new(1, 0, 0, 0),BackgroundTransparency=1,AutomaticCanvasSize="X",ScrollingDirection="X",ElasticBehavior="Never",CanvasSize=UDim2.new(0, 0, 0, 0),ScrollBarThickness=0}, {p}), g("TextButton", {BackgroundTransparency=1,Size=UDim2.new(0, 30, 0, 30),Position=UDim2.new(1, -o.Padding / 2, 0, o.Padding / 2),AnchorPoint=Vector2.new(1, 0),Visible=((n and true) or false)}, {f.NewRoundFrame(o.Radius - 4, "Squircle", {ImageColor3=Color3.fromHex("#ffffff"),ImageTransparency=1,Size=UDim2.new(1, 0, 1, 0),AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Name="Button"}, {g("UIScale", {Scale=1}),g("ImageLabel", {Image=f.Icon("copy")[1],ImageRectSize=f.Icon("copy")[2].ImageRectSize,ImageRectOffset=f.Icon("copy")[2].ImageRectPosition,BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Size=UDim2.new(0, 12, 0, 12),ImageColor3=Color3.fromHex("#ffffff"),ImageTransparency=0.1})})});
			f.AddSignal(r.MouseEnter, function()
				h(r.Button, 0.05, {ImageTransparency=0.95}):Play();
				h(r.Button.UIScale, 0.05, {Scale=0.9}):Play();
			end);
			f.AddSignal(r.InputEnded, function()
				h(r.Button, 0.08, {ImageTransparency=1}):Play();
				h(r.Button.UIScale, 0.08, {Scale=1}):Play();
			end);
			f.NewRoundFrame(o.Radius, "Squircle", {ImageColor3=Color3.fromHex("#212121"),ImageTransparency=0.035,Size=UDim2.new(1, 0, 0, 20 + (o.Padding * 2)),AutomaticSize="Y",Parent=k}, {f.NewRoundFrame(o.Radius, "SquircleOutline", {Size=UDim2.new(1, 0, 1, 0),ImageColor3=Color3.fromHex("#ffffff"),ImageTransparency=0.955}),g("Frame", {BackgroundTransparency=1,Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y"}, {f.NewRoundFrame(o.Radius, "Squircle-TL-TR", {ImageColor3=Color3.fromHex("#ffffff"),ImageTransparency=0.96,Size=UDim2.new(1, 0, 0, 20 + (o.Padding * 2)),Visible=((j and true) or false)}, {g("ImageLabel", {Size=UDim2.new(0, 18, 0, 18),BackgroundTransparency=1,Image="rbxassetid://132464694294269",ImageColor3=Color3.fromHex("#ffffff"),ImageTransparency=0.2}),g("TextLabel", {Text=j,TextColor3=Color3.fromHex("#ffffff"),TextTransparency=0.2,TextSize=16,AutomaticSize="Y",FontFace=Font.new(f.Font, Enum.FontWeight.Medium),TextXAlignment="Left",BackgroundTransparency=1,TextTruncate="AtEnd",Size=UDim2.new(1, r and (-20 - (o.Padding * 2)), 0, 0)}),g("UIPadding", {PaddingLeft=UDim.new(0, o.Padding + 3),PaddingRight=UDim.new(0, o.Padding + 3)}),g("UIListLayout", {Padding=UDim.new(0, o.Padding),FillDirection="Horizontal",VerticalAlignment="Center"})}),q,g("UIListLayout", {Padding=UDim.new(0, 0),FillDirection="Vertical"})}),r});
			f.AddSignal(p:GetPropertyChangedSignal("TextBounds"), function()
				q.Size = UDim2.new(1, 0, 0, p.TextBounds.Y + ((o.Padding + 3) * 2));
			end);
			o.Set = function(s)
				p.Text = d.run(s);
			end;
			o.Set(i);
			f.AddSignal(r.MouseButton1Click, function()
				if n then
					n();
					local s = f.Icon("check");
					r.Button.ImageLabel.Image = s[1];
					r.Button.ImageLabel.ImageRectSize = s[2].ImageRectSize;
					r.Button.ImageLabel.ImageRectOffset = s[2].ImageRectPosition;
				end
			end);
			return o;
		end;
		return e;
	end;
	a.e = function()
		local b = a.load("a");
		local c, d, e = b.New, b.Tween, {UICorner=14,UIPadding=12,Holder=nil,Window=nil};
		e.Init = function(f)
			e.Window = f;
			return e;
		end;
		e.Create = function(f)
			local g = {UICorner=19,UIPadding=16,UIElements={}};
			if f then
				g.UIPadding = 0;
			end
			if f then
				g.UICorner = 22;
			end
			if not f then
				g.UIElements.FullScreen = c("Frame", {ZIndex=999,BackgroundTransparency=1,BackgroundColor3=Color3.fromHex("#2a2a2a"),Size=UDim2.new(1, 0, 1, 0),Active=false,Visible=false,Parent=((f and e.Window) or e.Window.UIElements.Main.Main)}, {c("UICorner", {CornerRadius=UDim.new(0, e.Window.UICorner)})});
			end
			g.UIElements.Main = c("Frame", {ThemeTag={BackgroundColor3="Accent"},AutomaticSize="XY",BackgroundTransparency=1,Visible=false,ZIndex=99999}, {c("UIPadding", {PaddingTop=UDim.new(0, g.UIPadding),PaddingLeft=UDim.new(0, g.UIPadding),PaddingRight=UDim.new(0, g.UIPadding),PaddingBottom=UDim.new(0, g.UIPadding)})});
			g.UIElements.MainContainer = b.NewRoundFrame(g.UICorner, "Squircle", {Visible=false,ImageTransparency=((f and 0.15) or 0),Parent=((f and e.Window) or g.UIElements.FullScreen),Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5),AutomaticSize="XY",ThemeTag={ImageColor3="Accent"},ZIndex=9999}, {g.UIElements.Main,c("UIScale", {Scale=0.9}),b.NewRoundFrame(g.UICorner, "SquircleOutline", {Size=UDim2.new(1, 0, 1, 0),ImageTransparency=0.9,ThemeTag={ImageColor3="Outline"}}, {c("UIGradient", {Rotation=90,Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})})})});
			g.Open = function(h)
				if not f then
					g.UIElements.FullScreen.Visible = true;
					g.UIElements.FullScreen.Active = true;
				end
				task.spawn(function()
					g.UIElements.MainContainer.Visible = true;
					if not f then
						d(g.UIElements.FullScreen, 0.1, {BackgroundTransparency=0.5}):Play();
					end
					d(g.UIElements.MainContainer, 0.1, {ImageTransparency=0}):Play();
					d(g.UIElements.MainContainer.UIScale, 0.1, {Scale=1}):Play();
					task.spawn(function()
						task.wait(0.05);
						g.UIElements.Main.Visible = true;
					end);
				end);
			end;
			g.Close = function(h)
				if not f then
					d(g.UIElements.FullScreen, 0.1, {BackgroundTransparency=1}):Play();
					g.UIElements.FullScreen.Active = false;
					task.spawn(function()
						task.wait(0.1);
						g.UIElements.FullScreen.Visible = false;
					end);
				end
				g.UIElements.Main.Visible = false;
				d(g.UIElements.MainContainer, 0.1, {ImageTransparency=1}):Play();
				d(g.UIElements.MainContainer.UIScale, 0.1, {Scale=0.9}):Play();
				task.spawn(function()
					task.wait(0.1);
					if not f then
						g.UIElements.FullScreen:Destroy();
					else
						g.UIElements.MainContainer:Destroy();
					end
				end);
				return function()
				end;
			end;
			return g;
		end;
		return e;
	end;
	a.f = function()
		local b, c = {}, a.load("a");
		local d, e, f = c.New, c.Tween, a.load("d");
		local g, h = f.Button, f.Input;
		b.new = function(i, j, k)
			local n = a.load("e").Init(i.WindUI.ScreenGui.KeySystem);
			local o, p, q, r = n.Create(true), 200, 430;
			if (i.KeySystem.Thumbnail and i.KeySystem.Thumbnail.Image) then
				q = 430 + (p / 2);
			end
			o.UIElements.Main.AutomaticSize = "Y";
			o.UIElements.Main.Size = UDim2.new(0, q, 0, 0);
			local s;
			if i.Icon then
				s = c.Image(i.Icon, i.Title .. ":" .. i.Icon, 0, i.WindUI.Window, "KeySystem", i.IconThemed);
				s.Size = UDim2.new(0, 24, 0, 24);
				s.LayoutOrder = -1;
			end
			local t, u = d("TextLabel", {AutomaticSize="XY",BackgroundTransparency=1,Text=i.Title,FontFace=Font.new(c.Font, Enum.FontWeight.SemiBold),ThemeTag={TextColor3="Text"},TextSize=20}), d("TextLabel", {AutomaticSize="XY",BackgroundTransparency=1,Text="Key System",AnchorPoint=Vector2.new(1, 0.5),Position=UDim2.new(1, 0, 0.5, 0),TextTransparency=1,FontFace=Font.new(c.Font, Enum.FontWeight.Medium),ThemeTag={TextColor3="Text"},TextSize=16});
			local v = d("Frame", {BackgroundTransparency=1,AutomaticSize="XY"}, {d("UIListLayout", {Padding=UDim.new(0, 14),FillDirection="Horizontal",VerticalAlignment="Center"}),s,t});
			local w, x, y = d("Frame", {AutomaticSize="Y",Size=UDim2.new(1, 0, 0, 0),BackgroundTransparency=1}, {v,u}), (h("Enter Key", "key", nil, function(w)
				r = w;
			end));
			if (i.KeySystem.Note and (i.KeySystem.Note ~= "")) then
				y = d("TextLabel", {Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",FontFace=Font.new(c.Font, Enum.FontWeight.Medium),TextXAlignment="Left",Text=i.KeySystem.Note,TextSize=18,TextTransparency=0.4,ThemeTag={TextColor3="Text"},BackgroundTransparency=1,RichText=true});
			end
			local z, A = (d("Frame", {Size=UDim2.new(1, 0, 0, 42),BackgroundTransparency=1}, {d("Frame", {BackgroundTransparency=1,AutomaticSize="X",Size=UDim2.new(0, 0, 1, 0)}, {d("UIListLayout", {Padding=UDim.new(0, 9),FillDirection="Horizontal"})})}));
			if (i.KeySystem.Thumbnail and i.KeySystem.Thumbnail.Image) then
				local B;
				if i.KeySystem.Thumbnail.Title then
					B = d("TextLabel", {Text=i.KeySystem.Thumbnail.Title,ThemeTag={TextColor3="Text"},TextSize=18,FontFace=Font.new(c.Font, Enum.FontWeight.Medium),BackgroundTransparency=1,AutomaticSize="XY",AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0)});
				end
				A = d("ImageLabel", {Image=i.KeySystem.Thumbnail.Image,BackgroundTransparency=1,Size=UDim2.new(0, p, 1, 0),Parent=o.UIElements.Main,ScaleType="Crop"}, {B,d("UICorner", {CornerRadius=UDim.new(0, 0)})});
			end
			local B, C = d("Frame", {Size=UDim2.new(1, (A and -p) or 0, 1, 0),Position=UDim2.new(0, (A and p) or 0, 0, 0),BackgroundTransparency=1,Parent=o.UIElements.Main}, {d("Frame", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1}, {d("UIListLayout", {Padding=UDim.new(0, 18),FillDirection="Vertical"}),w,y,x,z,d("UIPadding", {PaddingTop=UDim.new(0, 16),PaddingLeft=UDim.new(0, 16),PaddingRight=UDim.new(0, 16),PaddingBottom=UDim.new(0, 16)})})}), g("Exit", "log-out", function()
				o:Close()();
			end, "Tertiary", z.Frame);
			if A then
				C.Parent = A;
				C.Size = UDim2.new(0, 0, 0, 42);
				C.Position = UDim2.new(0, 16, 1, -16);
				C.AnchorPoint = Vector2.new(0, 1);
			end
			if i.KeySystem.URL then
				g("Get key", "key", function()
					setclipboard(i.KeySystem.URL);
				end, "Secondary", z.Frame);
			end
			local D = g("Submit", "arrow-right", function()
				local D = r;
				local E = tostring(i.KeySystem.Key) == tostring(D);
				if (type(i.KeySystem.Key) == "table") then
					E = table.find(i.KeySystem.Key, tostring(D));
				end
				if E then
					o:Close()();
					if i.KeySystem.SaveKey then
						local F = i.Folder or i.Title;
						writefile(F .. "/" .. j .. ".key", tostring(D));
					end
					task.wait(0.4);
					k(true);
				else
					local F, G = TextBoxHolder.UIStroke.Color, TextBoxHolder.BackgroundColor3;
					e(TextBoxHolder.UIStroke, 0.1, {Color=Color3.fromHex("#ff1e1e"),Transparency=0.65}):Play();
					e(TextBoxHolder, 0.1, {BackgroundColor3=Color3.fromHex("#ff1e1e"),Transparency=0.8}):Play();
					task.wait(0.5);
					e(TextBoxHolder.UIStroke, 0.15, {Color=F,Transparency=0.9}):Play();
					e(TextBoxHolder, 0.15, {BackgroundColor3=G,Transparency=0.95}):Play();
				end
			end, "Primary", z);
			D.AnchorPoint = Vector2.new(1, 0.5);
			D.Position = UDim2.new(1, 0, 0.5, 0);
			o:Open();
		end;
		return b;
	end;
	a.g = function()
		local b = a.load("a");
		local c, d, e = b.New, b.Tween, {Size=UDim2.new(0, 300, 1, -156),SizeLower=UDim2.new(0, 300, 1, -56),UICorner=16,UIPadding=14,ButtonPadding=9,Holder=nil,NotificationIndex=0,Notifications={}};
		e.Init = function(f)
			local g = {Lower=false};
			g.SetLower = function(h)
				g.Lower = h;
				g.Frame.Size = (h and e.SizeLower) or e.Size;
			end;
			g.Frame = c("Frame", {Position=UDim2.new(1, -29, 0, 56),AnchorPoint=Vector2.new(1, 0),Size=e.Size,Parent=f,BackgroundTransparency=1}, {c("UIListLayout", {HorizontalAlignment="Center",SortOrder="LayoutOrder",VerticalAlignment="Bottom",Padding=UDim.new(0, 8)}),c("UIPadding", {PaddingBottom=UDim.new(0, 29)})});
			return g;
		end;
		e.New = function(f)
			local g = {Title=(f.Title or "Notification"),Content=(f.Content or nil),Icon=(f.Icon or nil),IconThemed=f.IconThemed,Background=f.Background,BackgroundImageTransparency=f.BackgroundImageTransparency,Duration=(f.Duration or 5),Buttons=(f.Buttons or {}),CanClose=true,UIElements={},Closed=false};
			if (g.CanClose == nil) then
				g.CanClose = true;
			end
			e.NotificationIndex = e.NotificationIndex + 1;
			e.Notifications[e.NotificationIndex] = g;
			local h, i, j = c("UICorner", {CornerRadius=UDim.new(0, e.UICorner)}), (c("UIStroke", {ThemeTag={Color="Text"},Transparency=1,Thickness=0.6}));
			if g.Icon then
				j = b.Image(g.Icon, g.Title .. ":" .. g.Icon, 0, f.Window, "Notification", g.IconThemed);
				j.Size = UDim2.new(0, 26, 0, 26);
				j.Position = UDim2.new(0, e.UIPadding, 0, e.UIPadding);
			end
			local k;
			if g.CanClose then
				k = c("ImageButton", {Image=b.Icon("x")[1],ImageRectSize=b.Icon("x")[2].ImageRectSize,ImageRectOffset=b.Icon("x")[2].ImageRectPosition,BackgroundTransparency=1,Size=UDim2.new(0, 16, 0, 16),Position=UDim2.new(1, -e.UIPadding, 0, e.UIPadding),AnchorPoint=Vector2.new(1, 0),ThemeTag={ImageColor3="Text"}}, {c("TextButton", {Size=UDim2.new(1, 8, 1, 8),BackgroundTransparency=1,AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Text=""})});
			end
			local n, o = c("Frame", {Size=UDim2.new(1, 0, 0, 3),BackgroundTransparency=0.9,ThemeTag={BackgroundColor3="Text"}}), c("Frame", {Size=UDim2.new(1, (g.Icon and (-28 - e.UIPadding)) or 0, 1, 0),Position=UDim2.new(1, 0, 0, 0),AnchorPoint=Vector2.new(1, 0),BackgroundTransparency=1,AutomaticSize="Y"}, {c("UIPadding", {PaddingTop=UDim.new(0, e.UIPadding),PaddingLeft=UDim.new(0, e.UIPadding),PaddingRight=UDim.new(0, e.UIPadding),PaddingBottom=UDim.new(0, e.UIPadding)}),c("TextLabel", {AutomaticSize="Y",Size=UDim2.new(1, -30 - e.UIPadding, 0, 0),TextWrapped=true,TextXAlignment="Left",RichText=true,BackgroundTransparency=1,TextSize=16,ThemeTag={TextColor3="Text"},Text=g.Title,FontFace=Font.new(b.Font, Enum.FontWeight.SemiBold)}),c("UIListLayout", {Padding=UDim.new(0, e.UIPadding / 3)})});
			if g.Content then
				c("TextLabel", {AutomaticSize="Y",Size=UDim2.new(1, 0, 0, 0),TextWrapped=true,TextXAlignment="Left",RichText=true,BackgroundTransparency=1,TextTransparency=0.4,TextSize=15,ThemeTag={TextColor3="Text"},Text=g.Content,FontFace=Font.new(b.Font, Enum.FontWeight.Medium),Parent=o});
			end
			local p = c("CanvasGroup", {Size=UDim2.new(1, 0, 0, 0),Position=UDim2.new(2, 0, 1, 0),AnchorPoint=Vector2.new(0, 1),AutomaticSize="Y",BackgroundTransparency=0.25,ThemeTag={BackgroundColor3="Accent"}}, {c("ImageLabel", {Name="Background",Image=g.Background,BackgroundTransparency=1,Size=UDim2.new(1, 0, 1, 0),ScaleType="Crop",ImageTransparency=g.BackgroundImageTransparency}),i,h,o,j,k,n});
			local q = c("Frame", {BackgroundTransparency=1,Size=UDim2.new(1, 0, 0, 0),Parent=f.Holder}, {p});
			g.Close = function(r)
				if not g.Closed then
					g.Closed = true;
					d(q, 0.45, {Size=UDim2.new(1, 0, 0, -8)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					d(p, 0.55, {Position=UDim2.new(2, 0, 1, 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					task.wait(0.45);
					q:Destroy();
				end
			end;
			task.spawn(function()
				task.wait();
				d(q, 0.45, {Size=UDim2.new(1, 0, 0, p.AbsoluteSize.Y)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				d(p, 0.45, {Position=UDim2.new(0, 0, 1, 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				if g.Duration then
					d(n, g.Duration, {Size=UDim2.new(0, 0, 0, 3)}, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut):Play();
					task.wait(g.Duration);
					g:Close();
				end
			end);
			if k then
				b.AddSignal(k.TextButton.MouseButton1Click, function()
					g:Close();
				end);
			end
			return g;
		end;
		return e;
	end;
	a.h = function()
		local b, c = {}, a.load("a");
		local d, e = c.New, c.Tween;
		b.new = function(f)
			local g, h = {Title=(f.Title or "Dialog"),Content=f.Content,Icon=f.Icon,IconThemed=f.IconThemed,Thumbnail=f.Thumbnail,Buttons=f.Buttons}, a.load("e").Init(f.WindUI.ScreenGui.Popups);
			local i, j, k = h.Create(true), 200, 430;
			if (g.Thumbnail and g.Thumbnail.Image) then
				k = 430 + (j / 2);
			end
			i.UIElements.Main.AutomaticSize = "Y";
			i.UIElements.Main.Size = UDim2.new(0, k, 0, 0);
			local n;
			if g.Icon then
				n = c.Image(g.Icon, g.Title .. ":" .. g.Icon, 0, f.WindUI.Window, "Popup", f.IconThemed);
				n.Size = UDim2.new(0, 24, 0, 24);
				n.LayoutOrder = -1;
			end
			local o = d("TextLabel", {AutomaticSize="XY",BackgroundTransparency=1,Text=g.Title,TextXAlignment="Left",FontFace=Font.new(c.Font, Enum.FontWeight.SemiBold),ThemeTag={TextColor3="Text"},TextSize=20});
			local p = d("Frame", {BackgroundTransparency=1,AutomaticSize="XY"}, {d("UIListLayout", {Padding=UDim.new(0, 14),FillDirection="Horizontal",VerticalAlignment="Center"}),n,o});
			local q, r = (d("Frame", {AutomaticSize="Y",Size=UDim2.new(1, 0, 0, 0),BackgroundTransparency=1}, {p}));
			if (g.Content and (g.Content ~= "")) then
				r = d("TextLabel", {Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",FontFace=Font.new(c.Font, Enum.FontWeight.Medium),TextXAlignment="Left",Text=g.Content,TextSize=18,TextTransparency=0.2,ThemeTag={TextColor3="Text"},BackgroundTransparency=1,RichText=true});
			end
			local s, t = (d("Frame", {Size=UDim2.new(1, 0, 0, 42),BackgroundTransparency=1}, {d("UIListLayout", {Padding=UDim.new(0, 9),FillDirection="Horizontal",HorizontalAlignment="Right"})}));
			if (g.Thumbnail and g.Thumbnail.Image) then
				local u;
				if g.Thumbnail.Title then
					u = d("TextLabel", {Text=g.Thumbnail.Title,ThemeTag={TextColor3="Text"},TextSize=18,FontFace=Font.new(c.Font, Enum.FontWeight.Medium),BackgroundTransparency=1,AutomaticSize="XY",AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0)});
				end
				t = d("ImageLabel", {Image=g.Thumbnail.Image,BackgroundTransparency=1,Size=UDim2.new(0, j, 1, 0),Parent=i.UIElements.Main,ScaleType="Crop"}, {u,d("UICorner", {CornerRadius=UDim.new(0, 0)})});
			end
			local u, v = d("Frame", {Size=UDim2.new(1, (t and -j) or 0, 1, 0),Position=UDim2.new(0, (t and j) or 0, 0, 0),BackgroundTransparency=1,Parent=i.UIElements.Main}, {d("Frame", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1}, {d("UIListLayout", {Padding=UDim.new(0, 18),FillDirection="Vertical"}),q,r,s,d("UIPadding", {PaddingTop=UDim.new(0, 16),PaddingLeft=UDim.new(0, 16),PaddingRight=UDim.new(0, 16),PaddingBottom=UDim.new(0, 16)})})}), a.load("d").Button;
			for w, x in next, g.Buttons do
				v(x.Title, x.Icon, x.Callback, x.Variant, s, i);
			end
			i:Open();
			return g;
		end;
		return b;
	end;
	a.i = function()
		local b, c = (game:GetService("HttpService"));
		c = {Window=nil,Folder=nil,Configs={},Parser={Colorpicker={Save=function(d)
			return {__type=d.__type,value=d.Default:ToHex(),transparency=(d.Transparency or nil)};
		end,Load=function(d, e)
			if d then
				d:Update(Color3.fromHex(e.value), e.transparency or nil);
			end
		end},Dropdown={Save=function(d)
			return {__type=d.__type,value=d.Value};
		end,Load=function(d, e)
			if d then
				d:Select(e.value);
			end
		end},Input={Save=function(d)
			return {__type=d.__type,value=d.Value};
		end,Load=function(d, e)
			if d then
				d:Set(e.value);
			end
		end},Keybind={Save=function(d)
			return {__type=d.__type,value=d.Value};
		end,Load=function(d, e)
			if d then
				d:Set(e.value);
			end
		end},Slider={Save=function(d)
			return {__type=d.__type,value=d.Value.Default};
		end,Load=function(d, e)
			if d then
				d:Set(e.value);
			end
		end},Toggle={Save=function(d)
			return {__type=d.__type,value=d.Value};
		end,Load=function(d, e)
			if d then
				d:Set(e.value);
			end
		end}}};
		c.Init = function(d, e)
			c.Window = e;
			c.Folder = e.Folder;
			return c;
		end;
		c.CreateConfig = function(d, e)
			local f = {Path=("WindUI/" .. c.Folder .. "/config/" .. e .. ".json"),Elements={}};
			if not e then
				return false, "No config file is selected";
			end
			f.Register = function(g, h, i)
				f.Elements[h] = i;
			end;
			f.Save = function(g)
				local h = {Elements={}};
				for i, j in next, f.Elements do
					if c.Parser[j.__type] then
						h.Elements[tostring(i)] = c.Parser[j.__type].Save(j);
					end
				end
				print(b:JSONEncode(h));
				writefile(f.Path, b:JSONEncode(h));
			end;
			f.Load = function(g)
				if not isfile(f.Path) then
					return false, "Invalid file";
				end
				local h = b:JSONDecode(readfile(f.Path));
				for i, j in next, h.Elements do
					if (f.Elements[i] and c.Parser[j.__type]) then
						task.spawn(function()
							c.Parser[j.__type].Load(f.Elements[i], j);
						end);
					end
				end
			end;
			c.Configs[e] = f;
			return f;
		end;
		return c;
	end;
	a.j = function()
		local b = a.load("a");
		local c, d, e, f = b.New, b.NewRoundFrame, b.Tween, game:GetService("UserInputService");
		return function(g)
			local h = {Title=g.Title,Desc=(g.Desc or nil),Hover=g.Hover,Thumbnail=g.Thumbnail,ThumbnailSize=(g.ThumbnailSize or 80),Image=g.Image,IconThemed=(g.IconThemed or false),ImageSize=(g.ImageSize or 30),Color=g.Color,Scalable=g.Scalable,Parent=g.Parent,UIPadding=12,UICorner=13,UIElements={}};
			local i, j, k, n = h.ImageSize, h.ThumbnailSize, true, 0;
			if h.Thumbnail then
				ThumbnailFrame = b.Image(h.Thumbnail, h.Title, h.UICorner - 3, g.Window.Folder, "Thumbnail", false, h.IconThemed);
				ThumbnailFrame.Size = UDim2.new(1, 0, 0, j);
			end
			if h.Image then
				ImageFrame = b.Image(h.Image, h.Title, h.UICorner - 3, g.Window.Folder, "Image", (h.Color and true) or false);
				if (h.Color == "White") then
					ImageFrame.ImageLabel.ImageColor3 = Color3.new(0, 0, 0);
				elseif h.Color then
					ImageFrame.ImageLabel.ImageColor3 = Color3.new(1, 1, 1);
				end
				ImageFrame.Size = UDim2.new(0, i, 0, i);
				n = i;
			end
			local o = function(o, p)
				return c("TextLabel", {BackgroundTransparency=1,Text=(o or ""),TextSize=(((p == "Desc") and 15) or 16),TextXAlignment="Left",ThemeTag={TextColor3=((not h.Color and (((p == "Desc") and "Icon") or "Text")) or nil)},TextColor3=((h.Color and (((h.Color == "White") and Color3.new(0, 0, 0)) or ((h.Color ~= "White") and Color3.new(1, 1, 1)))) or nil),TextTransparency=(h.Color and (((p == "Desc") and 0.3) or 0)),TextWrapped=true,Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",FontFace=Font.new(b.Font, Enum.FontWeight.Medium)});
			end;
			local p, q = o(h.Title, "Title"), o(h.Desc, "Desc");
			if (not h.Desc or (h.Desc == "")) then
				q.Visible = false;
			end
			h.UIElements.Container = c("Frame", {Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",BackgroundTransparency=1}, {c("UIListLayout", {Padding=UDim.new(0, h.UIPadding),FillDirection="Vertical",VerticalAlignment="Top",HorizontalAlignment="Left"}),ThumbnailFrame,c("Frame", {Size=UDim2.new(1, -g.TextOffset, 0, 0),AutomaticSize="Y",BackgroundTransparency=1}, {c("UIListLayout", {Padding=UDim.new(0, h.UIPadding),FillDirection="Horizontal",VerticalAlignment="Top",HorizontalAlignment="Left"}),ImageFrame,c("Frame", {BackgroundTransparency=1,AutomaticSize="Y",Size=UDim2.new(1, -n, 0, 50 - (h.UIPadding * 2))}, {c("UIListLayout", {Padding=UDim.new(0, 4),FillDirection="Vertical",VerticalAlignment="Center",HorizontalAlignment="Left"}),p,q})})});
			h.UIElements.Locked = d(h.UICorner, "Squircle", {Size=UDim2.new(1, h.UIPadding * 2, 1, h.UIPadding * 2),ImageTransparency=0.4,AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),ImageColor3=Color3.new(0, 0, 0),Visible=false,Active=false,ZIndex=9999999});
			h.UIElements.Main = d(h.UICorner, "Squircle", {Size=UDim2.new(1, 0, 0, 50),AutomaticSize="Y",ImageTransparency=((h.Color and 0.1) or 0.95),Parent=g.Parent,ThemeTag={ImageColor3=((not h.Color and "Text") or nil)},ImageColor3=((h.Color and Color3.fromHex(b.Colors[h.Color])) or nil)}, {h.UIElements.Container,h.UIElements.Locked,c("UIPadding", {PaddingTop=UDim.new(0, h.UIPadding),PaddingLeft=UDim.new(0, h.UIPadding),PaddingRight=UDim.new(0, h.UIPadding),PaddingBottom=UDim.new(0, h.UIPadding)})}, true);
			if h.Hover then
				b.AddSignal(h.UIElements.Main.MouseEnter, function()
					if k then
						e(h.UIElements.Main, 0.05, {ImageTransparency=((h.Color and 0.15) or 0.9)}):Play();
					end
				end);
				b.AddSignal(h.UIElements.Main.InputEnded, function()
					if k then
						e(h.UIElements.Main, 0.05, {ImageTransparency=((h.Color and 0.1) or 0.95)}):Play();
					end
				end);
			end
			h.SetTitle = function(r, s)
				s.Text = s;
			end;
			h.SetDesc = function(r, s)
				q.Text = s or "";
				if not s then
					q.Visible = false;
				elseif not q.Visible then
					q.Visible = true;
				end
			end;
			h.Destroy = function(r)
				h.UIElements.Main:Destroy();
			end;
			h.Lock = function(r)
				k = false;
				h.UIElements.Locked.Active = true;
				h.UIElements.Locked.Visible = true;
			end;
			h.Unlock = function(r)
				k = true;
				h.UIElements.Locked.Active = false;
				h.UIElements.Locked.Visible = false;
			end;
			return h;
		end;
	end;
	a.k = function()
		local b = a.load("a");
		local c, d = b.New, {};
		d.New = function(e, f)
			local g, h = {__type="Button",Title=(f.Title or "Button"),Desc=(f.Desc or nil),Locked=(f.Locked or false),Callback=(f.Callback or function()
			end),UIElements={}}, true;
			g.ButtonFrame = a.load("j")({Title=g.Title,Desc=g.Desc,Parent=f.Parent,Window=f.Window,TextOffset=20,Hover=true,Scalable=true});
			g.UIElements.ButtonIcon = c("ImageLabel", {Image=b.Icon("mouse-pointer-click")[1],ImageRectOffset=b.Icon("mouse-pointer-click")[2].ImageRectPosition,ImageRectSize=b.Icon("mouse-pointer-click")[2].ImageRectSize,BackgroundTransparency=1,Parent=g.ButtonFrame.UIElements.Main,Size=UDim2.new(0, 20, 0, 20),AnchorPoint=Vector2.new(1, 0.5),Position=UDim2.new(1, 0, 0.5, 0),ThemeTag={ImageColor3="Text"}});
			g.Lock = function(i)
				h = false;
				return g.ButtonFrame:Lock();
			end;
			g.Unlock = function(i)
				h = true;
				return g.ButtonFrame:Unlock();
			end;
			if g.Locked then
				g:Lock();
			end
			b.AddSignal(g.ButtonFrame.UIElements.Main.MouseButton1Click, function()
				if h then
					task.spawn(function()
						b.SafeCallback(g.Callback);
					end);
				end
			end);
			return g.__type, g;
		end;
		return d;
	end;
	a.l = function()
		local b = a.load("a");
		local c, d, e = b.New, b.Tween, a.load("d");
		local f, g, h = e.Toggle, e.Checkbox, {};
		h.New = function(i, j)
			local k = {__type="Toggle",Title=(j.Title or "Toggle"),Desc=(j.Desc or nil),Value=j.Value,Icon=(j.Icon or nil),Type=(j.Type or "Toggle"),Callback=(j.Callback or function()
			end),UIElements={}};
			k.ToggleFrame = a.load("j")({Title=k.Title,Desc=k.Desc,Window=j.Window,Parent=j.Parent,TextOffset=44,Hover=false});
			local n = true;
			if (k.Value == nil) then
				k.Value = false;
			end
			k.Lock = function(o)
				n = false;
				return k.ToggleFrame:Lock();
			end;
			k.Unlock = function(o)
				n = true;
				return k.ToggleFrame:Unlock();
			end;
			if k.Locked then
				k:Lock();
			end
			local o, p, q = k.Value;
			if (k.Type == "Toggle") then
				p, q = f(o, k.Icon, k.ToggleFrame.UIElements.Main, k.Callback);
			elseif (k.Type == "Checkbox") then
				p, q = g(o, k.Icon, k.ToggleFrame.UIElements.Main, k.Callback);
			else
				error("Unknown Toggle Type: " .. tostring(k.Type));
			end
			p.AnchorPoint = Vector2.new(1, 0.5);
			p.Position = UDim2.new(1, 0, 0.5, 0);
			k.Set = function(r, s)
				if n then
					q:Set(s);
					o = s;
					k.Value = s;
				end
			end;
			k:Set(o);
			b.AddSignal(k.ToggleFrame.UIElements.Main.MouseButton1Click, function()
				k:Set(not o);
			end);
			return k.__type, k;
		end;
		return h;
	end;
	a.m = function()
		local b = a.load("a");
		local c, d, e, f = b.New, b.Tween, {}, false;
		e.New = function(g, h)
			local i, j, k, n = {__type="Slider",Title=(h.Title or "Slider"),Desc=(h.Desc or nil),Locked=(h.Locked or nil),Value=(h.Value or {}),Step=(h.Step or 1),Callback=(h.Callback or function()
			end),UIElements={},IsFocusing=false};
			local o = i.Value.Default or i.Value.Min or 0;
			local p, q, r, s = o, (o - (i.Value.Min or 0)) / ((i.Value.Max or 100) - (i.Value.Min or 0)), true, (i.Step % 1) ~= 0;
			local t, u = function(t)
				if s then
					return string.format("%.2f", t);
				else
					return tostring(math.floor(t + 0.5));
				end
			end, function(t)
				if s then
					return math.floor((t / i.Step) + 0.5) * i.Step;
				else
					return math.floor((t / i.Step) + 0.5) * i.Step;
				end
			end;
			i.SliderFrame = a.load("j")({Title=i.Title,Desc=i.Desc,Parent=h.Parent,TextOffset=0,Hover=false});
			i.UIElements.SliderIcon = b.NewRoundFrame(99, "Squircle", {ImageTransparency=0.95,Size=UDim2.new(1, -68, 0, 4),Name="Frame",ThemeTag={ImageColor3="Text"}}, {b.NewRoundFrame(99, "Squircle", {Name="Frame",Size=UDim2.new(q, 0, 1, 0),ImageTransparency=0.1,ThemeTag={ImageColor3="Button"}}, {b.NewRoundFrame(99, "Squircle", {Size=UDim2.new(0, 13, 0, 13),Position=UDim2.new(1, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5),ThemeTag={ImageColor3="Text"}})})});
			i.UIElements.SliderContainer = c("Frame", {Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",Position=UDim2.new(0, 0, 0, 0),BackgroundTransparency=1,Parent=i.SliderFrame.UIElements.Container}, {c("UIListLayout", {Padding=UDim.new(0, 8),FillDirection="Horizontal",VerticalAlignment="Center"}),i.UIElements.SliderIcon,c("TextBox", {Size=UDim2.new(0, 60, 0, 0),TextXAlignment="Left",Text=t(o),ThemeTag={TextColor3="Text"},TextTransparency=0.4,AutomaticSize="Y",TextSize=15,FontFace=Font.new(b.Font, Enum.FontWeight.Medium),BackgroundTransparency=1,LayoutOrder=-1})});
			i.Lock = function(v)
				r = false;
				return i.SliderFrame:Lock();
			end;
			i.Unlock = function(v)
				r = true;
				return i.SliderFrame:Unlock();
			end;
			if i.Locked then
				i:Lock();
			end
			i.Set = function(v, w, x)
				if r then
					if (not i.IsFocusing and not f and (not x or (x.UserInputType == Enum.UserInputType.MouseButton1) or (x.UserInputType == Enum.UserInputType.Touch))) then
						w = math.clamp(w, i.Value.Min or 0, i.Value.Max or 100);
						local y = math.clamp((w - (i.Value.Min or 0)) / ((i.Value.Max or 100) - (i.Value.Min or 0)), 0, 1);
						w = u(i.Value.Min + (y * (i.Value.Max - i.Value.Min)));
						if (w ~= p) then
							d(i.UIElements.SliderIcon.Frame, 0.08, {Size=UDim2.new(y, 0, 1, 0)}):Play();
							i.UIElements.SliderContainer.TextBox.Text = t(w);
							i.Value.Default = t(w);
							p = w;
							b.SafeCallback(i.Callback, t(w));
						end
						if x then
							j = x.UserInputType == Enum.UserInputType.Touch;
							i.SliderFrame.Parent.ScrollingEnabled = false;
							f = true;
							k = game:GetService("RunService").RenderStepped:Connect(function()
								local z = (j and x.Position.X) or game:GetService("UserInputService"):GetMouseLocation().X;
								local A = math.clamp((z - i.UIElements.SliderIcon.AbsolutePosition.X) / i.UIElements.SliderIcon.AbsoluteSize.X, 0, 1);
								w = u(i.Value.Min + (A * (i.Value.Max - i.Value.Min)));
								if (w ~= p) then
									d(i.UIElements.SliderIcon.Frame, 0.08, {Size=UDim2.new(A, 0, 1, 0)}):Play();
									i.UIElements.SliderContainer.TextBox.Text = t(w);
									i.Value.Default = t(w);
									p = w;
									b.SafeCallback(i.Callback, t(w));
								end
							end);
							n = game:GetService("UserInputService").InputEnded:Connect(function(z)
								if (((z.UserInputType == Enum.UserInputType.MouseButton1) or (z.UserInputType == Enum.UserInputType.Touch)) and (x == z)) then
									k:Disconnect();
									n:Disconnect();
									f = false;
									i.SliderFrame.Parent.ScrollingEnabled = true;
								end
							end);
						end
					end
				end
			end;
			b.AddSignal(i.UIElements.SliderContainer.TextBox.FocusLost, function(v)
				if v then
					local w = tonumber(i.UIElements.SliderContainer.TextBox.Text);
					if w then
						i:Set(w);
					else
						i.UIElements.SliderContainer.TextBox.Text = t(p);
					end
				end
			end);
			b.AddSignal(i.UIElements.SliderContainer.InputBegan, function(v)
				i:Set(o, v);
			end);
			return i.__type, i;
		end;
		return e;
	end;
	a.n = function()
		local b, c = game:GetService("UserInputService"), a.load("a");
		local d, e, f, g = c.New, c.Tween, {UICorner=6,UIPadding=8}, a.load("d");
		local h = g.Label;
		f.New = function(i, j)
			local k, n = {__type="Keybind",Title=(j.Title or "Keybind"),Desc=(j.Desc or nil),Locked=(j.Locked or false),Value=(j.Value or "F"),Callback=(j.Callback or function()
			end),CanChange=(j.CanChange or true),Picking=false,UIElements={}}, true;
			k.KeybindFrame = a.load("j")({Title=k.Title,Desc=k.Desc,Parent=j.Parent,TextOffset=85,Hover=k.CanChange});
			k.UIElements.Keybind = h(k.Value, nil, k.KeybindFrame.UIElements.Main);
			k.UIElements.Keybind.Size = UDim2.new(0, 24 + k.UIElements.Keybind.Frame.Frame.TextLabel.TextBounds.X, 0, 42);
			k.UIElements.Keybind.AnchorPoint = Vector2.new(1, 0.5);
			k.UIElements.Keybind.Position = UDim2.new(1, 0, 0.5, 0);
			d("UIScale", {Parent=k.UIElements.Keybind,Scale=0.85});
			c.AddSignal(k.UIElements.Keybind.Frame.Frame.TextLabel:GetPropertyChangedSignal("TextBounds"), function()
				k.UIElements.Keybind.Size = UDim2.new(0, 24 + k.UIElements.Keybind.Frame.Frame.TextLabel.TextBounds.X, 0, 42);
			end);
			k.Lock = function(o)
				n = false;
				return k.KeybindFrame:Lock();
			end;
			k.Unlock = function(o)
				n = true;
				return k.KeybindFrame:Unlock();
			end;
			k.Set = function(o, p)
				k.Value = p;
				k.UIElements.Keybind.Frame.Frame.TextLabel.Text = p;
			end;
			if k.Locked then
				k:Lock();
			end
			c.AddSignal(k.KeybindFrame.UIElements.Main.MouseButton1Click, function()
				if n then
					if k.CanChange then
						k.Picking = true;
						k.UIElements.Keybind.Frame.Frame.TextLabel.Text = "...";
						task.wait(0.2);
						local o;
						o = b.InputBegan:Connect(function(p)
							local q;
							if (p.UserInputType == Enum.UserInputType.Keyboard) then
								q = p.KeyCode.Name;
							elseif (p.UserInputType == Enum.UserInputType.MouseButton1) then
								q = "MouseLeft";
							elseif (p.UserInputType == Enum.UserInputType.MouseButton2) then
								q = "MouseRight";
							end
							local r;
							r = b.InputEnded:Connect(function(s)
								if ((s.KeyCode.Name == q) or ((q == "MouseLeft") and (s.UserInputType == Enum.UserInputType.MouseButton1)) or ((q == "MouseRight") and (s.UserInputType == Enum.UserInputType.MouseButton2))) then
									k.Picking = false;
									k.UIElements.Keybind.Frame.Frame.TextLabel.Text = q;
									k.Value = q;
									o:Disconnect();
									r:Disconnect();
								end
							end);
						end);
					end
				end
			end);
			c.AddSignal(b.InputBegan, function(o)
				if n then
					if (o.KeyCode.Name == k.Value) then
						c.SafeCallback(k.Callback, o.KeyCode.Name);
					end
				end
			end);
			return k.__type, k;
		end;
		return f;
	end;
	a.o = function()
		local b = a.load("a");
		local c, d, e, f = b.New, b.Tween, {UICorner=8,UIPadding=8}, a.load("d");
		local g, h = f.Button, f.Input;
		e.New = function(i, j)
			local k, n = {__type="Input",Title=(j.Title or "Input"),Desc=(j.Desc or nil),Type=(j.Type or "Input"),Locked=(j.Locked or false),InputIcon=(j.InputIcon or false),PlaceholderText=(j.Placeholder or "Enter Text..."),Value=(j.Value or ""),Callback=(j.Callback or function()
			end),ClearTextOnFocus=(j.ClearTextOnFocus or false),UIElements={}}, true;
			k.InputFrame = a.load("j")({Title=k.Title,Desc=k.Desc,Parent=j.Parent,TextOffset=0,Hover=false});
			local o = h(k.PlaceholderText, k.InputIcon, k.InputFrame.UIElements.Container, k.Type, function(o)
				k:Set(o);
			end);
			o.Size = UDim2.new(1, 0, 0, ((k.Type == "Input") and 42) or 148);
			c("UIScale", {Parent=o,Scale=1});
			k.Lock = function(p)
				n = false;
				return k.InputFrame:Lock();
			end;
			k.Unlock = function(p)
				n = true;
				return k.InputFrame:Unlock();
			end;
			k.Set = function(p, q)
				if n then
					b.SafeCallback(k.Callback, q);
					o.Frame.Frame.TextBox.Text = q;
					k.Value = q;
				end
			end;
			k:Set(k.Value);
			if k.Locked then
				k:Lock();
			end
			return k.__type, k;
		end;
		return e;
	end;
	a.p = function()
		local b, c, d, e = game:GetService("UserInputService"), game:GetService("Players").LocalPlayer:GetMouse(), game:GetService("Workspace").CurrentCamera, a.load("a");
		local f, g, h = e.New, e.Tween, a.load("d");
		local i, j = h.Label, {UICorner=10,UIPadding=12,MenuCorner=15,MenuPadding=5,TabPadding=6};
		j.New = function(k, n)
			local o, p = {__type="Dropdown",Title=(n.Title or "Dropdown"),Desc=(n.Desc or nil),Locked=(n.Locked or false),Values=(n.Values or {}),Value=n.Value,AllowNone=n.AllowNone,Multi=n.Multi,Callback=(n.Callback or function()
			end),UIElements={},Opened=false,Tabs={}}, true;
			o.DropdownFrame = a.load("j")({Title=o.Title,Desc=o.Desc,Parent=n.Parent,TextOffset=0,Hover=false});
			o.UIElements.Dropdown = i("", nil, o.DropdownFrame.UIElements.Container);
			o.UIElements.Dropdown.Frame.Frame.TextLabel.TextTruncate = "AtEnd";
			o.UIElements.Dropdown.Frame.Frame.TextLabel.Size = UDim2.new(1, ((o.UIElements.Dropdown.Frame.Frame.TextLabel.Size.X.Offset - 18) - 12) - 12, 0, 0);
			o.UIElements.Dropdown.Size = UDim2.new(1, 0, 0, 40);
			f("ImageLabel", {Image=e.Icon("chevrons-up-down")[1],ImageRectOffset=e.Icon("chevrons-up-down")[2].ImageRectPosition,ImageRectSize=e.Icon("chevrons-up-down")[2].ImageRectSize,Size=UDim2.new(0, 18, 0, 18),Position=UDim2.new(1, -12, 0.5, 0),ThemeTag={ImageColor3="Icon"},AnchorPoint=Vector2.new(1, 0.5),Parent=o.UIElements.Dropdown.Frame});
			o.UIElements.UIListLayout = f("UIListLayout", {Padding=UDim.new(0, j.MenuPadding / 1.5),FillDirection="Vertical"});
			o.UIElements.Menu = e.NewRoundFrame(j.MenuCorner, "Squircle", {ThemeTag={ImageColor3="Background"},ImageTransparency=0.05,Size=UDim2.new(1, 0, 1, 0),AnchorPoint=Vector2.new(1, 0),Position=UDim2.new(1, 0, 0, 0)}, {f("UIPadding", {PaddingTop=UDim.new(0, j.MenuPadding),PaddingLeft=UDim.new(0, j.MenuPadding),PaddingRight=UDim.new(0, j.MenuPadding),PaddingBottom=UDim.new(0, j.MenuPadding)}),f("CanvasGroup", {BackgroundTransparency=1,Size=UDim2.new(1, 0, 1, 0),ClipsDescendants=true}, {f("UICorner", {CornerRadius=UDim.new(0, j.MenuCorner - j.MenuPadding)}),f("ScrollingFrame", {Size=UDim2.new(1, 0, 1, 0),ScrollBarThickness=0,ScrollingDirection="Y",AutomaticCanvasSize="Y",CanvasSize=UDim2.new(0, 0, 0, 0),BackgroundTransparency=1,ScrollBarImageTransparency=1}, {o.UIElements.UIListLayout})})});
			o.UIElements.MenuCanvas = f("CanvasGroup", {Size=UDim2.new(0, 190, 0, 300),BackgroundTransparency=1,Position=UDim2.new(-10, 0, -10, 0),Visible=false,Active=false,GroupTransparency=1,Parent=n.WindUI.DropdownGui,AnchorPoint=Vector2.new(1, 0)}, {o.UIElements.Menu,f("UISizeConstraint", {MinSize=Vector2.new(190, 0)})});
			o.Lock = function(q)
				p = false;
				return o.DropdownFrame:Lock();
			end;
			o.Unlock = function(q)
				p = true;
				return o.DropdownFrame:Unlock();
			end;
			if o.Locked then
				o:Lock();
			end
			local q, r = function()
				o.UIElements.Menu.CanvasGroup.ScrollingFrame.CanvasSize = UDim2.fromOffset(0, o.UIElements.UIListLayout.AbsoluteContentSize.Y);
			end, function()
				if (#o.Values > 10) then
					o.UIElements.MenuCanvas.Size = UDim2.fromOffset(o.UIElements.UIListLayout.AbsoluteContentSize.X, 392);
				else
					o.UIElements.MenuCanvas.Size = UDim2.fromOffset(o.UIElements.UIListLayout.AbsoluteContentSize.X, o.UIElements.UIListLayout.AbsoluteContentSize.Y + j.MenuPadding);
				end
			end;
			function UpdatePosition()
				local s, t = o.UIElements.Dropdown, o.UIElements.MenuCanvas;
				local u, v, w = ((d.ViewportSize.Y - (s.AbsolutePosition.Y + s.AbsoluteSize.Y)) - j.MenuPadding) - 54, t.AbsoluteSize.Y + j.MenuPadding, -54;
				if (u < v) then
					w = (v - u) - 54;
				end
				t.Position = UDim2.new(0, s.AbsolutePosition.X + s.AbsoluteSize.X, 0, ((s.AbsolutePosition.Y + s.AbsoluteSize.Y) - w) + j.MenuPadding);
			end
			o.Display = function(s)
				local t, u = o.Values, "";
				if o.Multi then
					for v, w in next, t do
						if table.find(o.Value, w) then
							u = u .. w .. ", ";
						end
					end
					u = u:sub(1, #u - 2);
				else
					u = o.Value or "";
				end
				o.UIElements.Dropdown.Frame.Frame.TextLabel.Text = ((u == "") and "--") or u;
			end;
			o.Refresh = function(s, t)
				for u, v in next, o.UIElements.Menu.CanvasGroup.ScrollingFrame:GetChildren() do
					if not v:IsA("UIListLayout") then
						v:Destroy();
					end
				end
				o.Tabs = {};
				for w, x in next, t do
					local y = {Name=x,Selected=false,UIElements={}};
					y.UIElements.TabItem = f("TextButton", {Size=UDim2.new(1, 0, 0, 34),BackgroundTransparency=1,Parent=o.UIElements.Menu.CanvasGroup.ScrollingFrame,Text=""}, {f("UIPadding", {PaddingTop=UDim.new(0, j.TabPadding),PaddingLeft=UDim.new(0, j.TabPadding + 2),PaddingRight=UDim.new(0, j.TabPadding + 2),PaddingBottom=UDim.new(0, j.TabPadding)}),f("UICorner", {CornerRadius=UDim.new(0, j.MenuCorner - j.MenuPadding)}),f("ImageLabel", {Image=e.Icon("check")[1],ImageRectSize=e.Icon("check")[2].ImageRectSize,ImageRectOffset=e.Icon("check")[2].ImageRectPosition,ThemeTag={ImageColor3="Text"},ImageTransparency=1,Size=UDim2.new(0, 18, 0, 18),AnchorPoint=Vector2.new(0, 0.5),Position=UDim2.new(0, 0, 0.5, 0),BackgroundTransparency=1}),f("TextLabel", {Text=x,TextXAlignment="Left",FontFace=Font.new(e.Font, Enum.FontWeight.Medium),ThemeTag={TextColor3="Text",BackgroundColor3="Text"},TextSize=15,BackgroundTransparency=1,TextTransparency=0.4,AutomaticSize="Y",TextTruncate="AtEnd",Size=UDim2.new(1, -18 - (j.TabPadding * 3), 0, 0),AnchorPoint=Vector2.new(0, 0.5),Position=UDim2.new(0, 0, 0.5, 0)})});
					if o.Multi then
						y.Selected = table.find(o.Value or {}, y.Name);
					else
						y.Selected = o.Value == y.Name;
					end
					if y.Selected then
						y.UIElements.TabItem.BackgroundTransparency = 0.93;
						y.UIElements.TabItem.ImageLabel.ImageTransparency = 0.1;
						y.UIElements.TabItem.TextLabel.Position = UDim2.new(0, 18 + j.TabPadding + 2, 0.5, 0);
						y.UIElements.TabItem.TextLabel.TextTransparency = 0;
					end
					o.Tabs[w] = y;
					o:Display();
					local z = function()
						o:Display();
						task.spawn(function()
							e.SafeCallback(o.Callback, o.Value);
						end);
					end;
					e.AddSignal(y.UIElements.TabItem.MouseButton1Click, function()
						if o.Multi then
							if not y.Selected then
								y.Selected = true;
								g(y.UIElements.TabItem, 0.1, {BackgroundTransparency=0.93}):Play();
								g(y.UIElements.TabItem.ImageLabel, 0.1, {ImageTransparency=0.1}):Play();
								g(y.UIElements.TabItem.TextLabel, 0.1, {Position=UDim2.new(0, 18 + j.TabPadding, 0.5, 0),TextTransparency=0}):Play();
								table.insert(o.Value, y.Name);
							else
								if (not o.AllowNone and (#o.Value == 1)) then
									return;
								end
								y.Selected = false;
								g(y.UIElements.TabItem, 0.1, {BackgroundTransparency=1}):Play();
								g(y.UIElements.TabItem.ImageLabel, 0.1, {ImageTransparency=1}):Play();
								g(y.UIElements.TabItem.TextLabel, 0.1, {Position=UDim2.new(0, 0, 0.5, 0),TextTransparency=0.4}):Play();
								for A, B in ipairs(o.Value) do
									if (B == y.Name) then
										table.remove(o.Value, A);
										break;
									end
								end
							end
						else
							for A, B in next, o.Tabs do
								g(B.UIElements.TabItem, 0.1, {BackgroundTransparency=1}):Play();
								g(B.UIElements.TabItem.ImageLabel, 0.1, {ImageTransparency=1}):Play();
								g(B.UIElements.TabItem.TextLabel, 0.1, {Position=UDim2.new(0, 0, 0.5, 0),TextTransparency=0.4}):Play();
								B.Selected = false;
							end
							y.Selected = true;
							g(y.UIElements.TabItem, 0.1, {BackgroundTransparency=0.93}):Play();
							g(y.UIElements.TabItem.ImageLabel, 0.1, {ImageTransparency=0.1}):Play();
							g(y.UIElements.TabItem.TextLabel, 0.1, {Position=UDim2.new(0, 18 + j.TabPadding, 0.5, 0),TextTransparency=0}):Play();
							o.Value = y.Name;
						end
						z();
					end);
					q();
					r();
				end
			end;
			o:Refresh(o.Values);
			o.Select = function(s, t)
				if t then
					o.Value = t;
				end
				o:Refresh(o.Values);
			end;
			r();
			o.Open = function(s)
				o.UIElements.MenuCanvas.Visible = true;
				o.UIElements.MenuCanvas.Active = true;
				o.UIElements.Menu.Size = UDim2.new(1, 0, 0, 0);
				g(o.UIElements.Menu, 0.1, {Size=UDim2.new(1, 0, 1, 0)}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play();
				task.spawn(function()
					task.wait(0.1);
					o.Opened = true;
				end);
				g(o.UIElements.MenuCanvas, 0.15, {GroupTransparency=0}):Play();
				UpdatePosition();
			end;
			o.Close = function(s)
				o.Opened = false;
				g(o.UIElements.Menu, 0.1, {Size=UDim2.new(1, 0, 0.8, 0)}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play();
				g(o.UIElements.MenuCanvas, 0.15, {GroupTransparency=1}):Play();
				task.wait(0.1);
				o.UIElements.MenuCanvas.Visible = false;
				o.UIElements.MenuCanvas.Active = false;
			end;
			e.AddSignal(o.UIElements.Dropdown.MouseButton1Click, function()
				if p then
					o:Open();
				end
			end);
			e.AddSignal(b.InputBegan, function(s)
				if ((s.UserInputType == Enum.UserInputType.MouseButton1) or (s.UserInputType == Enum.UserInputType.Touch)) then
					local t, u = o.UIElements.MenuCanvas.AbsolutePosition, o.UIElements.MenuCanvas.AbsoluteSize;
					if (n.Window.CanDropdown and o.Opened and ((c.X < t.X) or (c.X > (t.X + u.X)) or (c.Y < ((t.Y - 20) - 1)) or (c.Y > (t.Y + u.Y)))) then
						o:Close();
					end
				end
			end);
			e.AddSignal(o.UIElements.Dropdown:GetPropertyChangedSignal("AbsolutePosition"), UpdatePosition);
			return o.__type, o;
		end;
		return j;
	end;
	a.q = function()
		local b = a.load("a");
		local c, d, e = b.New, a.load("d"), {};
		e.New = function(f, g)
			local h = {__type="Code",Title=g.Title,Code=g.Code,UIElements={}};
			local i = not h.Locked;
			local j = d.Code(h.Code, h.Title, g.Parent, function()
				if i then
					local j, k, n = h.Title or "code", pcall(function()
						toclipboard(h.Code);
					end);
					if k then
						g.WindUI({Title="Success",Content=("The " .. j .. " copied to your clipboard."),Icon="check",Duration=5});
					else
						g.WindUI({Title="Error",Content=("The " .. j .. " is not copied. Error: " .. n),Icon="x",Duration=5});
					end
				end
			end);
			h.SetCode = function(k, n)
				j.Set(n);
			end;
			return h.__type, h;
		end;
		return e;
	end;
	a.r = function()
		local b = a.load("a");
		local c, d, e, f, g, h = b.New, b.Tween, game:GetService("UserInputService"), game:GetService("TouchInputService"), game:GetService("RunService"), game:GetService("Players");
		local i, j = g.RenderStepped, h.LocalPlayer;
		local k, n = j:GetMouse(), a.load("d");
		local o, p, q = n.Button, n.Input, {UICorner=8,UIPadding=8};
		q.Colorpicker = function(r, s, t)
			local u = {__type="Colorpicker",Title=s.Title,Desc=s.Desc,Default=s.Default,Callback=s.Callback,Transparency=s.Transparency,UIElements=s.UIElements};
			u.SetHSVFromRGB = function(v, w)
				local x, y, z = Color3.toHSV(w);
				u.Hue = x;
				u.Sat = y;
				u.Vib = z;
			end;
			u:SetHSVFromRGB(u.Default);
			local v = a.load("e").Init(s.Window);
			local w = v.Create();
			u.ColorpickerFrame = w;
			local x, y, z = u.Hue, u.Sat, u.Vib;
			u.UIElements.Title = c("TextLabel", {Text=u.Title,TextSize=20,FontFace=Font.new(b.Font, Enum.FontWeight.SemiBold),TextXAlignment="Left",Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",ThemeTag={TextColor3="Text"},BackgroundTransparency=1,Parent=w.UIElements.Main});
			local A = c("ImageLabel", {Size=UDim2.new(0, 18, 0, 18),ScaleType=Enum.ScaleType.Fit,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundTransparency=1,Image="http://www.roblox.com/asset/?id=4805639000"});
			u.UIElements.SatVibMap = c("ImageLabel", {Size=UDim2.fromOffset(160, 158),Position=UDim2.fromOffset(0, 40),Image="rbxassetid://4155801252",BackgroundColor3=Color3.fromHSV(x, 1, 1),BackgroundTransparency=0,Parent=w.UIElements.Main}, {c("UICorner", {CornerRadius=UDim.new(0, 8)}),c("UIStroke", {Thickness=0.6,ThemeTag={Color="Text"},Transparency=0.8}),A});
			u.UIElements.Inputs = c("Frame", {AutomaticSize="XY",Size=UDim2.new(0, 0, 0, 0),Position=UDim2.fromOffset((u.Transparency and 240) or 210, 40),BackgroundTransparency=1,Parent=w.UIElements.Main}, {c("UIListLayout", {Padding=UDim.new(0, 5),FillDirection="Vertical"})});
			local B = c("Frame", {BackgroundColor3=u.Default,Size=UDim2.fromScale(1, 1),BackgroundTransparency=u.Transparency}, {c("UICorner", {CornerRadius=UDim.new(0, 8)})});
			local C, D = c("ImageLabel", {Image="http://www.roblox.com/asset/?id=14204231522",ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40, 40),BackgroundTransparency=1,Position=UDim2.fromOffset(85, 208),Size=UDim2.fromOffset(75, 24),Parent=w.UIElements.Main}, {c("UICorner", {CornerRadius=UDim.new(0, 8)}),c("UIStroke", {Thickness=1,Transparency=0.8,ThemeTag={Color="Text"}}),B}), c("Frame", {BackgroundColor3=u.Default,Size=UDim2.fromScale(1, 1),BackgroundTransparency=0,ZIndex=9}, {c("UICorner", {CornerRadius=UDim.new(0, 8)})});
			local E, F = c("ImageLabel", {Image="http://www.roblox.com/asset/?id=14204231522",ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40, 40),BackgroundTransparency=1,Position=UDim2.fromOffset(0, 208),Size=UDim2.fromOffset(75, 24),Parent=w.UIElements.Main}, {c("UICorner", {CornerRadius=UDim.new(0, 8)}),c("UIStroke", {Thickness=1,Transparency=0.8,ThemeTag={Color="Text"}}),D}), {};
			for G = 0, 1, 0.1 do
				table.insert(F, ColorSequenceKeypoint.new(G, Color3.fromHSV(G, 1, 1)));
			end
			local G, H = c("UIGradient", {Color=ColorSequence.new(F),Rotation=90}), c("Frame", {Size=UDim2.new(1, 0, 1, 0),Position=UDim2.new(0, 0, 0, 0),BackgroundTransparency=1});
			local I, J = c("Frame", {Size=UDim2.new(0, 14, 0, 14),AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0, 0),Parent=H,BackgroundColor3=u.Default}, {c("UIStroke", {Thickness=2,Transparency=0.1,ThemeTag={Color="Text"}}),c("UICorner", {CornerRadius=UDim.new(1, 0)})}), c("Frame", {Size=UDim2.fromOffset(10, 192),Position=UDim2.fromOffset(180, 40),Parent=w.UIElements.Main}, {c("UICorner", {CornerRadius=UDim.new(1, 0)}),G,H});
			function CreateNewInput(K, L)
				local M = p(K, nil, u.UIElements.Inputs);
				c("TextLabel", {BackgroundTransparency=1,TextTransparency=0.4,TextSize=17,FontFace=Font.new(b.Font, Enum.FontWeight.Regular),AutomaticSize="XY",ThemeTag={TextColor3="Placeholder"},AnchorPoint=Vector2.new(1, 0.5),Position=UDim2.new(1, -12, 0.5, 0),Parent=M.Frame,Text=K});
				c("UIScale", {Parent=M,Scale=0.85});
				M.Frame.Frame.TextBox.Text = L;
				M.Size = UDim2.new(0, 150, 0, 42);
				return M;
			end
			local K, L = function(K)
				return {R=math.floor(K.R * 255),G=math.floor(K.G * 255),B=math.floor(K.B * 255)};
			end, CreateNewInput("Hex", "#" .. u.Default:ToHex());
			local M, N, O, P = CreateNewInput("Red", K(u.Default).R), CreateNewInput("Green", K(u.Default).G), (CreateNewInput("Blue", K(u.Default).B));
			if u.Transparency then
				P = CreateNewInput("Alpha", ((1 - u.Transparency) * 100) .. "%");
			end
			local Q, R = c("Frame", {Size=UDim2.new(1, 0, 0, 40),AutomaticSize="Y",Position=UDim2.new(0, 0, 0, 254),BackgroundTransparency=1,Parent=w.UIElements.Main,LayoutOrder=4}, {c("UIListLayout", {Padding=UDim.new(0, 8),FillDirection="Horizontal",HorizontalAlignment="Right"})}), {{Title="Cancel",Variant="Secondary",Callback=function()
			end},{Title="Apply",Icon="chevron-right",Variant="Primary",Callback=function()
				t(Color3.fromHSV(u.Hue, u.Sat, u.Vib), u.Transparency);
			end}};
			for S, T in next, R do
				o(T.Title, T.Icon, T.Callback, T.Variant, Q, w);
			end
			local U, V, W;
			if u.Transparency then
				local X = c("Frame", {Size=UDim2.new(1, 0, 1, 0),Position=UDim2.fromOffset(0, 0),BackgroundTransparency=1});
				V = c("ImageLabel", {Size=UDim2.new(0, 14, 0, 14),AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0, 0),ThemeTag={BackgroundColor3="Text"},Parent=X}, {c("UIStroke", {Thickness=2,Transparency=0.1,ThemeTag={Color="Text"}}),c("UICorner", {CornerRadius=UDim.new(1, 0)})});
				W = c("Frame", {Size=UDim2.fromScale(1, 1)}, {c("UIGradient", {Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)}),Rotation=270}),c("UICorner", {CornerRadius=UDim.new(0, 6)})});
				U = c("Frame", {Size=UDim2.fromOffset(10, 192),Position=UDim2.fromOffset(210, 40),Parent=w.UIElements.Main,BackgroundTransparency=1}, {c("UICorner", {CornerRadius=UDim.new(1, 0)}),c("ImageLabel", {Image="rbxassetid://14204231522",ImageTransparency=0.45,ScaleType=Enum.ScaleType.Tile,TileSize=UDim2.fromOffset(40, 40),BackgroundTransparency=1,Size=UDim2.fromScale(1, 1)}, {c("UICorner", {CornerRadius=UDim.new(1, 0)})}),W,X});
			end
			u.Round = function(X, Y, Z)
				if (Z == 0) then
					return math.floor(Y);
				end
				Y = tostring(Y);
				return (Y:find("%.") and tonumber(Y:sub(1, Y:find("%.") + Z))) or Y;
			end;
			u.Update = function(X, Y, Z)
				if Y then
					x, y, z = Color3.toHSV(Y);
				else
					x, y, z = u.Hue, u.Sat, u.Vib;
				end
				u.UIElements.SatVibMap.BackgroundColor3 = Color3.fromHSV(x, 1, 1);
				A.Position = UDim2.new(y, 0, 1 - z, 0);
				D.BackgroundColor3 = Color3.fromHSV(x, y, z);
				I.BackgroundColor3 = Color3.fromHSV(x, 1, 1);
				I.Position = UDim2.new(0.5, 0, x, 0);
				L.Frame.Frame.TextBox.Text = "#" .. Color3.fromHSV(x, y, z):ToHex();
				M.Frame.Frame.TextBox.Text = K(Color3.fromHSV(x, y, z)).R;
				N.Frame.Frame.TextBox.Text = K(Color3.fromHSV(x, y, z)).G;
				O.Frame.Frame.TextBox.Text = K(Color3.fromHSV(x, y, z)).B;
				if (Z or u.Transparency) then
					D.BackgroundTransparency = u.Transparency or Z;
					W.BackgroundColor3 = Color3.fromHSV(x, y, z);
					V.BackgroundColor3 = Color3.fromHSV(x, y, z);
					V.BackgroundTransparency = u.Transparency or Z;
					V.Position = UDim2.new(0.5, 0, (1 - u.Transparency) or Z, 0);
					P.Frame.Frame.TextBox.Text = u:Round(((1 - u.Transparency) or Z) * 100, 0) .. "%";
				end
			end;
			u:Update(u.Default, u.Transparency);
			local X, Y = function()
				local X = Color3.fromHSV(u.Hue, u.Sat, u.Vib);
				return {R=math.floor(X.r * 255),G=math.floor(X.g * 255),B=math.floor(X.b * 255)};
			end, function(X, Y, Z)
				return math.clamp(tonumber(X) or 0, Y, Z);
			end;
			b.AddSignal(L.Frame.Frame.TextBox.FocusLost, function(Z)
				if Z then
					local _ = L.Frame.Frame.TextBox.Text:gsub("#", "");
					local aa, ab = pcall(Color3.fromHex, _);
					if (aa and (typeof(ab) == "Color3")) then
						u.Hue, u.Sat, u.Vib = Color3.toHSV(ab);
						u:Update();
						u.Default = ab;
					end
				end
			end);
			local aa = function(aa, ab)
				b.AddSignal(aa.Frame.Frame.TextBox.FocusLost, function(Z)
					if Z then
						local _, ac = aa.Frame.Frame.TextBox, X();
						local ad = Y(_.Text, 0, 255);
						_.Text = tostring(ad);
						ac[ab] = ad;
						local ae = Color3.fromRGB(ac.R, ac.G, ac.B);
						u.Hue, u.Sat, u.Vib = Color3.toHSV(ae);
						u:Update();
					end
				end);
			end;
			aa(M, "R");
			aa(N, "G");
			aa(O, "B");
			if u.Transparency then
				b.AddSignal(P.Frame.Frame.TextBox.FocusLost, function(ab)
					if ab then
						local ac = P.Frame.Frame.TextBox;
						local ad = Y(ac.Text, 0, 100);
						ac.Text = tostring(ad);
						u.Transparency = 1 - (ad * 0.01);
						u:Update(nil, u.Transparency);
					end
				end);
			end
			local ab = u.UIElements.SatVibMap;
			b.AddSignal(ab.InputBegan, function(ac)
				if ((ac.UserInputType == Enum.UserInputType.MouseButton1) or (ac.UserInputType == Enum.UserInputType.Touch)) then
					while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local ad = ab.AbsolutePosition.X;
						local ae = ad + ab.AbsoluteSize.X;
						local Z, _ = math.clamp(k.X, ad, ae), ab.AbsolutePosition.Y;
						local af = _ + ab.AbsoluteSize.Y;
						local ag = math.clamp(k.Y, _, af);
						u.Sat = (Z - ad) / (ae - ad);
						u.Vib = 1 - ((ag - _) / (af - _));
						u:Update();
						i:Wait();
					end
				end
			end);
			b.AddSignal(J.InputBegan, function(ac)
				if ((ac.UserInputType == Enum.UserInputType.MouseButton1) or (ac.UserInputType == Enum.UserInputType.Touch)) then
					while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local ad = J.AbsolutePosition.Y;
						local ae = ad + J.AbsoluteSize.Y;
						local af = math.clamp(k.Y, ad, ae);
						u.Hue = (af - ad) / (ae - ad);
						u:Update();
						i:Wait();
					end
				end
			end);
			if u.Transparency then
				b.AddSignal(U.InputBegan, function(ac)
					if ((ac.UserInputType == Enum.UserInputType.MouseButton1) or (ac.UserInputType == Enum.UserInputType.Touch)) then
						while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local ad = U.AbsolutePosition.Y;
							local ae = ad + U.AbsoluteSize.Y;
							local af = math.clamp(k.Y, ad, ae);
							u.Transparency = 1 - ((af - ad) / (ae - ad));
							u:Update();
							i:Wait();
						end
					end
				end);
			end
			return u;
		end;
		q.New = function(aa, ab)
			local ac, ad = {__type="Colorpicker",Title=(ab.Title or "Colorpicker"),Desc=(ab.Desc or nil),Locked=(ab.Locked or false),Default=(ab.Default or Color3.new(1, 1, 1)),Callback=(ab.Callback or function()
			end),Window=ab.Window,Transparency=ab.Transparency,UIElements={}}, true;
			ac.ColorpickerFrame = a.load("j")({Title=ac.Title,Desc=ac.Desc,Parent=ab.Parent,TextOffset=40,Hover=false});
			ac.UIElements.Colorpicker = b.NewRoundFrame(q.UICorner, "Squircle", {ImageTransparency=0,Active=true,ImageColor3=ac.Default,Parent=ac.ColorpickerFrame.UIElements.Main,Size=UDim2.new(0, 30, 0, 30),AnchorPoint=Vector2.new(1, 0.5),Position=UDim2.new(1, 0, 0.5, 0),ZIndex=2}, nil, true);
			ac.Lock = function(ae)
				ad = false;
				return ac.ColorpickerFrame:Lock();
			end;
			ac.Unlock = function(ae)
				ad = true;
				return ac.ColorpickerFrame:Unlock();
			end;
			if ac.Locked then
				ac:Lock();
			end
			ac.Update = function(ae, af, ag)
				ac.UIElements.Colorpicker.ImageTransparency = ag or 0;
				ac.UIElements.Colorpicker.ImageColor3 = af;
				ac.Default = af;
				if ag then
					ac.Transparency = ag;
				end
			end;
			ac.Set = function(ae, af, ag)
				return ac:Update(af, ag);
			end;
			b.AddSignal(ac.UIElements.Colorpicker.MouseButton1Click, function()
				if ad then
					q:Colorpicker(ac, function(ae, af)
						if ad then
							ac:Update(ae, af);
							ac.Default = ae;
							ac.Transparency = af;
							b.SafeCallback(ac.Callback, ae, af);
						end
					end).ColorpickerFrame:Open();
				end
			end);
			return ac.__type, ac;
		end;
		return q;
	end;
	a.s = function()
		local aa = a.load("a");
		local ab, ac, ad = aa.New, aa.Tween, {};
		ad.New = function(ae, af)
			local ag, b = {__type="Section",Title=(af.Title or "Section"),Icon=af.Icon,TextXAlignment=(af.TextXAlignment or "Left"),TextSize=(af.TextSize or 19),UIElements={}};
			if ag.Icon then
				b = aa.Image(ag.Icon, ag.Icon .. ":" .. ag.Title, 0, af.Window.Folder, ag.__type, true);
				b.Size = UDim2.new(0, 24, 0, 24);
			end
			ag.UIElements.Main = ab("TextLabel", {BackgroundTransparency=1,TextXAlignment="Left",AutomaticSize="XY",TextSize=ag.TextSize,ThemeTag={TextColor3="Text"},FontFace=Font.new(aa.Font, Enum.FontWeight.SemiBold),Text=ag.Title});
			ab("Frame", {Size=UDim2.new(1, 0, 0, 0),BackgroundTransparency=1,AutomaticSize="Y",Parent=af.Parent}, {b,ag.UIElements.Main,ab("UIListLayout", {Padding=UDim.new(0, 8),FillDirection="Horizontal",VerticalAlignment="Center",HorizontalAlignment=ag.TextXAlignment}),ab("UIPadding", {PaddingTop=UDim.new(0, 4),PaddingBottom=UDim.new(0, 2)})});
			ag.SetTitle = function(c, d)
				ag.UIElements.Main.Text = d;
			end;
			ag.Destroy = function(c)
				ag.UIElements.Main.AutomaticSize = "None";
				ag.UIElements.Main.Size = UDim2.new(1, 0, 0, ag.UIElements.Main.TextBounds.Y);
				ac(ag.UIElements.Main, 0.1, {TextTransparency=1}):Play();
				task.wait(0.1);
				ac(ag.UIElements.Main, 0.15, {Size=UDim2.new(1, 0, 0, 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play();
			end;
			return ag.__type, ag;
		end;
		return ad;
	end;
	a.t = function()
		local aa, ab, ac = game:GetService("UserInputService"), game.Players.LocalPlayer:GetMouse(), a.load("a");
		local ad, ae, af = ac.New, ac.Tween, a.load("d");
		local ag, b, c = af.Button, af.ScrollSlider, {Window=nil,WindUI=nil,Tabs={},Containers={},SelectedTab=nil,TabCount=0,ToolTipParent=nil,TabHighlight=nil,OnChangeFunc=function(ag)
		end};
		c.Init = function(d, e, f, g)
			c.Window = d;
			c.WindUI = e;
			c.ToolTipParent = f;
			c.TabHighlight = g;
			return c;
		end;
		c.New = function(d)
			local e, f, g = {__type="Tab",Title=(d.Title or "Tab"),Desc=d.Desc,Icon=d.Icon,IconThemed=d.IconThemed,Locked=d.Locked,ShowTabTitle=d.ShowTabTitle,Selected=false,Index=nil,Parent=d.Parent,UIElements={},Elements={},ContainerFrame=nil}, c.Window, c.WindUI;
			c.TabCount = c.TabCount + 1;
			local h = c.TabCount;
			e.Index = h;
			e.UIElements.Main = ad("TextButton", {BackgroundTransparency=1,Size=UDim2.new(1, -7, 0, 0),AutomaticSize="Y",Parent=d.Parent}, {ad("UIListLayout", {SortOrder="LayoutOrder",Padding=UDim.new(0, 10),FillDirection="Horizontal",VerticalAlignment="Center"}),ad("TextLabel", {Text=e.Title,ThemeTag={TextColor3="Text"},TextTransparency=((not e.Locked and 0.4) or 0.7),TextSize=15,Size=UDim2.new(1, 0, 0, 0),FontFace=Font.new(ac.Font, Enum.FontWeight.Medium),TextWrapped=true,RichText=true,AutomaticSize="Y",LayoutOrder=2,TextXAlignment="Left",BackgroundTransparency=1}),ad("UIPadding", {PaddingTop=UDim.new(0, 6),PaddingBottom=UDim.new(0, 6)})});
			local i, j = 0;
			if e.Icon then
				j = ac.Image(e.Icon, e.Icon .. ":" .. e.Title, 0, c.Window.Folder, e.__type, true, e.IconThemed);
				j.Size = UDim2.new(0, 18, 0, 18);
				j.Parent = e.UIElements.Main;
				j.ImageLabel.ImageTransparency = (not e.Locked and 0) or 0.7;
				e.UIElements.Main.TextLabel.Size = UDim2.new(1, -30, 0, 0);
				i = -30;
				e.UIElements.Icon = j;
			end
			e.UIElements.ContainerFrame = ad("ScrollingFrame", {Size=UDim2.new(1, 0, 1, (e.ShowTabTitle and -((f.UIPadding * 2.4) + 12)) or 0),BackgroundTransparency=1,ScrollBarThickness=0,ElasticBehavior="Never",CanvasSize=UDim2.new(0, 0, 0, 0),AnchorPoint=Vector2.new(0, 1),Position=UDim2.new(0, 0, 1, 0),AutomaticCanvasSize="Y",ScrollingDirection="Y"}, {ad("UIPadding", {PaddingTop=UDim.new(0, f.UIPadding * 1.2),PaddingLeft=UDim.new(0, f.UIPadding * 1.2),PaddingRight=UDim.new(0, f.UIPadding * 1.2),PaddingBottom=UDim.new(0, f.UIPadding * 1.2)}),ad("UIListLayout", {SortOrder="LayoutOrder",Padding=UDim.new(0, 6),HorizontalAlignment="Center"})});
			e.UIElements.ContainerFrameCanvas = ad("Frame", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1,Visible=false,Parent=f.UIElements.MainBar,ZIndex=5}, {e.UIElements.ContainerFrame,ad("Frame", {Size=UDim2.new(1, 0, 0, (f.UIPadding * 2.4) + 12),BackgroundTransparency=1,Visible=(e.ShowTabTitle or false),Name="TabTitle"}, {(j and j:Clone()),ad("TextLabel", {Text=e.Title,ThemeTag={TextColor3="Text"},TextSize=20,TextTransparency=0.1,Size=UDim2.new(1, 0, 1, 0),FontFace=Font.new(ac.Font, Enum.FontWeight.SemiBold),TextTruncate="AtEnd",RichText=true,LayoutOrder=2,TextXAlignment="Left",BackgroundTransparency=1}),ad("UIPadding", {PaddingTop=UDim.new(0, f.UIPadding * 1.2),PaddingLeft=UDim.new(0, f.UIPadding * 1.2),PaddingRight=UDim.new(0, f.UIPadding * 1.2),PaddingBottom=UDim.new(0, f.UIPadding * 1.2)}),ad("UIListLayout", {SortOrder="LayoutOrder",Padding=UDim.new(0, 10),FillDirection="Horizontal",VerticalAlignment="Center"})}),ad("Frame", {Size=UDim2.new(1, 0, 0, 1),BackgroundTransparency=0.9,ThemeTag={BackgroundColor3="Text"},Position=UDim2.new(0, 0, 0, (f.UIPadding * 2.4) + 12),Visible=(e.ShowTabTitle or false)})});
			c.Containers[h] = e.UIElements.ContainerFrameCanvas;
			c.Tabs[h] = e;
			e.ContainerFrame = ContainerFrameCanvas;
			ac.AddSignal(e.UIElements.Main.MouseButton1Click, function()
				if not e.Locked then
					c:SelectTab(h);
				end
			end);
			b(e.UIElements.ContainerFrame, e.UIElements.ContainerFrameCanvas, f, 3);
			if e.Desc then
				local k, n, o, p = false;
				local q = function()
					k = false;
					if o then
						task.cancel(o);
						o = nil;
					end
					if p then
						p:Disconnect();
						p = nil;
					end
					if n then
						n:Close();
						n = nil;
					end
				end;
				ac.AddSignal(e.UIElements.Main.InputBegan, function()
					k = true;
					o = task.spawn(function()
						task.wait(0.35);
						if (k and not n) then
							n = af.ToolTip(e.Desc, c.ToolTipParent);
							local r = function()
								if n then
									n.Container.Position = UDim2.new(0, ab.X, 0, ab.Y - 20);
								end
							end;
							r();
							p = ab.Move:Connect(r);
							n:Open();
						end
					end);
				end);
				ac.AddSignal(e.UIElements.Main.InputEnded, q);
			end
			local k = {Button=a.load("k"),Toggle=a.load("l"),Slider=a.load("m"),Keybind=a.load("n"),Input=a.load("o"),Dropdown=a.load("p"),Code=a.load("q"),Colorpicker=a.load("r"),Section=a.load("s")};
			e.Divider = function(n)
				local o = ad("Frame", {Size=UDim2.new(1, 0, 0, 1),Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5),BackgroundTransparency=0.9,ThemeTag={BackgroundColor3="Text"}});
				local p = ad("Frame", {Parent=e.UIElements.ContainerFrame,Size=UDim2.new(1, -7, 0, 5),BackgroundTransparency=1}, {o});
				return p;
			end;
			e.Paragraph = function(n, o)
				o.Parent = e.UIElements.ContainerFrame;
				o.Window = f;
				o.Hover = false;
				o.TextOffset = 0;
				o.IsButtons = (o.Buttons and (#o.Buttons > 0) and true) or false;
				local p, q = {__type="Paragraph",Title=(o.Title or "Paragraph"),Desc=(o.Desc or nil),Locked=(o.Locked or false)}, a.load("j")(o);
				p.ParagraphFrame = q;
				if (o.Buttons and (#o.Buttons > 0)) then
					local r = ad("Frame", {Size=UDim2.new(0, 0, 0, 38),BackgroundTransparency=1,AutomaticSize="Y",Parent=q.UIElements.Container}, {ad("UIListLayout", {Padding=UDim.new(0, 10),FillDirection="Vertical"})});
					for s, t in next, o.Buttons do
						local u = ag(t.Title, t.Icon, t.Callback, "White", r);
						u.Size = UDim2.new(0, 0, 0, 38);
						u.AutomaticSize = "X";
					end
				end
				p.SetTitle = function(r, s)
					p.ParagraphFrame:SetTitle(s);
				end;
				p.SetDesc = function(r, s)
					p.ParagraphFrame:SetDesc(s);
				end;
				p.Destroy = function(r)
					p.ParagraphFrame:Destroy();
				end;
				table.insert(e.Elements, p);
				return p;
			end;
			for n, o in pairs(k) do
				e[n] = function(p, q)
					q.Parent = p.UIElements.ContainerFrame;
					q.Window = f;
					q.WindUI = g;
					local r, s = o:New(q);
					table.insert(p.Elements, s);
					local t;
					for u, v in pairs(s) do
						if ((typeof(v) == "table") and u:match("Frame$")) then
							t = v;
							break;
						end
					end
					if t then
						s.SetTitle = function(w, x)
							t:SetTitle(x);
						end;
						s.SetDesc = function(w, x)
							t:SetDesc(x);
						end;
						s.Destroy = function(w)
							t:Destroy();
						end;
					end
					return s;
				end;
			end
			task.spawn(function()
				local p = ad("Frame", {BackgroundTransparency=1,Size=UDim2.new(1, 0, 1, -f.UIElements.Main.Main.Topbar.AbsoluteSize.Y),Parent=e.UIElements.ContainerFrame}, {ad("UIListLayout", {Padding=UDim.new(0, 8),SortOrder="LayoutOrder",VerticalAlignment="Center",HorizontalAlignment="Center",FillDirection="Vertical"}),ad("ImageLabel", {Size=UDim2.new(0, 48, 0, 48),Image=ac.Icon("frown")[1],ImageRectOffset=ac.Icon("frown")[2].ImageRectPosition,ImageRectSize=ac.Icon("frown")[2].ImageRectSize,ThemeTag={ImageColor3="Icon"},BackgroundTransparency=1,ImageTransparency=0.6}),ad("TextLabel", {AutomaticSize="XY",Text="This tab is empty",ThemeTag={TextColor3="Text"},TextSize=18,TextTransparency=0.5,BackgroundTransparency=1,FontFace=Font.new(ac.Font, Enum.FontWeight.Medium)})});
				ac.AddSignal(e.UIElements.ContainerFrame.ChildAdded, function()
					p.Visible = false;
				end);
			end);
			return e;
		end;
		c.OnChange = function(d, e)
			c.OnChangeFunc = e;
		end;
		c.SelectTab = function(d, e)
			if not c.Tabs[e].Locked then
				c.SelectedTab = e;
				for f, g in next, c.Tabs do
					if not g.Locked then
						ae(g.UIElements.Main.TextLabel, 0.15, {TextTransparency=0.45}):Play();
						if g.UIElements.Icon then
							ae(g.UIElements.Icon.ImageLabel, 0.15, {ImageTransparency=0.5}):Play();
						end
						g.Selected = false;
					end
				end
				ae(c.Tabs[e].UIElements.Main.TextLabel, 0.15, {TextTransparency=0}):Play();
				if c.Tabs[e].UIElements.Icon then
					ae(c.Tabs[e].UIElements.Icon.ImageLabel, 0.15, {ImageTransparency=0.15}):Play();
				end
				c.Tabs[e].Selected = true;
				ae(c.TabHighlight, 0.25, {Position=UDim2.new(0, 0, 0, c.Tabs[e].UIElements.Main.AbsolutePosition.Y - c.Tabs[e].Parent.AbsolutePosition.Y),Size=UDim2.new(1, -7, 0, c.Tabs[e].UIElements.Main.AbsoluteSize.Y)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				task.spawn(function()
					for h, i in next, c.Containers do
						i.AnchorPoint = Vector2.new(0, 0.05);
						i.Visible = false;
					end
					c.Containers[e].Visible = true;
					ae(c.Containers[e], 0.15, {AnchorPoint=Vector2.new(0, 0)}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play();
				end);
				c.OnChangeFunc(e);
			end
		end;
		return c;
	end;
	a.u = function()
		local aa, ab, ac = game:GetService("UserInputService"), {Margin=8,Padding=9}, a.load("a");
		local ad, ae = ac.New, ac.Tween;
		ab.new = function(af, ag, b)
			local c = {IconSize=14,Padding=14,Radius=15,Width=400,MaxHeight=380,Icons={Tab="table-of-contents",Paragraph="type",Button="square-mouse-pointer",Toggle="toggle-right",Slider="sliders-horizontal",Keybind="command",Input="text-cursor-input",Dropdown="chevrons-up-down",Code="terminal",Colorpicker="palette"}};
			local d, e, f = ad("TextBox", {Text="",PlaceholderText="Search...",ThemeTag={PlaceholderColor3="Placeholder",TextColor3="Text"},Size=UDim2.new(1, -((c.IconSize * 2) + (c.Padding * 2)), 0, 0),AutomaticSize="Y",ClipsDescendants=true,ClearTextOnFocus=false,BackgroundTransparency=1,TextXAlignment="Left",FontFace=Font.new(ac.Font, Enum.FontWeight.Regular),TextSize=17}), ad("ImageLabel", {Image=ac.Icon("x")[1],ImageRectSize=ac.Icon("x")[2].ImageRectSize,ImageRectOffset=ac.Icon("x")[2].ImageRectPosition,BackgroundTransparency=1,ThemeTag={ImageColor3="Text"},ImageTransparency=0.2,Size=UDim2.new(0, c.IconSize, 0, c.IconSize)}, {ad("TextButton", {Size=UDim2.new(1, 8, 1, 8),BackgroundTransparency=1,Active=true,ZIndex=999999999,AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Text=""})}), ad("ScrollingFrame", {Size=UDim2.new(1, 0, 0, 0),AutomaticCanvasSize="Y",ScrollingDirection="Y",ElasticBehavior="Never",ScrollBarThickness=0,CanvasSize=UDim2.new(0, 0, 0, 0),BackgroundTransparency=1,Visible=false}, {ad("UIListLayout", {Padding=UDim.new(0, 0),FillDirection="Vertical"}),ad("UIPadding", {PaddingTop=UDim.new(0, c.Padding),PaddingLeft=UDim.new(0, c.Padding),PaddingRight=UDim.new(0, c.Padding),PaddingBottom=UDim.new(0, c.Padding)})});
			local g = ac.NewRoundFrame(c.Radius, "Squircle", {Size=UDim2.new(1, 0, 1, 0),ThemeTag={ImageColor3="Accent"},ImageTransparency=0}, {ad("Frame", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1,Visible=false}, {ad("Frame", {Size=UDim2.new(1, 0, 0, 46),BackgroundTransparency=1}, {ad("Frame", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1}, {ad("ImageLabel", {Image=ac.Icon("search")[1],ImageRectSize=ac.Icon("search")[2].ImageRectSize,ImageRectOffset=ac.Icon("search")[2].ImageRectPosition,BackgroundTransparency=1,ThemeTag={ImageColor3="Icon"},ImageTransparency=0.05,Size=UDim2.new(0, c.IconSize, 0, c.IconSize)}),d,e,ad("UIListLayout", {Padding=UDim.new(0, c.Padding),FillDirection="Horizontal",VerticalAlignment="Center"}),ad("UIPadding", {PaddingLeft=UDim.new(0, c.Padding),PaddingRight=UDim.new(0, c.Padding)})})}),ad("Frame", {BackgroundTransparency=1,AutomaticSize="Y",Size=UDim2.new(1, 0, 0, 0),Name="Results"}, {ad("Frame", {Size=UDim2.new(1, 0, 0, 1),ThemeTag={BackgroundColor3="Outline"},BackgroundTransparency=0.9,Visible=false}),f,ad("UISizeConstraint", {MaxSize=Vector2.new(c.Width, c.MaxHeight)})}),ad("UIListLayout", {Padding=UDim.new(0, 0),FillDirection="Vertical"})})});
			local h, i, j = ad("Frame", {Size=UDim2.new(0, c.Width, 0, 0),AutomaticSize="Y",Parent=ag,BackgroundTransparency=1,Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5),Visible=false,ZIndex=99999999}, {ad("UIScale", {Scale=0.9}),g,ac.NewRoundFrame(c.Radius, "SquircleOutline", {Size=UDim2.new(1, 0, 1, 0),ThemeTag={ImageColor3="Outline"},ImageTransparency=0.9})}), function(h, i, j, k, n, o)
				local p = ad("TextButton", {Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",BackgroundTransparency=1,Parent=(k or nil)}, {ac.NewRoundFrame(c.Radius - 4, "Squircle", {Size=UDim2.new(1, 0, 0, 0),Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5),ThemeTag={ImageColor3="Text"},ImageTransparency=1,Name="Main"}, {ad("UIPadding", {PaddingTop=UDim.new(0, c.Padding - 2),PaddingLeft=UDim.new(0, c.Padding),PaddingRight=UDim.new(0, c.Padding),PaddingBottom=UDim.new(0, c.Padding - 2)}),ad("ImageLabel", {Image=ac.Icon(j)[1],ImageRectSize=ac.Icon(j)[2].ImageRectSize,ImageRectOffset=ac.Icon(j)[2].ImageRectPosition,BackgroundTransparency=1,ThemeTag={ImageColor3="Text"},ImageTransparency=0.2,Size=UDim2.new(0, c.IconSize, 0, c.IconSize)}),ad("Frame", {Size=UDim2.new(1, -c.IconSize - c.Padding, 0, 0),BackgroundTransparency=1}, {ad("TextLabel", {Text=h,ThemeTag={TextColor3="Text"},TextSize=17,BackgroundTransparency=1,TextXAlignment="Left",FontFace=Font.new(ac.Font, Enum.FontWeight.Medium),Size=UDim2.new(1, 0, 0, 0),TextTruncate="AtEnd",AutomaticSize="Y",Name="Title"}),(ad("TextLabel", {Text=(i or ""),Visible=((i and true) or false),ThemeTag={TextColor3="Text"},TextSize=15,TextTransparency=0.2,BackgroundTransparency=1,TextXAlignment="Left",FontFace=Font.new(ac.Font, Enum.FontWeight.Medium),Size=UDim2.new(1, 0, 0, 0),TextTruncate="AtEnd",AutomaticSize="Y",Name="Desc"}) or nil),ad("UIListLayout", {Padding=UDim.new(0, 6),FillDirection="Vertical"})}),ad("UIListLayout", {Padding=UDim.new(0, c.Padding),FillDirection="Horizontal"})}, true),ad("Frame", {Name="ParentContainer",Size=UDim2.new(1, -c.Padding, 0, 0),AutomaticSize="Y",BackgroundTransparency=1,Visible=n}, {ac.NewRoundFrame(99, "Squircle", {Size=UDim2.new(0, 2, 1, 0),BackgroundTransparency=1,ThemeTag={ImageColor3="Text"},ImageTransparency=0.9}),ad("Frame", {Size=UDim2.new(1, -c.Padding - 2, 0, 0),Position=UDim2.new(0, c.Padding + 2, 0, 0),BackgroundTransparency=1}, {ad("UIListLayout", {Padding=UDim.new(0, 0),FillDirection="Vertical"})})}),ad("UIListLayout", {Padding=UDim.new(0, 0),FillDirection="Vertical",HorizontalAlignment="Right"})});
				p.Main.Size = UDim2.new(1, 0, 0, (p.Main.Frame.Desc.Visible and (((c.Padding - 2) * 2) + p.Main.Frame.Title.TextBounds.Y + 6 + p.Main.Frame.Desc.TextBounds.Y)) or (((c.Padding - 2) * 2) + p.Main.Frame.Title.TextBounds.Y));
				ac.AddSignal(p.Main.MouseEnter, function()
					ae(p.Main, 0.04, {ImageTransparency=0.95}):Play();
				end);
				ac.AddSignal(p.Main.InputEnded, function()
					ae(p.Main, 0.08, {ImageTransparency=1}):Play();
				end);
				ac.AddSignal(p.Main.MouseButton1Click, function()
					if o then
						o();
					end
				end);
				return p;
			end, function(h, i)
				if (not i or (i == "")) then
					return false;
				end
				if (not h or (h == "")) then
					return false;
				end
				local j, k = string.lower(h), string.lower(i);
				return string.find(j, k, 1, true) ~= nil;
			end;
			local k = function(k)
				if (not k or (k == "")) then
					return {};
				end
				local n = {};
				for o, p in next, af.Tabs do
					local q, r = j(p.Title or "", k), {};
					for s, t in next, p.Elements do
						if (t.__type ~= "Section") then
							local u, v = j(t.Title or "", k), j(t.Desc or "", k);
							if (u or v) then
								r[s] = {Title=t.Title,Desc=t.Desc,Original=t,__type=t.__type};
							end
						end
					end
					if (q or (next(r) ~= nil)) then
						n[o] = {Tab=p,Title=p.Title,Icon=p.Icon,Elements=r};
					end
				end
				return n;
			end;
			c.Search = function(n, o)
				o = o or "";
				local p = k(o);
				f.Visible = true;
				g.Frame.Results.Frame.Visible = true;
				for q, r in next, f:GetChildren() do
					if ((r.ClassName ~= "UIListLayout") and (r.ClassName ~= "UIPadding")) then
						r:Destroy();
					end
				end
				if (p and (next(p) ~= nil)) then
					for s, t in next, p do
						local u = c.Icons.Tab;
						local v = i(t.Title, nil, u, f, true, function()
							c:Close();
							af:SelectTab(s);
						end);
						if (t.Elements and (next(t.Elements) ~= nil)) then
							for w, x in next, t.Elements do
								local y = c.Icons[x.__type];
								i(x.Title, x.Desc, y, (v:FindFirstChild("ParentContainer") and v.ParentContainer.Frame) or nil, false, function()
									c:Close();
									af:SelectTab(s);
								end);
							end
						end
					end
				elseif (o ~= "") then
					ad("TextLabel", {Size=UDim2.new(1, 0, 0, 70),BackgroundTransparency=1,Text="No results found",TextSize=16,ThemeTag={TextColor3="Text"},TextTransparency=0.2,BackgroundTransparency=1,FontFace=Font.new(ac.Font, Enum.FontWeight.Medium),Parent=f,Name="NotFound"});
				else
					f.Visible = false;
					g.Frame.Results.Frame.Visible = false;
				end
			end;
			ac.AddSignal(d:GetPropertyChangedSignal("Text"), function()
				c:Search(d.Text);
			end);
			ac.AddSignal(f.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"), function()
				ae(f, 0.06, {Size=UDim2.new(1, 0, 0, math.clamp(f.UIListLayout.AbsoluteContentSize.Y + (c.Padding * 2), 0, c.MaxHeight))}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play();
			end);
			c.Open = function(n)
				task.spawn(function()
					g.Frame.Visible = true;
					h.Visible = true;
					ae(h.UIScale, 0.12, {Scale=1}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				end);
			end;
			c.Close = function(n)
				task.spawn(function()
					b();
					g.Frame.Visible = false;
					ae(h.UIScale, 0.12, {Scale=1}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					task.wait(0.12);
					h.Visible = false;
				end);
			end;
			ac.AddSignal(e.TextButton.MouseButton1Click, function()
				c:Close();
			end);
			c:Open();
			return c;
		end;
		return ab;
	end;
	a.v = function()
		local aa, ab, ac = game:GetService("UserInputService"), game:GetService("RunService"), a.load("a");
		local ad, ae, af = ac.New, ac.Tween, a.load("d");
		local ag, b, c, d = af.Label, af.ScrollSlider, a.load("i"), false;
		return function(e)
			local f = {Title=(e.Title or "UI Library"),Author=e.Author,Icon=e.Icon,IconThemed=e.IconThemed,Folder=e.Folder,Background=e.Background,BackgroundImageTransparency=(e.BackgroundImageTransparency or 0),User=(e.User or {}),Size=((e.Size and UDim2.new(0, math.clamp(e.Size.X.Offset, 480, 700), 0, math.clamp(e.Size.Y.Offset, 350, 520))) or UDim2.new(0, 580, 0, 460)),ToggleKey=(e.ToggleKey or Enum.KeyCode.G),Transparent=(e.Transparent or false),HideSearchBar=(e.HideSearchBar or false),ScrollBarEnabled=(e.ScrollBarEnabled or false),Position=UDim2.new(0.5, 0, 0.5, 0),UICorner=16,UIPadding=14,SideBarWidth=(e.SideBarWidth or 200),UIElements={},CanDropdown=true,Closed=false,HasOutline=(e.HasOutline or false),SuperParent=e.Parent,Destroyed=false,IsFullscreen=false,CanResize=true,IsOpenButtonEnabled=true,ConfigManager=nil,CurrentTab=nil,TabModule=nil,OnCloseCallback=nil,OnDestroyCallback=nil,TopBarButtons={}};
			if f.Folder then
				makefolder("WindUI/" .. f.Folder);
			end
			local g = ad("UICorner", {CornerRadius=UDim.new(0, f.UICorner)});
			f.ConfigManager = c:Init(f);
			local h, i, j, k = ad("Frame", {Size=UDim2.new(0, 32, 0, 32),Position=UDim2.new(1, 0, 1, 0),AnchorPoint=Vector2.new(0.5, 0.5),BackgroundTransparency=1,ZIndex=99,Active=true}, {ad("ImageLabel", {Size=UDim2.new(0, 96, 0, 96),BackgroundTransparency=1,Image="rbxassetid://120997033468887",Position=UDim2.new(0.5, -16, 0.5, -16),AnchorPoint=Vector2.new(0.5, 0.5),ImageTransparency=1})}), ac.NewRoundFrame(f.UICorner, "Squircle", {Size=UDim2.new(1, 0, 1, 0),ImageTransparency=1,ImageColor3=Color3.new(0, 0, 0),ZIndex=98,Active=false}, {ad("ImageLabel", {Size=UDim2.new(0, 70, 0, 70),Image=ac.Icon("expand")[1],ImageRectOffset=ac.Icon("expand")[2].ImageRectPosition,ImageRectSize=ac.Icon("expand")[2].ImageRectSize,BackgroundTransparency=1,Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5),ImageTransparency=1})}), ac.NewRoundFrame(f.UICorner, "Squircle", {Size=UDim2.new(1, 0, 1, 0),ImageTransparency=1,ImageColor3=Color3.new(0, 0, 0),ZIndex=999,Active=false}), ac.NewRoundFrame(f.UICorner - (f.UIPadding / 2), "Squircle", {Size=UDim2.new(1, 0, 0, 0),ImageTransparency=0.95,ThemeTag={ImageColor3="Text"}});
			f.UIElements.SideBar = ad("ScrollingFrame", {Size=UDim2.new(1, (f.ScrollBarEnabled and (-3 - (f.UIPadding / 2))) or 0, 1, (not f.HideSearchBar and -45) or 0),Position=UDim2.new(0, 0, 1, 0),AnchorPoint=Vector2.new(0, 1),BackgroundTransparency=1,ScrollBarThickness=0,ElasticBehavior="Never",CanvasSize=UDim2.new(0, 0, 0, 0),AutomaticCanvasSize="Y",ScrollingDirection="Y",ClipsDescendants=true,VerticalScrollBarPosition="Left"}, {ad("Frame", {BackgroundTransparency=1,AutomaticSize="Y",Size=UDim2.new(1, 0, 0, 0),Name="Frame"}, {ad("UIPadding", {PaddingTop=UDim.new(0, f.UIPadding / 2),PaddingLeft=UDim.new(0, 4 + (f.UIPadding / 2)),PaddingRight=UDim.new(0, 4 + (f.UIPadding / 2)),PaddingBottom=UDim.new(0, f.UIPadding / 2)}),ad("UIListLayout", {SortOrder="LayoutOrder",Padding=UDim.new(0, 6)})}),ad("UIPadding", {PaddingLeft=UDim.new(0, f.UIPadding / 2),PaddingRight=UDim.new(0, f.UIPadding / 2)}),k});
			f.UIElements.SideBarContainer = ad("Frame", {Size=UDim2.new(0, f.SideBarWidth, 1, (f.User.Enabled and (-94 - (f.UIPadding * 2))) or -52),Position=UDim2.new(0, 0, 0, 52),BackgroundTransparency=1,Visible=true}, {ad("Frame", {Name="Content",BackgroundTransparency=1,Size=UDim2.new(1, 0, 1, (not f.HideSearchBar and -45) or 0),Position=UDim2.new(0, 0, 1, 0),AnchorPoint=Vector2.new(0, 1)}),f.UIElements.SideBar});
			if f.ScrollBarEnabled then
				b(f.UIElements.SideBar, f.UIElements.SideBarContainer.Content, f, 3);
			end
			f.UIElements.MainBar = ad("Frame", {Size=UDim2.new(1, -f.UIElements.SideBarContainer.AbsoluteSize.X, 1, -52),Position=UDim2.new(1, 0, 1, 0),AnchorPoint=Vector2.new(1, 1),BackgroundTransparency=1}, {ac.NewRoundFrame(f.UICorner - (f.UIPadding / 2), "Squircle", {Size=UDim2.new(1, 0, 1, 0),ImageColor3=Color3.new(1, 1, 1),ZIndex=3,ImageTransparency=0.95,Name="Background"}),ad("UIPadding", {PaddingTop=UDim.new(0, f.UIPadding / 2),PaddingLeft=UDim.new(0, f.UIPadding / 2),PaddingRight=UDim.new(0, f.UIPadding / 2),PaddingBottom=UDim.new(0, f.UIPadding / 2)})});
			local n, o = (ad("ImageLabel", {Image="rbxassetid://8992230677",ImageColor3=Color3.new(0, 0, 0),ImageTransparency=1,Size=UDim2.new(1, 120, 1, 116),Position=UDim2.new(0, -60, 0, -58),ScaleType="Slice",SliceCenter=Rect.new(99, 99, 99, 99),BackgroundTransparency=1,ZIndex=-999999999999999,Name="Blur"}));
			if (aa.TouchEnabled and not aa.KeyboardEnabled) then
				o = false;
			elseif aa.KeyboardEnabled then
				o = true;
			else
				o = nil;
			end
			local p, q, r, s;
			do
				r = ad("ImageLabel", {Image="",Size=UDim2.new(0, 22, 0, 22),Position=UDim2.new(0.5, 0, 0.5, 0),LayoutOrder=-1,AnchorPoint=Vector2.new(0.5, 0.5),BackgroundTransparency=1,Name="Icon"});
				OpenButtonTitle = ad("TextLabel", {Text=f.Title,TextSize=17,FontFace=Font.new(ac.Font, Enum.FontWeight.Medium),BackgroundTransparency=1,AutomaticSize="XY"});
				OpenButtonDrag = ad("Frame", {Size=UDim2.new(0, 36, 0, 36),BackgroundTransparency=1,Name="Drag"}, {ad("ImageLabel", {Image=ac.Icon("move")[1],ImageRectOffset=ac.Icon("move")[2].ImageRectPosition,ImageRectSize=ac.Icon("move")[2].ImageRectSize,Size=UDim2.new(0, 18, 0, 18),BackgroundTransparency=1,Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5)})});
				OpenButtonDivider = ad("Frame", {Size=UDim2.new(0, 1, 1, 0),Position=UDim2.new(0, 36, 0.5, 0),AnchorPoint=Vector2.new(0, 0.5),BackgroundColor3=Color3.new(1, 1, 1),BackgroundTransparency=0.9});
				p = ad("Frame", {Size=UDim2.new(0, 0, 0, 0),Position=UDim2.new(0.5, 0, 0, 28),AnchorPoint=Vector2.new(0.5, 0.5),Parent=e.Parent,BackgroundTransparency=1,Active=true,Visible=false});
				q = ad("TextButton", {Size=UDim2.new(0, 0, 0, 44),AutomaticSize="X",Parent=p,Active=false,BackgroundTransparency=0.25,ZIndex=99,BackgroundColor3=Color3.new(0, 0, 0)}, {ad("UICorner", {CornerRadius=UDim.new(1, 0)}),ad("UIStroke", {Thickness=1,ApplyStrokeMode="Border",Color=Color3.new(1, 1, 1),Transparency=0}, {ad("UIGradient", {Color=ColorSequence.new(Color3.fromHex("40c9ff"), Color3.fromHex("e81cff"))})}),OpenButtonDrag,OpenButtonDivider,ad("UIListLayout", {Padding=UDim.new(0, 4),FillDirection="Horizontal",VerticalAlignment="Center"}),ad("TextButton", {AutomaticSize="XY",Active=true,BackgroundTransparency=1,Size=UDim2.new(0, 0, 0, 36),BackgroundColor3=Color3.new(1, 1, 1)}, {ad("UICorner", {CornerRadius=UDim.new(1, -4)}),r,ad("UIListLayout", {Padding=UDim.new(0, f.UIPadding),FillDirection="Horizontal",VerticalAlignment="Center"}),OpenButtonTitle,ad("UIPadding", {PaddingLeft=UDim.new(0, 12),PaddingRight=UDim.new(0, 12)})}),ad("UIPadding", {PaddingLeft=UDim.new(0, 4),PaddingRight=UDim.new(0, 4)})});
				local t = (q and q.UIStroke.UIGradient) or nil;
				ac.AddSignal(ab.RenderStepped, function(u)
					if (f.UIElements.Main and p and (p.Parent ~= nil)) then
						if t then
							t.Rotation = (t.Rotation + 1) % 360;
						end
						if (s and (s.Parent ~= nil) and s.UIGradient) then
							s.UIGradient.Rotation = (s.UIGradient.Rotation + 1) % 360;
						end
					end
				end);
				ac.AddSignal(q:GetPropertyChangedSignal("AbsoluteSize"), function()
					p.Size = UDim2.new(0, q.AbsoluteSize.X, 0, q.AbsoluteSize.Y);
				end);
				ac.AddSignal(q.TextButton.MouseEnter, function()
					ae(q.TextButton, 0.1, {BackgroundTransparency=0.93}):Play();
				end);
				ac.AddSignal(q.TextButton.MouseLeave, function()
					ae(q.TextButton, 0.1, {BackgroundTransparency=1}):Play();
				end);
			end
			local t;
			if f.User.Enabled then
				local u, v = game.Players:GetUserThumbnailAsync((f.User.Anonymous and 1) or game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420);
				t = ad("TextButton", {Size=UDim2.new(0, f.UIElements.SideBarContainer.AbsoluteSize.X - (f.UIPadding / 2), 0, 42 + f.UIPadding),Position=UDim2.new(0, f.UIPadding / 2, 1, -(f.UIPadding / 2)),AnchorPoint=Vector2.new(0, 1),BackgroundTransparency=1}, {ac.NewRoundFrame(f.UICorner - (f.UIPadding / 2), "Squircle", {Size=UDim2.new(1, 0, 1, 0),ThemeTag={ImageColor3="Text"},ImageTransparency=1,Name="UserIcon"}, {ad("ImageLabel", {Image=u,BackgroundTransparency=1,Size=UDim2.new(0, 42, 0, 42),ThemeTag={BackgroundColor3="Text"},BackgroundTransparency=0.93}, {ad("UICorner", {CornerRadius=UDim.new(1, 0)})}),ad("Frame", {AutomaticSize="XY",BackgroundTransparency=1}, {ad("TextLabel", {Text=((f.User.Anonymous and "Anonymous") or game.Players.LocalPlayer.DisplayName),TextSize=17,ThemeTag={TextColor3="Text"},FontFace=Font.new(ac.Font, Enum.FontWeight.SemiBold),AutomaticSize="Y",BackgroundTransparency=1,Size=UDim2.new(1, -27, 0, 0),TextTruncate="AtEnd",TextXAlignment="Left"}),ad("TextLabel", {Text=((f.User.Anonymous and "@anonymous") or ("@" .. game.Players.LocalPlayer.Name)),TextSize=15,TextTransparency=0.6,ThemeTag={TextColor3="Text"},FontFace=Font.new(ac.Font, Enum.FontWeight.Medium),AutomaticSize="Y",BackgroundTransparency=1,Size=UDim2.new(1, -27, 0, 0),TextTruncate="AtEnd",TextXAlignment="Left"}),ad("UIListLayout", {Padding=UDim.new(0, 4),HorizontalAlignment="Left"})}),ad("UIListLayout", {Padding=UDim.new(0, f.UIPadding),FillDirection="Horizontal",VerticalAlignment="Center"}),ad("UIPadding", {PaddingLeft=UDim.new(0, f.UIPadding / 2),PaddingRight=UDim.new(0, f.UIPadding / 2)})})});
				if f.User.Callback then
					ac.AddSignal(t.MouseButton1Click, function()
						f.User.Callback();
					end);
					ac.AddSignal(t.MouseEnter, function()
						ae(t.UserIcon, 0.04, {ImageTransparency=0.94}):Play();
					end);
					ac.AddSignal(t.InputEnded, function()
						ae(t.UserIcon, 0.04, {ImageTransparency=1}):Play();
					end);
				end
			end
			local u, v, w, x = ac.NewRoundFrame(99, "Squircle", {ImageTransparency=0.8,ImageColor3=Color3.new(1, 1, 1),Size=UDim2.new(0, 0, 0, 4),Position=UDim2.new(0.5, 0, 1, 4),AnchorPoint=Vector2.new(0.5, 0)}, {ad("Frame", {Size=UDim2.new(1, 12, 1, 12),BackgroundTransparency=1,Position=UDim2.new(0.5, 0, 0.5, 0),AnchorPoint=Vector2.new(0.5, 0.5),Active=true,ZIndex=99})}), (ad("TextLabel", {Text=f.Title,FontFace=Font.new(ac.Font, Enum.FontWeight.SemiBold),BackgroundTransparency=1,AutomaticSize="XY",Name="Title",TextXAlignment="Left",TextSize=16,ThemeTag={TextColor3="Text"}}));
			f.UIElements.Main = ad("Frame", {Size=f.Size,Position=f.Position,BackgroundTransparency=1,Parent=e.Parent,AnchorPoint=Vector2.new(0.5, 0.5),Active=true}, {n,ac.NewRoundFrame(f.UICorner, "Squircle", {ImageTransparency=1,Size=UDim2.new(1, 0, 1, -240),AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Name="Background",ThemeTag={ImageColor3="Background"}}, {ad("ImageLabel", {BackgroundTransparency=1,Size=UDim2.new(1, 0, 1, 0),Image=f.Background,ImageTransparency=1,ScaleType="Crop"}, {ad("UICorner", {CornerRadius=UDim.new(0, f.UICorner)})}),u,h}),UIStroke,g,i,j,ad("Frame", {Size=UDim2.new(1, 0, 1, 0),BackgroundTransparency=1,Name="Main",Visible=false,ZIndex=97}, {ad("UICorner", {CornerRadius=UDim.new(0, f.UICorner)}),f.UIElements.SideBarContainer,f.UIElements.MainBar,t,x,ad("Frame", {Size=UDim2.new(1, 0, 0, 52),BackgroundTransparency=1,BackgroundColor3=Color3.fromRGB(50, 50, 50),Name="Topbar"}, {w,ad("Frame", {AutomaticSize="X",Size=UDim2.new(0, 0, 1, 0),BackgroundTransparency=1,Name="Left"}, {ad("UIListLayout", {Padding=UDim.new(0, f.UIPadding + 4),SortOrder="LayoutOrder",FillDirection="Horizontal",VerticalAlignment="Center"}),ad("Frame", {AutomaticSize="XY",BackgroundTransparency=1,Name="Title",Size=UDim2.new(0, 0, 1, 0),LayoutOrder=2}, {ad("UIListLayout", {Padding=UDim.new(0, 0),SortOrder="LayoutOrder",FillDirection="Vertical",VerticalAlignment="Top"}),v}),ad("UIPadding", {PaddingLeft=UDim.new(0, 4)})}),ad("Frame", {AutomaticSize="XY",BackgroundTransparency=1,Position=UDim2.new(1, 0, 0.5, 0),AnchorPoint=Vector2.new(1, 0.5),Name="Right"}, {ad("UIListLayout", {Padding=UDim.new(0, 9),FillDirection="Horizontal",SortOrder="LayoutOrder"})}),ad("UIPadding", {PaddingTop=UDim.new(0, f.UIPadding),PaddingLeft=UDim.new(0, f.UIPadding),PaddingRight=UDim.new(0, 8),PaddingBottom=UDim.new(0, f.UIPadding)})})})});
			f.CreateTopbarButton = function(y, z, A, B, C)
				local D = ad("TextButton", {Size=UDim2.new(0, 36, 0, 36),BackgroundTransparency=1,LayoutOrder=(C or 999),Parent=f.UIElements.Main.Main.Topbar.Right,ZIndex=9999,ThemeTag={BackgroundColor3="Text"},BackgroundTransparency=1}, {ad("UICorner", {CornerRadius=UDim.new(0, 9)}),ad("ImageLabel", {Image=ac.Icon(A)[1],ImageRectOffset=ac.Icon(A)[2].ImageRectPosition,ImageRectSize=ac.Icon(A)[2].ImageRectSize,BackgroundTransparency=1,Size=UDim2.new(0, 16, 0, 16),ThemeTag={ImageColor3="Text"},AnchorPoint=Vector2.new(0.5, 0.5),Position=UDim2.new(0.5, 0, 0.5, 0),Active=false,ImageTransparency=0.2})});
				f.TopBarButtons[100 - C] = {Name=z,Object=D};
				ac.AddSignal(D.MouseButton1Click, function()
					B();
				end);
				ac.AddSignal(D.MouseEnter, function()
					ae(D, 0.15, {BackgroundTransparency=0.93}):Play();
					ae(D.ImageLabel, 0.15, {ImageTransparency=0}):Play();
				end);
				ac.AddSignal(D.MouseLeave, function()
					ae(D, 0.1, {BackgroundTransparency=1}):Play();
					ae(D.ImageLabel, 0.1, {ImageTransparency=0.2}):Play();
				end);
				return D;
			end;
			local y, z = (ac.Drag(f.UIElements.Main, {f.UIElements.Main.Main.Topbar,u.Frame}, function(y, z)
				if not f.Closed then
					if (y and (z == u.Frame)) then
						ae(u, 0.1, {ImageTransparency=0.35}):Play();
					else
						ae(u, 0.2, {ImageTransparency=0.8}):Play();
					end
				end
			end));
			if not o then
				z = ac.Drag(p);
			end
			if f.Author then
				ad("TextLabel", {Text=f.Author,FontFace=Font.new(ac.Font, Enum.FontWeight.Medium),BackgroundTransparency=1,TextTransparency=0.4,AutomaticSize="XY",Parent=f.UIElements.Main.Main.Topbar.Left.Title,TextXAlignment="Left",TextSize=14,LayoutOrder=2,ThemeTag={TextColor3="Text"}});
			end
			task.spawn(function()
				if f.Icon then
					local A = ac.Image(f.Icon, f.Title, 0, f.Folder, "Window", true, f.IconThemed);
					A.Parent = f.UIElements.Main.Main.Topbar.Left;
					A.Size = UDim2.new(0, 22, 0, 22);
					if (ac.Icon(tostring(f.Icon)) and ac.Icon(tostring(f.Icon))[1]) then
						r.Image = ac.Icon(f.Icon)[1];
						r.ImageRectOffset = ac.Icon(f.Icon)[2].ImageRectPosition;
						r.ImageRectSize = ac.Icon(f.Icon)[2].ImageRectSize;
					end
				else
					r.Visible = false;
				end
			end);
			f.SetToggleKey = function(A, B)
				f.ToggleKey = B;
			end;
			function GetGitImage(GithubImg, ImageName)
				local decodedUrl = GithubImg:lower():gsub("%%20", " ")
				local extensions = {".png", ".jpg", ".jpeg"}
				local fileName

				for _, ext in ipairs(extensions) do
					if decodedUrl:sub(-#ext) == ext then
						fileName = ImageName .. ext
						break
					end
				end

				if not fileName then return nil end

				if not isfile(fileName) then
					local success, result = pcall(function()
						return game:HttpGet(GithubImg)
					end)
					if success and result then
						writefile(fileName, result)
					else
						return nil
					end
				end

				return (getsynasset or getcustomasset)(fileName)
			end

			f.SetBackgroundImage = function(A, B)
				local asset = GetGitImage(B, A)
				if asset then
					f.UIElements.Main.Background.ImageLabel.Image = asset;
				end
			end;
			f.SetBackgroundImageTransparency = function(A, B)
				f.UIElements.Main.Background.ImageLabel.ImageTransparency = B;
				f.BackgroundImageTransparency = B;
			end;
			local A, B, C, D, E = ac.Icon("minimize"), (ac.Icon("maximize"));
			E = f:CreateTopbarButton("Fullscreen", "maximize", function()
				local F = f.IsFullscreen;
				y:Set(F);
				if not F then
					C = f.UIElements.Main.Position;
					D = f.UIElements.Main.Size;
					E.ImageLabel.Image = A[1];
					E.ImageLabel.ImageRectOffset = A[2].ImageRectPosition;
					E.ImageLabel.ImageRectSize = A[2].ImageRectSize;
					f.CanResize = false;
				else
					E.ImageLabel.Image = B[1];
					E.ImageLabel.ImageRectOffset = B[2].ImageRectPosition;
					E.ImageLabel.ImageRectSize = B[2].ImageRectSize;
					f.CanResize = true;
				end
				ae(f.UIElements.Main, 0.45, {Size=((F and D) or UDim2.new(1, -20, 1, -72))}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				ae(f.UIElements.Main, 0.45, {Position=((F and C) or UDim2.new(0.5, 0, 0.5, 26))}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				f.IsFullscreen = not F;
			end, 998);
			f:CreateTopbarButton("Minimize", "minus", function()
				f:Close();
				task.spawn(function()
					task.wait(0.3);
					if (not o and f.IsOpenButtonEnabled) then
						p.Visible = true;
					end
				end);
				local F = (o and ("Press " .. f.ToggleKey.Name .. " to open the Window")) or "Click the Button to open the Window";
				if not f.IsOpenButtonEnabled then
					d = true;
				end
				if not d then
					d = not d;
					e.WindUI({Title="Minimize",Content=("You've closed the Window. " .. F),Icon="eye-off",Duration=5});
				end
			end, 997);
			f.OnClose = function(F, G)
				f.OnCloseCallback = G;
			end;
			f.OnDestroy = function(F, G)
				f.OnDestroyCallback = G;
			end;
			f.Open = function(F)
				task.spawn(function()
					task.wait(0.06);
					f.Closed = false;
					ae(f.UIElements.Main.Background, 0.2, {ImageTransparency=((e.Transparent and e.WindUI.TransparencyValue) or 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					ae(f.UIElements.Main.Background, 0.4, {Size=UDim2.new(1, 0, 1, 0)}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play();
					ae(f.UIElements.Main.Background.ImageLabel, 0.2, {ImageTransparency=f.BackgroundImageTransparency}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					ae(n, 0.25, {ImageTransparency=0.7}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					if UIStroke then
						ae(UIStroke, 0.25, {Transparency=0.8}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
					end
					task.spawn(function()
						task.wait(0.5);
						ae(u, 0.45, {Size=UDim2.new(0, 200, 0, 4),ImageTransparency=0.8}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play();
						ae(h.ImageLabel, 0.45, {ImageTransparency=0.8}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play();
						task.wait(0.45);
						y:Set(true);
						f.CanResize = true;
					end);
					f.CanDropdown = true;
					f.UIElements.Main.Visible = true;
					task.spawn(function()
						task.wait(0.19);
						f.UIElements.Main.Main.Visible = true;
					end);
				end);
			end;
			f.Close = function(F)
				local G = {};
				if f.OnCloseCallback then
					task.spawn(function()
						ac.SafeCallback(f.OnCloseCallback);
					end);
				end
				f.UIElements.Main.Main.Visible = false;
				f.CanDropdown = false;
				f.Closed = true;
				ae(f.UIElements.Main.Background, 0.32, {ImageTransparency=1}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play();
				ae(f.UIElements.Main.Background, 0.4, {Size=UDim2.new(1, 0, 1, -240)}, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut):Play();
				ae(f.UIElements.Main.Background.ImageLabel, 0.2, {ImageTransparency=1}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				ae(n, 0.25, {ImageTransparency=1}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				if UIStroke then
					ae(UIStroke, 0.25, {Transparency=1}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				end
				ae(u, 0.3, {Size=UDim2.new(0, 0, 0, 4),ImageTransparency=1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut):Play();
				ae(h.ImageLabel, 0.3, {ImageTransparency=1}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play();
				y:Set(false);
				f.CanResize = false;
				task.spawn(function()
					task.wait(0.4);
					f.UIElements.Main.Visible = false;
				end);
				G.Destroy = function(H)
					if f.OnDestroyCallback then
						task.spawn(function()
							ac.SafeCallback(f.OnDestroyCallback);
						end);
					end
					f.Destroyed = true;
					task.wait(0.4);
					e.Parent.Parent:Destroy();
					ac.DisconnectAll();
				end;
				return G;
			end;
			f.ToggleTransparency = function(F, G)
				f.Transparent = G;
				e.WindUI.Transparent = G;
				f.UIElements.Main.Background.ImageTransparency = (G and e.WindUI.TransparencyValue) or 0;
				f.UIElements.MainBar.Background.ImageTransparency = (G and 0.97) or 0.95;
			end;
			if (not o and f.IsOpenButtonEnabled) then
				ac.AddSignal(q.TextButton.MouseButton1Click, function()
					p.Visible = false;
					f:Open();
				end);
			end
			ac.AddSignal(aa.InputBegan, function(F, G)
				if G then
					return;
				end
				if (F.KeyCode == f.ToggleKey) then
					if f.Closed then
						f:Open();
					else
						f:Close();
					end
				end
			end);
			task.spawn(function()
				f:Open();
			end);
			f.EditOpenButton = function(F, G)
				if (q and (q.Parent ~= nil)) then
					local H = {Title=G.Title,Icon=(G.Icon or f.Icon),Enabled=G.Enabled,Position=G.Position,Draggable=G.Draggable,OnlyMobile=G.OnlyMobile,CornerRadius=(G.CornerRadius or UDim.new(1, 0)),StrokeThickness=(G.StrokeThickness or 2),Color=(G.Color or ColorSequence.new(Color3.fromHex("40c9ff"), Color3.fromHex("e81cff")))};
					if (H.Enabled == false) then
						f.IsOpenButtonEnabled = false;
					end
					if ((H.Draggable == false) and OpenButtonDrag and OpenButtonDivider) then
						OpenButtonDrag.Visible = H.Draggable;
						OpenButtonDivider.Visible = H.Draggable;
						if z then
							z:Set(H.Draggable);
						end
					end
					if (H.Position and p) then
						p.Position = H.Position;
					end
					local I = aa.KeyboardEnabled or not aa.TouchEnabled;
					q.Visible = not H.OnlyMobile or not I;
					if not q.Visible then
						return;
					end
					if OpenButtonTitle then
						if H.Title then
							OpenButtonTitle.Text = H.Title;
						elseif (H.Title == nil) then
						end
					end
					if (ac.Icon(H.Icon) and r) then
						r.Visible = true;
						r.Image = ac.Icon(H.Icon)[1];
						r.ImageRectOffset = ac.Icon(H.Icon)[2].ImageRectPosition;
						r.ImageRectSize = ac.Icon(H.Icon)[2].ImageRectSize;
					end
					q.UIStroke.UIGradient.Color = H.Color;
					if s then
						s.UIGradient.Color = H.Color;
					end
					q.UICorner.CornerRadius = H.CornerRadius;
					q.TextButton.UICorner.CornerRadius = UDim.new(H.CornerRadius.Scale, H.CornerRadius.Offset - 4);
					q.UIStroke.Thickness = H.StrokeThickness;
				end
			end;
			local F = a.load("t");
			local G = F.Init(f, e.WindUI, e.Parent.Parent.ToolTips, k);
			G:OnChange(function(H)
				f.CurrentTab = H;
			end);
			f.TabModule = F;
			f.Tab = function(H, I)
				I.Parent = f.UIElements.SideBar.Frame;
				return G.New(I);
			end;
			f.SelectTab = function(H, I)
				G:SelectTab(I);
			end;
			f.Divider = function(H)
				local I = ad("Frame", {Size=UDim2.new(1, 0, 0, 1),Position=UDim2.new(0.5, 0, 0, 0),AnchorPoint=Vector2.new(0.5, 0),BackgroundTransparency=0.9,ThemeTag={BackgroundColor3="Text"}});
				local J = ad("Frame", {Parent=f.UIElements.SideBar.Frame,Size=UDim2.new(1, -7, 0, 1),BackgroundTransparency=1}, {I});
				return J;
			end;
			local H = a.load("e").Init(f);
			f.Dialog = function(I, J)
				local K, L = {Title=(J.Title or "Dialog"),Content=J.Content,Buttons=(J.Buttons or {})}, H.Create();
				local M, N = (ad("Frame", {Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",BackgroundTransparency=1,Parent=L.UIElements.Main}, {ad("UIListLayout", {FillDirection="Horizontal",Padding=UDim.new(0, L.UIPadding),VerticalAlignment="Center"})}));
				if J.Icon then
					N = ac.Image(J.Icon, K.Title .. ":" .. J.Icon, 0, f, "Dialog", J.IconThemed);
					N.Size = UDim2.new(0, 26, 0, 26);
					N.Parent = M;
				end
				L.UIElements.UIListLayout = ad("UIListLayout", {Padding=UDim.new(0, 18.4),FillDirection="Vertical",HorizontalAlignment="Left",Parent=L.UIElements.Main});
				ad("UISizeConstraint", {MinSize=Vector2.new(180, 20),MaxSize=Vector2.new(400, math.huge),Parent=L.UIElements.Main});
				L.UIElements.Title = ad("TextLabel", {Text=K.Title,TextSize=19,FontFace=Font.new(ac.Font, Enum.FontWeight.SemiBold),TextXAlignment="Left",TextWrapped=true,RichText=true,Size=UDim2.new(1, (N and (-26 - L.UIPadding)) or 0, 0, 0),AutomaticSize="Y",ThemeTag={TextColor3="Text"},BackgroundTransparency=1,Parent=M});
				if K.Content then
					ad("TextLabel", {Text=K.Content,TextSize=18,TextTransparency=0.4,TextWrapped=true,RichText=true,FontFace=Font.new(ac.Font, Enum.FontWeight.Medium),TextXAlignment="Left",Size=UDim2.new(1, 0, 0, 0),AutomaticSize="Y",LayoutOrder=2,ThemeTag={TextColor3="Text"},BackgroundTransparency=1,Parent=L.UIElements.Main});
				end
				local O = ad("UIListLayout", {Padding=UDim.new(0, 10),FillDirection="Horizontal",HorizontalAlignment="Right"});
				local P, Q, R = ad("Frame", {Size=UDim2.new(1, 0, 0, 40),AutomaticSize="None",BackgroundTransparency=1,Parent=L.UIElements.Main,LayoutOrder=4}, {O}), a.load("d").Button, {};
				for S, T in next, K.Buttons do
					local U = Q(T.Title, T.Icon, T.Callback, T.Variant, P, L);
					table.insert(R, U);
				end
				local U = function()
					local U, V = O.AbsoluteContentSize.X, P.AbsoluteSize.X - 1;
					if (U > V) then
						O.FillDirection = "Vertical";
						O.HorizontalAlignment = "Right";
						O.VerticalAlignment = "Bottom";
						P.AutomaticSize = "Y";
						for W, X in ipairs(R) do
							X.Size = UDim2.new(1, 0, 0, 40);
							X.AutomaticSize = "None";
						end
					else
						O.FillDirection = "Horizontal";
						O.HorizontalAlignment = "Right";
						O.VerticalAlignment = "Center";
						P.AutomaticSize = "None";
						for W, X in ipairs(R) do
							X.Size = UDim2.new(0, 0, 1, 0);
							X.AutomaticSize = "X";
						end
					end
				end;
				ac.AddSignal(L.UIElements.Main:GetPropertyChangedSignal("AbsoluteSize"), U);
				U();
				L:Open();
				return L;
			end;
			f:CreateTopbarButton("Close", "x", function()
				ae(f.UIElements.Main, 0.35, {Position=UDim2.new(0.5, 0, 0.5, 0)}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
				f({Icon="trash-2",Title="Close Window",Content=[[Do you want to close this window? You will not be able to open it again.]],Buttons={{Title="Cancel",Callback=function()
				end,Variant="Secondary"},{Title="Close Window",Callback=function()
					f:Close():Destroy();
				end,Variant="Primary"}}});
			end, 999);
			local I = function(I)
				if f.CanResize then
					isResizing = true;
					i.Active = true;
					initialSize = f.UIElements.Main.Size;
					initialInputPosition = I.Position;
					ae(i, 0.12, {ImageTransparency=0.65}):Play();
					ae(i.ImageLabel, 0.12, {ImageTransparency=0}):Play();
					ae(h.ImageLabel, 0.1, {ImageTransparency=0.35}):Play();
					ac.AddSignal(I.Changed, function()
						if (I.UserInputState == Enum.UserInputState.End) then
							isResizing = false;
							i.Active = false;
							ae(i, 0.2, {ImageTransparency=1}):Play();
							ae(i.ImageLabel, 0.17, {ImageTransparency=1}):Play();
							ae(h.ImageLabel, 0.17, {ImageTransparency=0.8}):Play();
						end
					end);
				end
			end;
			ac.AddSignal(h.InputBegan, function(J)
				if ((J.UserInputType == Enum.UserInputType.MouseButton1) or (J.UserInputType == Enum.UserInputType.Touch)) then
					if f.CanResize then
						I(J);
					end
				end
			end);
			ac.AddSignal(aa.InputChanged, function(J)
				if ((J.UserInputType == Enum.UserInputType.MouseMovement) or (J.UserInputType == Enum.UserInputType.Touch)) then
					if (isResizing and f.CanResize) then
						local K = J.Position - initialInputPosition;
						local L = UDim2.new(0, initialSize.X.Offset + (K.X * 2), 0, initialSize.Y.Offset + (K.Y * 2));
						ae(f.UIElements.Main, 0, {Size=UDim2.new(0, math.clamp(L.X.Offset, 480, 700), 0, math.clamp(L.Y.Offset, 350, 520))}):Play();
					end
				end
			end);
			if not f.HideSearchBar then
				local J, K, L = a.load("u"), false, (ag("Search", "search", f.UIElements.SideBarContainer));
				L.Size = UDim2.new(1, -f.UIPadding / 2, 0, 39);
				L.Position = UDim2.new(0, f.UIPadding / 2, 0, 0);
				ac.AddSignal(L.MouseButton1Click, function()
					if K then
						return;
					end
					J.new(f.TabModule, f.UIElements.Main, function()
						K = false;
						f.CanResize = true;
						ae(j, 0.1, {ImageTransparency=1}):Play();
						j.Active = false;
					end);
					ae(j, 0.1, {ImageTransparency=0.65}):Play();
					j.Active = true;
					K = true;
					f.CanResize = false;
				end);
			end
			f.DisableTopbarButtons = function(J, K)
				for L, M in next, K do
					for N, O in next, f.TopBarButtons do
						if (O.Name == M) then
							O.Object.Visible = false;
						end
					end
				end
			end;
			return f;
		end;
	end;
end
local aa, ab, ac = {Window=nil,Theme=nil,Creator=a.load("a"),Themes=a.load("b"),Transparent=false,TransparencyValue=0.15,ConfigManager=nil}, game:GetService("RunService"), a.load("f");
local ad, ae = aa.Themes, aa.Creator;
local af, ag = ae.New, ae.Tween;
ae.Themes = ad;
local b = (game:GetService("Players") and game:GetService("Players").LocalPlayer) or nil;
aa.Themes = ad;
local c, d = protectgui or (syn and syn.protect_gui) or function()
end, (gethui and gethui()) or game.CoreGui;
aa.ScreenGui = af("ScreenGui", {Name="WindUI",Parent=d,IgnoreGuiInset=true,ScreenInsets="None"}, {af("Folder", {Name="Window"}),af("Folder", {Name="KeySystem"}),af("Folder", {Name="Popups"}),af("Folder", {Name="ToolTips"})});
aa.NotificationGui = af("ScreenGui", {Name="WindUI/Notifications",Parent=d,IgnoreGuiInset=true});
aa.DropdownGui = af("ScreenGui", {Name="WindUI/Dropdowns",Parent=d,IgnoreGuiInset=true});
c(aa.ScreenGui);
c(aa.NotificationGui);
c(aa.DropdownGui);
math.clamp(aa.TransparencyValue, 0, 0.4);
local e = a.load("g");
local f = e.Init(aa.NotificationGui);
aa.Notify = function(g, h)
	h.Holder = f.Frame;
	h.Window = aa.Window;
	h.WindUI = aa;
	return e.New(h);
end;
aa.SetNotificationLower = function(g, h)
	f.SetLower(h);
end;
aa.SetFont = function(g, h)
	ae.UpdateFont(h);
end;
aa.AddTheme = function(g, h)
	ad[h.Name] = h;
	return h;
end;
aa.SetTheme = function(g, h)
	if ad[h] then
		aa.Theme = ad[h];
		ae.SetTheme(ad[h]);
		ae.UpdateTheme();
		return ad[h];
	end
	return nil;
end;
aa:SetTheme("Dark");
aa.GetThemes = function(g)
	return ad;
end;
aa.GetCurrentTheme = function(g)
	return aa.Theme.Name;
end;
aa.GetTransparency = function(g)
	return aa.Transparent or false;
end;
aa.GetWindowSize = function(g)
	return Window.UIElements.Main.Size;
end;
aa.Popup = function(g, h)
	h.WindUI = aa;
	return a.load("h").new(h);
end;
aa.CreateWindow = function(g, h)
	local i = a.load("v");
	if not isfolder("WindUI") then
		makefolder("WindUI");
	end
	if h.Folder then
		makefolder(h.Folder);
	else
		makefolder(h.Title);
	end
	h.WindUI = aa;
	h.Parent = aa.ScreenGui.Window;
	if aa.Window then
		warn("You cannot create more than one window");
		return;
	end
	local j, k = true, ad[h.Theme or "Dark"];
	aa.Theme = k;
	ae.SetTheme(k);
	local n = b.Name or "Unknown";
	if h.KeySystem then
		j = false;
		if (h.KeySystem.SaveKey and h.Folder) then
			if isfile(h.Folder .. "/" .. n .. ".key") then
				local o = tostring(h.KeySystem.Key) == tostring(readfile(h.Folder .. "/" .. n .. ".key"));
				if (type(h.KeySystem.Key) == "table") then
					o = table.find(h.KeySystem.Key, readfile(h.Folder .. "/" .. n .. ".key"));
				end
				if o then
					j = true;
				end
			else
				ac.new(h, n, function(o)
					j = o;
				end);
			end
		else
			ac.new(h, n, function(o)
				j = o;
			end);
		end
		repeat
			task.wait();
		until j 
	end
	local o = i(h);
	aa.Transparent = h.Transparent;
	aa.Window = o;
	return o;
end;
return aa;
