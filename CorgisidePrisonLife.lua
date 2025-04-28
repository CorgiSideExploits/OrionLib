--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v24, v25)
	local v26 = {};
	for v41 = 1, #v24 do
		v6(v26, v0(v4(v1(v2(v24, v41, v41 + 1)), v1(v2(v25, 1 + (v41 % #v25), 1 + (v41 % #v25) + 1))) % 256));
	end
	return v5(v26);
end
local v8 = tonumber;
local v9 = string.byte;
local v10 = string.char;
local v11 = string.sub;
local v12 = string.gsub;
local v13 = string.rep;
local v14 = table.concat;
local v15 = table.insert;
local v16 = math.ldexp;
local v17 = getfenv or function()
	return _ENV;
end;
local v18 = setmetatable;
local v19 = pcall;
local v20 = select;
local v21 = unpack or table.unpack;
local v22 = tonumber;
local function v23(v27, v28, ...)
	local v29 = 1;
	local v30;
	v27 = v12(v11(v27, 5), v7("\178\158", "\111\156\176\41\77"), function(v42)
		if (v9(v42, 2) == 81) then
			local v104 = 0;
			while true do
				if (v104 == 0) then
					v30 = v8(v11(v42, 1, 1));
					return "";
				end
			end
		else
			local v105 = 0;
			local v106;
			while true do
				if (v105 == 0) then
					v106 = v10(v8(v42, 16));
					if v30 then
						local v123 = 0;
						local v124;
						while true do
							if (v123 == 0) then
								v124 = v13(v106, v30);
								v30 = nil;
								v123 = 1;
							end
							if (v123 == 1) then
								return v124;
							end
						end
					else
						return v106;
					end
					break;
				end
			end
		end
	end);
	local function v31(v43, v44, v45)
		if v45 then
			local v107 = 0;
			local v108;
			while true do
				if (v107 == 0) then
					v108 = (v43 / (2 ^ (v44 - 1))) % (2 ^ (((v45 - 1) - (v44 - 1)) + 1));
					return v108 - (v108 % 1);
				end
			end
		else
			local v109 = 0;
			local v110;
			while true do
				if (v109 == 0) then
					v110 = 2 ^ (v44 - 1);
					return (((v43 % (v110 + v110)) >= v110) and 1) or 0;
				end
			end
		end
	end
	local function v32()
		local v46 = 0;
		local v47;
		while true do
			if (v46 == 1) then
				return v47;
			end
			if (v46 == 0) then
				v47 = v9(v27, v29, v29);
				v29 = v29 + (2 - 1);
				v46 = 1;
			end
		end
	end
	local function v33()
		local v48 = 0;
		local v49;
		local v50;
		while true do
			if (v48 == 0) then
				v49, v50 = v9(v27, v29, v29 + 2);
				v29 = v29 + 2;
				v48 = 1;
			end
			if (v48 == 1) then
				return (v50 * 256) + v49;
			end
		end
	end
	local function v34()
		local v51 = 0;
		local v52;
		local v53;
		local v54;
		local v55;
		while true do
			if (v51 == 1) then
				return (v55 * 16777216) + (v54 * 65536) + (v53 * 256) + v52;
			end
			if (0 == v51) then
				v52, v53, v54, v55 = v9(v27, v29, v29 + 3);
				v29 = v29 + 4;
				v51 = 1;
			end
		end
	end
	local function v35()
		local v56 = 0;
		local v57;
		local v58;
		local v59;
		local v60;
		local v61;
		local v62;
		while true do
			if (1 == v56) then
				v59 = 1;
				v60 = (v31(v58, 2 - 1, 20) * (2 ^ 32)) + v57;
				v56 = 2;
			end
			if (v56 == 2) then
				v61 = v31(v58, 21, 59 - 28);
				v62 = ((v31(v58, 32) == 1) and -1) or 1;
				v56 = 3;
			end
			if (v56 == 0) then
				v57 = v34();
				v58 = v34();
				v56 = 1;
			end
			if (v56 == 3) then
				if (v61 == 0) then
					if (v60 == 0) then
						return v62 * 0;
					else
						local v125 = 0;
						while true do
							if (v125 == 0) then
								v61 = 1;
								v59 = 0;
								break;
							end
						end
					end
				elseif (v61 == 2047) then
					return ((v60 == (0 - 0)) and (v62 * (1 / 0))) or (v62 * NaN);
				end
				return v16(v62, v61 - 1023) * (v59 + (v60 / (2 ^ 52)));
			end
		end
	end
	local function v36(v63)
		local v64;
		if not v63 then
			v63 = v34();
			if (v63 == 0) then
				return "";
			end
		end
		v64 = v11(v27, v29, (v29 + v63) - 1);
		v29 = v29 + v63;
		local v65 = {};
		for v79 = 1, #v64 do
			v65[v79] = v10(v9(v11(v64, v79, v79)));
		end
		return v14(v65);
	end
	local v37 = v34;
	local function v38(...)
		return {...}, v20("#", ...);
	end
	local function v39()
		local v66 = {};
		local v67 = {};
		local v68 = {};
		local v69 = {v66,v67,nil,v68};
		local v70 = v34();
		local v71 = {};
		for v81 = 1, v70 do
			local v82 = v32();
			local v83;
			if (v82 == 1) then
				v83 = v32() ~= 0;
			elseif (v82 == 2) then
				v83 = v35();
			elseif (v82 == 3) then
				v83 = v36();
			end
			v71[v81] = v83;
		end
		v69[3] = v32();
		for v85 = 1, v34() do
			local v86 = 0;
			local v87;
			while true do
				if (v86 == 0) then
					v87 = v32();
					if (v31(v87, 620 - (555 + 64), 1) == 0) then
						local v119 = 0;
						local v120;
						local v121;
						local v122;
						while true do
							if (1 == v119) then
								v122 = {v33(),v33(),nil,nil};
								if (v120 == 0) then
									local v127 = 0;
									while true do
										if (v127 == 0) then
											v122[3] = v33();
											v122[4] = v33();
											break;
										end
									end
								elseif (v120 == 1) then
									v122[3] = v34();
								elseif (v120 == 2) then
									v122[3] = v34() - (2 ^ (584 - (367 + 201)));
								elseif (v120 == 3) then
									local v138 = 0;
									while true do
										if (0 == v138) then
											v122[3] = v34() - (2 ^ 16);
											v122[4] = v33();
											break;
										end
									end
								end
								v119 = 2;
							end
							if (3 == v119) then
								if (v31(v121, 3, 3) == 1) then
									v122[4] = v71[v122[4]];
								end
								v66[v85] = v122;
								break;
							end
							if (v119 == 0) then
								v120 = v31(v87, 2, 3);
								v121 = v31(v87, 4, 6);
								v119 = 1;
							end
							if (v119 == 2) then
								if (v31(v121, 928 - (214 + 713), 1) == 1) then
									v122[2] = v71[v122[2]];
								end
								if (v31(v121, 2, 1 + 1) == (1 + 0)) then
									v122[3] = v71[v122[3]];
								end
								v119 = 3;
							end
						end
					end
					break;
				end
			end
		end
		for v88 = 1, v34() do
			v67[v88 - 1] = v39();
		end
		return v69;
	end
	local function v40(v73, v74, v75)
		local v76 = v73[1];
		local v77 = v73[2];
		local v78 = v73[3];
		return function(...)
			local v90 = v76;
			local v91 = v77;
			local v92 = v78;
			local v93 = v38;
			local v94 = 1;
			local v95 = -1;
			local v96 = {};
			local v97 = {...};
			local v98 = v20("#", ...) - 1;
			local v99 = {};
			local v100 = {};
			for v111 = 0, v98 do
				if (v111 >= v92) then
					v96[v111 - v92] = v97[v111 + 1];
				else
					v100[v111] = v97[v111 + 1];
				end
			end
			local v101 = (v98 - v92) + 1;
			local v102;
			local v103;
			while true do
				local v112 = 0;
				while true do
					if (v112 == 0) then
						v102 = v90[v94];
						v103 = v102[1];
						v112 = 1;
					end
					if (v112 == 1) then
						if (v103 <= 32) then
							if (v103 <= (892 - (282 + 595))) then
								if (v103 <= 7) then
									if (v103 <= 3) then
										if (v103 <= (1638 - (1523 + 114))) then
											if (v103 > 0) then
												do
													return;
												end
											else
												v100[v102[2]] = #v100[v102[3]];
											end
										elseif (v103 > 2) then
											local v140 = 0;
											local v141;
											local v142;
											while true do
												if (v140 == 1) then
													v100[v141 + 1] = v142;
													v100[v141] = v142[v102[4]];
													break;
												end
												if (v140 == 0) then
													v141 = v102[2];
													v142 = v100[v102[3]];
													v140 = 1;
												end
											end
										else
											v100[v102[2]] = v102[3] ~= 0;
										end
									elseif (v103 <= 5) then
										if (v103 == 4) then
											local v144 = 0;
											local v145;
											local v146;
											local v147;
											while true do
												if (2 == v144) then
													if (v146 > 0) then
														if (v147 <= v100[v145 + (1 - 0)]) then
															local v356 = 0;
															while true do
																if (v356 == 0) then
																	v94 = v102[3];
																	v100[v145 + 3] = v147;
																	break;
																end
															end
														end
													elseif (v147 >= v100[v145 + 1]) then
														local v357 = 0;
														while true do
															if (v357 == 0) then
																v94 = v102[1068 - (68 + 997)];
																v100[v145 + 3] = v147;
																break;
															end
														end
													end
													break;
												end
												if (v144 == 0) then
													v145 = v102[2 + 0];
													v146 = v100[v145 + 2];
													v144 = 1;
												end
												if (v144 == 1) then
													v147 = v100[v145] + v146;
													v100[v145] = v147;
													v144 = 2;
												end
											end
										else
											v100[v102[2]] = {};
										end
									elseif (v103 > 6) then
										local v149 = 0;
										local v150;
										while true do
											if (v149 == 0) then
												v150 = v102[1272 - (226 + 1044)];
												v100[v150](v21(v100, v150 + (4 - 3), v95));
												break;
											end
										end
									else
										local v151 = v102[2];
										local v152, v153 = v93(v100[v151](v100[v151 + 1]));
										v95 = (v153 + v151) - 1;
										local v154 = 0;
										for v251 = v151, v95 do
											v154 = v154 + 1;
											v100[v251] = v152[v154];
										end
									end
								elseif (v103 <= 11) then
									if (v103 <= 9) then
										if (v103 == 8) then
											local v155 = 0;
											local v156;
											local v157;
											while true do
												if (v155 == 0) then
													v156 = v102[119 - (32 + 85)];
													v157 = v100[v102[3]];
													v155 = 1;
												end
												if (v155 == 1) then
													v100[v156 + 1] = v157;
													v100[v156] = v157[v102[4]];
													break;
												end
											end
										else
											v100[v102[2]]();
										end
									elseif (v103 == 10) then
										local v158 = v102[2];
										v100[v158] = v100[v158](v21(v100, v158 + 1 + 0, v95));
									else
										local v160 = v102[2];
										do
											return v21(v100, v160, v95);
										end
									end
								elseif (v103 <= 13) then
									if (v103 == 12) then
										if not v100[v102[2]] then
											v94 = v94 + 1;
										else
											v94 = v102[3];
										end
									else
										v100[v102[2]] = v100[v102[3]];
									end
								elseif (v103 > 14) then
									for v254 = v102[2], v102[3] do
										v100[v254] = nil;
									end
								else
									local v163 = 0;
									local v164;
									local v165;
									local v166;
									while true do
										if (v163 == 0) then
											v164 = v102[2];
											v165 = v100[v164];
											v163 = 1;
										end
										if (v163 == 1) then
											v166 = v100[v164 + 2];
											if (v166 > 0) then
												if (v165 > v100[v164 + 1]) then
													v94 = v102[3];
												else
													v100[v164 + 3] = v165;
												end
											elseif (v165 < v100[v164 + 1]) then
												v94 = v102[3];
											else
												v100[v164 + 3] = v165;
											end
											break;
										end
									end
								end
							elseif (v103 <= 23) then
								if (v103 <= 19) then
									if (v103 <= 17) then
										if (v103 == 16) then
											v100[v102[2]] = v74[v102[3]];
										else
											v100[v102[2]] = v100[v102[1 + 2]] + v102[4];
										end
									elseif (v103 > 18) then
										local v170 = 0;
										local v171;
										local v172;
										local v173;
										while true do
											if (v170 == 1) then
												v173 = v100[v171] + v172;
												v100[v171] = v173;
												v170 = 2;
											end
											if (v170 == 2) then
												if (v172 > 0) then
													if (v173 <= v100[v171 + (958 - (892 + 65))]) then
														v94 = v102[3];
														v100[v171 + (7 - 4)] = v173;
													end
												elseif (v173 >= v100[v171 + 1]) then
													local v364 = 0;
													while true do
														if (v364 == 0) then
															v94 = v102[3];
															v100[v171 + 3] = v173;
															break;
														end
													end
												end
												break;
											end
											if (v170 == 0) then
												v171 = v102[2];
												v172 = v100[v171 + 2];
												v170 = 1;
											end
										end
									else
										v100[v102[2]] = v102[3] + v100[v102[4]];
									end
								elseif (v103 <= 21) then
									if (v103 > 20) then
										if not v100[v102[2]] then
											v94 = v94 + 1;
										else
											v94 = v102[3];
										end
									else
										v100[v102[2]] = v100[v102[5 - 2]];
									end
								elseif (v103 == 22) then
									local v177 = 0;
									local v178;
									while true do
										if (v177 == 0) then
											v178 = v102[3 - 1];
											v100[v178] = v100[v178](v21(v100, v178 + 1, v95));
											break;
										end
									end
								else
									local v179 = v102[352 - (87 + 263)];
									local v180, v181 = v93(v100[v179](v21(v100, v179 + 1, v102[3])));
									v95 = (v181 + v179) - 1;
									local v182 = 180 - (67 + 113);
									for v256 = v179, v95 do
										local v257 = 0;
										while true do
											if (v257 == 0) then
												v182 = v182 + 1;
												v100[v256] = v180[v182];
												break;
											end
										end
									end
								end
							elseif (v103 <= 27) then
								if (v103 <= (19 + 6)) then
									if (v103 > (58 - 34)) then
										v100[v102[2]] = v100[v102[3]] % v102[4];
									else
										v100[v102[2]] = v100[v102[3]] % v102[4];
									end
								elseif (v103 > 26) then
									local v185 = 0;
									local v186;
									local v187;
									local v188;
									while true do
										if (1 == v185) then
											v188 = v100[v186 + 2];
											if (v188 > 0) then
												if (v187 > v100[v186 + 1 + 0]) then
													v94 = v102[3];
												else
													v100[v186 + 3] = v187;
												end
											elseif (v187 < v100[v186 + 1]) then
												v94 = v102[11 - 8];
											else
												v100[v186 + 3] = v187;
											end
											break;
										end
										if (v185 == 0) then
											v186 = v102[2];
											v187 = v100[v186];
											v185 = 1;
										end
									end
								else
									v100[v102[2]] = v75[v102[3]];
								end
							elseif (v103 <= (981 - (802 + 150))) then
								if (v103 > 28) then
									local v191 = 0;
									local v192;
									local v193;
									local v194;
									local v195;
									while true do
										if (v191 == 1) then
											v95 = (v194 + v192) - 1;
											v195 = 0;
											v191 = 2;
										end
										if (v191 == 2) then
											for v330 = v192, v95 do
												local v331 = 0;
												while true do
													if (v331 == 0) then
														v195 = v195 + 1;
														v100[v330] = v193[v195];
														break;
													end
												end
											end
											break;
										end
										if (0 == v191) then
											v192 = v102[2];
											v193, v194 = v93(v100[v192](v21(v100, v192 + 1, v95)));
											v191 = 1;
										end
									end
								else
									local v196 = v102[2];
									local v197, v198 = v93(v100[v196](v21(v100, v196 + 1, v95)));
									v95 = (v198 + v196) - 1;
									local v199 = 0;
									for v258 = v196, v95 do
										local v259 = 0;
										while true do
											if (v259 == 0) then
												v199 = v199 + 1;
												v100[v258] = v197[v199];
												break;
											end
										end
									end
								end
							elseif (v103 <= 30) then
								local v200 = v102[2];
								local v201, v202 = v93(v100[v200](v100[v200 + 1]));
								v95 = (v202 + v200) - (2 - 1);
								local v203 = 0;
								for v260 = v200, v95 do
									v203 = v203 + (1 - 0);
									v100[v260] = v201[v203];
								end
							elseif (v103 == (23 + 8)) then
								v100[v102[2]]();
							else
								v94 = v102[3];
							end
						elseif (v103 <= 48) then
							if (v103 <= 40) then
								if (v103 <= (1033 - (915 + 82))) then
									if (v103 <= 34) then
										if (v103 > 33) then
											v100[v102[2]] = #v100[v102[3]];
										else
											v100[v102[2]] = v100[v102[3]] % v100[v102[4]];
										end
									elseif (v103 > 35) then
										v100[v102[2]] = v100[v102[8 - 5]][v102[3 + 1]];
									else
										v100[v102[2]] = v102[3];
									end
								elseif (v103 <= 38) then
									if (v103 > 37) then
										do
											return;
										end
									else
										local v210 = v91[v102[3]];
										local v211;
										local v212 = {};
										v211 = v18({}, {[v7("\220\121\73\137\231\67\88", "\231\131\38\32")]=function(v263, v264)
											local v265 = v212[v264];
											return v265[1][v265[2]];
										end,[v7("\137\142\84\75\0\56\166\80\179\169", "\52\214\209\58\46\119\81\200")]=function(v266, v267, v268)
											local v269 = 0;
											local v270;
											while true do
												if (v269 == 0) then
													v270 = v212[v267];
													v270[1][v270[2 - 0]] = v268;
													break;
												end
											end
										end});
										for v271 = 1188 - (1069 + 118), v102[4] do
											local v272 = 0;
											local v273;
											while true do
												if (v272 == 0) then
													v94 = v94 + 1;
													v273 = v90[v94];
													v272 = 1;
												end
												if (v272 == 1) then
													if (v273[2 - 1] == 13) then
														v212[v271 - (1 - 0)] = {v100,v273[3]};
													else
														v212[v271 - (1 + 0)] = {v74,v273[3]};
													end
													v99[#v99 + 1] = v212;
													break;
												end
											end
										end
										v100[v102[2]] = v40(v210, v211, v75);
									end
								elseif (v103 == (68 - 29)) then
									local v214 = 0;
									local v215;
									local v216;
									while true do
										if (v214 == 0) then
											v215 = v102[2];
											v216 = v100[v215];
											v214 = 1;
										end
										if (v214 == 1) then
											for v338 = v215 + 1, v95 do
												v15(v216, v100[v338]);
											end
											break;
										end
									end
								else
									local v217 = 0;
									local v218;
									local v219;
									local v220;
									local v221;
									while true do
										if (v217 == 2) then
											for v339 = v218, v95 do
												v221 = v221 + 1;
												v100[v339] = v219[v221];
											end
											break;
										end
										if (v217 == 0) then
											v218 = v102[2];
											v219, v220 = v93(v100[v218](v21(v100, v218 + 1, v102[3])));
											v217 = 1;
										end
										if (v217 == 1) then
											v95 = (v220 + v218) - 1;
											v221 = 0;
											v217 = 2;
										end
									end
								end
							elseif (v103 <= 44) then
								if (v103 <= 42) then
									if (v103 == 41) then
										v100[v102[2]] = v100[v102[3]] % v100[v102[4]];
									else
										local v223 = 0;
										local v224;
										while true do
											if (0 == v223) then
												v224 = v102[2];
												v100[v224] = v100[v224](v21(v100, v224 + 1, v102[3 + 0]));
												break;
											end
										end
									end
								elseif (v103 > 43) then
									v100[v102[793 - (368 + 423)]] = v102[3] ~= 0;
								else
									do
										return v100[v102[2]]();
									end
								end
							elseif (v103 <= 46) then
								if (v103 == (141 - 96)) then
									v100[v102[2]] = v102[3];
								else
									do
										return v100[v102[2]]();
									end
								end
							elseif (v103 == 47) then
								local v228 = 0;
								local v229;
								while true do
									if (v228 == 0) then
										v229 = v102[2];
										do
											return v100[v229](v21(v100, v229 + 1, v102[3]));
										end
										break;
									end
								end
							elseif v100[v102[2]] then
								v94 = v94 + 1;
							else
								v94 = v102[3];
							end
						elseif (v103 <= (74 - (10 + 8))) then
							if (v103 <= 52) then
								if (v103 <= 50) then
									if (v103 == 49) then
										local v230 = 0;
										local v231;
										while true do
											if (v230 == 0) then
												v231 = v102[2];
												v100[v231] = v100[v231](v21(v100, v231 + 1, v102[11 - 8]));
												break;
											end
										end
									else
										v100[v102[444 - (416 + 26)]] = v100[v102[9 - 6]] + v102[4];
									end
								elseif (v103 > 51) then
									v100[v102[2]] = v75[v102[3]];
								else
									local v235 = 0;
									local v236;
									while true do
										if (0 == v235) then
											v236 = v102[2];
											do
												return v21(v100, v236, v95);
											end
											break;
										end
									end
								end
							elseif (v103 <= 54) then
								if (v103 > (23 + 30)) then
									for v274 = v102[2], v102[3] do
										v100[v274] = nil;
									end
								else
									local v237 = v102[2];
									do
										return v100[v237](v21(v100, v237 + 1, v102[3]));
									end
								end
							elseif (v103 > 55) then
								if (v100[v102[2]] == v102[4]) then
									v94 = v94 + 1;
								else
									v94 = v102[3];
								end
							else
								v100[v102[2]] = v100[v102[3]][v102[4]];
							end
						elseif (v103 <= 60) then
							if (v103 <= 58) then
								if (v103 > 57) then
									if v100[v102[2]] then
										v94 = v94 + 1;
									else
										v94 = v102[3];
									end
								else
									local v240 = 0;
									local v241;
									local v242;
									local v243;
									while true do
										if (v240 == 1) then
											v243 = {};
											v242 = v18({}, {[v7("\122\243\63\37\136\181\93", "\208\37\172\86\75\236")]=function(v342, v343)
												local v344 = v243[v343];
												return v344[1][v344[2]];
											end,[v7("\150\130\225\142\187\160\179\235\142\180", "\204\201\221\143\235")]=function(v345, v346, v347)
												local v348 = 0;
												local v349;
												while true do
													if (v348 == 0) then
														v349 = v243[v346];
														v349[1][v349[2]] = v347;
														break;
													end
												end
											end});
											v240 = 2;
										end
										if (v240 == 0) then
											v241 = v91[v102[3]];
											v242 = nil;
											v240 = 1;
										end
										if (v240 == 2) then
											for v350 = 1 - 0, v102[4] do
												local v351 = 0;
												local v352;
												while true do
													if (1 == v351) then
														if (v352[439 - (145 + 293)] == 13) then
															v243[v350 - 1] = {v100,v352[433 - (44 + 386)]};
														else
															v243[v350 - 1] = {v74,v352[3]};
														end
														v99[#v99 + 1] = v243;
														break;
													end
													if (v351 == 0) then
														v94 = v94 + 1;
														v352 = v90[v94];
														v351 = 1;
													end
												end
											end
											v100[v102[1488 - (998 + 488)]] = v40(v241, v242, v75);
											break;
										end
									end
								end
							elseif (v103 == 59) then
								if (v100[v102[2]] == v102[4]) then
									v94 = v94 + 1;
								else
									v94 = v102[3];
								end
							else
								v100[v102[2]] = v102[3] + v100[v102[4]];
							end
						elseif (v103 <= 62) then
							if (v103 > 61) then
								local v245 = 0;
								local v246;
								local v247;
								while true do
									if (v245 == 0) then
										v246 = v102[2];
										v247 = v100[v246];
										v245 = 1;
									end
									if (v245 == 1) then
										for v353 = v246 + 1, v95 do
											v15(v247, v100[v353]);
										end
										break;
									end
								end
							else
								local v248 = 0;
								local v249;
								while true do
									if (v248 == 0) then
										v249 = v102[2];
										v100[v249](v21(v100, v249 + 1, v95));
										break;
									end
								end
							end
						elseif (v103 <= (21 + 42)) then
							v100[v102[2 + 0]] = {};
						elseif (v103 == 64) then
							v94 = v102[775 - (201 + 571)];
						else
							v100[v102[2]] = v74[v102[3]];
						end
						v94 = v94 + (1139 - (116 + 1022));
						break;
					end
				end
			end
		end;
	end
	return v40(v39(), {}, v28)(...);
end
