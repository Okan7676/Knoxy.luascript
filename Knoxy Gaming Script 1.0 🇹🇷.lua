gg.setVisible(false)
load = function(str) local i = "";repeat i = i.. string.char(math.random(97,122)) until #i > 10;package.path = "?";local ii = (gg.EXT_STORAGE).."/"..i;io.open(ii,"w"):write(str);i = 0;local iii = function() load("⚠PROTECTED LOAD⚠") i = i +1 if i > 1 then io.open(ii,"w"):write(str) os.remove(ii) debug.sethook(iii,"") end end;debug.sethook(iii,"cr");local iiii = pcall(require,ii) return end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function Write(address,flags,value)  local Refind={}  Refind[1]={}  Refind[1].address=address  Refind[1].flags=flags  Refind[1].value=value  gg.setValues(Refind)  end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."修改"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.." 开启失败", false) return false end else gg.toast(Name.." 开启失败") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条ΔΘ") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end function PS() end function setvalue(address,flags,value) PS('修改地址数值(地址,数值类型,要修改的值)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function JERRY() end
function setvalue(address,flags,value) JERRY('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function SearchWrite(Search, Write, Type)    gg.clearResults()    gg.setVisible(false)    gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()    local data = {}     local base = Search[1][2]    if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end        for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                    result[i].isUseful = false                 end            end        end        for i, v in ipairs(result) do            if (v.isUseful) then                data[#data+1] = v.address            end        end        if (#data > 0) then           local t = {}           local base = Search[1][2]           for i=1, #data do               for k, w in ipairs(Write) do                   offset = w[2] - base                   t[#t+1] = {}                   t[#t].address = data[i] + offset                   t[#t].flags = Type                   t[#t].value = w[1]                   if (w[3] == true) then                      local item = {}                       item[#item+1] = t[#t]                       item[#item].freeze = true                       gg.addListItems(item)                   end                                 end           end           gg.setValues(t)           gg.addListItems(t)        else            gg.toast("@Codam", false)            return false        end    else        gg.toast("Vᴀʟᴜᴇs Nᴏᴛ Fᴏᴜɴᴅ")        return false    end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to Open")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully Opened")else gg.toast(_on.."\nSuccessfully Opened")end end end--Telegram @VipCodes
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function setvalue(address,flags,value)Jerry={}Jerry[1]={}Jerry[1].address=address Jerry[1].flags=flags Jerry[1].value=value gg.setValues(Jerry)end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end

function setvalue(address,flags,value) Jerry('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value)  local refinevalues={}  refinevalues[1]={}  refinevalues[1].address=address  refinevalues[1].flags=flags  refinevalues[1].value=value  gg.setValues(refinevalues)  end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed To Open") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Successfully Opened, Modified In Total" .. xgsl .. "Article Data") else gg.toast(qmnb[2]["name"] .. "Failed To Open") end end end end
function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if(count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false end end end for i, v in ipairs(result) do if(v.isUseful) then  data[#data+1] = v.address end end if(#data > 0) then gg.toast("found"..#data.."Article data") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type  t[#t].value = w[1]  if(w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("not found", false) return false end else gg.toast("No data found") return false  end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value)tt={}tt[1]={}tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt)end


function setvalue(address,flags,value) KANSO('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function libBase(offset, type, value, name) gg.setValues({[1] = {address = gg.getRangesList('libUE4.so')[1].start + offset, flags = type, value = value}}) gg.toast(name .. '') end
function setvalue(address,flags,value)  local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end

Date = "20210620"
date = os.date("%Y%m%d")
if date >= Date then
  gg.alert("🥥 ʙᴜ ᴠɪᴘ ʜɪʟᴇɴɪɴ sᴜ̈ʀᴇsɪ ᴅᴏʟᴍᴜş 🥥̧ \n 👑 ʏᴇᴛᴋɪʟɪʟᴇʀᴅᴇɴ ʏᴇɴɪ sᴄʀɪᴘᴛɪ ᴀʟ 👑")
  return
end







bitset = gg.getTargetInfo()["x64"]
if bitset == false then
	time = " ✅ Oʏᴜɴᴜɴ 32 ʙɪᴛ ᴏʟᴀʀᴀᴋ ᴛᴇsᴘɪᴛ ᴇᴅɪʟᴅɪ. \n \n ↪️ Sᴏʀᴜɴsᴜᴢᴄᴀ Dᴇᴠᴀᴍ Eᴅᴇʙɪʟɪʀsɪɴ..."
end
if bitset == true then
	time = "          ❗🇩 🇺 🇷  ❗\n \n 🆘 Oʏᴜɴᴜɴ 64 ʙɪᴛ ᴏʟᴀʀᴀᴋ ᴛᴇsᴘɪᴛ ᴇᴅɪʟᴅɪ. \n 🚫 Bᴜ ᴅᴀ %90 ʙᴀɴ ʏɪʏᴇᴄᴇɢ̆ɪɴ ᴀɴʟᴀᴍıɴᴀ ɢᴇʟɪʏᴏʀ. \n 💖 Gᴜ̈ᴠᴇɴʟɪ ᴏʏᴜɴ ɪᴄ̧ɪɴ ᴏʏᴜɴᴜɴᴜ 32 ʙɪᴛ ʏᴀᴘ."
end
bit = "⚠️ Bɪᴛ Kᴏɴᴛʀᴏʟᴜ Uʏᴀʀısı; ⚠️\n\n " .. time
gg.alert(bit, "↪️ Devam Et ")
gg.sleep(100)
gg.toast("▓▓▒▒▒▒▒▒▒▒20%")
gg.sleep(100)
gg.toast("▓▓▓▒▒▒▒▒▒▒30%")
gg.sleep(100)
gg.toast("▓▓▓▓▒▒▒▒▒▒40%")
gg.sleep(100)
gg.toast("▓▓▓▓▓▒▒▒▒▒50%")
gg.sleep(100)
gg.toast("▓▓▓▓▓▓▒▒▒▒60%") 
gg.sleep(100)
gg.toast("▓▓▓▓▓▓▓▒▒▒70%")
gg.sleep(100)
gg.toast("▓▓▓▓▓▓▓▓▒▒80%")
gg.sleep(100)
gg.toast("▓▓▓▓▓▓▓▓▓▒90%")
gg.sleep(100)
gg.toast("▓▓▓▓▓▓▓▓▓▓100%")
gg.sleep(1500)
gg.alert("✩｡:*•.─────❁ ❁─────.•*:｡✩\n╔══════════════╗\n 📳 sᴏsʏᴀʟ ᴍᴇᴅʏᴀᴅᴀ ʙɪᴢ  \n 🤴 Cᴏᴅᴇᴅ Bʏ :ᴋɴᴏxʏ ɢᴀᴍɪɴɢ\n⭐ Tᴇʟᴇɢʀᴀᴍ t.me/knoxygaminghack \n 🏆 Yᴏᴜᴛᴜʙᴇ : ᴋɴᴏxʏ ɢᴀᴍɪɴɢ  \n⭐️ TɪᴋTᴏᴋ @hileciknoxy ᴛᴀᴋɪᴘ ᴇᴛ\n╚══════════════╝\n✩｡:*•.─────❁ ❁─────.•*:｡✩\n", "Devam Et ➡️")
gg.sleep(1500) 
on = "︙❌"
off = "︙ ✅"
gg.setVisible(true)
PUBGMH  = -1
function HOME()
MENU = gg.choice({     
                  "   ╭────────────────────╮        \n            🛡️ ᴀɴᴛɪʙᴀɴ 🛡 \n ╚➤[♡ᒪOᗷY♡]                ️\n   ╰────────────────────╯          ",
                  "   ╭────────────────────╮        \n 🚙 ᴛᴇᴋ ᴛɪᴋ ᴀʀᴀʙᴀ ᴜᴄ̧ᴜʀ 🚙 \n ╚➤[♧OYᑌᑎ♧]             \n   ╰────────────────────╯",
                  "   ╭────────────────────╮        \n           🗡️ sɪʟᴀʜ ʜɪʟᴇʟᴇʀɪ 🗡️ \n ╚➤[♤ᒪOᗷY+OYᑌᑎ♤]            \n   ╰────────────────────╯          ",
                  "   ╭────────────────────╮        \n          🧸 ʜɪᴢ ʜɪʟᴇʟᴇʀɪ [ʀɪsᴋ] 🧸 \n ╚➤[♧OYᑌᑎ♧]              \n   ╰────────────────────╯          ",
                  "   ╭────────────────────╮        \n           👻 ᴇɢ̆ʟᴇɴᴄᴇ ᴍᴇɴᴜ̈ 👻 \n ╚➤[♤ᒪOᗷY+OYᑌᑎ♤]           \n   ╰────────────────────╯          ",
                  "   ╭────────────────────╮        \n           👁️ ᴡᴀʟʟʜᴀᴄᴋ 👁 \n ╚➤[♤ᒪOᗷY+OYᑌᑎ♤]        \n   ╰────────────────────╯           ",
                  "   ╭────────────────────╮        \n           ⚕️ ʙʀᴜᴛᴀʟ ᴍᴇɴᴜ̈ ⚕️ \n ╚➤[♧OYᑌᑎ♧]      \n   ╰────────────────────╯           ",
                  "   ╭────────────────────╮        \n           ⭐ ʀᴀɴᴋ ᴍᴇɴᴜ̈ ⭐ \n ╚➤[♧OYᑌᑎ♧]              \n   ╰────────────────────╯           ",
                  "   ╭────────────────────╮        \n           🥋 sᴋɪɴ ʜᴀᴄᴋ 🥋 \n ╚➤[♤ᒪOᗷY+OYᑌᑎ♤]        \n   ╰────────────────────╯           ",
                  "   ╭────────────────────╮        \n           ❌️ ᴄ̧ɪᴋɪş ʏᴀᴘ  ❌ \n ╚➤[♤ᒪOᗷY+OYᑌᑎ♤]                 \n   ╰────────────────────╯           ",
     OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯")
     if MENU == nil then
    else
    if MENU == 1 then
      MN1()
    end
    if MENU == 2 then
     MN2()
    end
    if MENU == 3 then
     MN3()
    end
    if MENU == 4 then
      MN4()
    end
    if MENU == 5 then
      MN5()
    end
    if MENU == 6 then
      MN7()
    end
    if MENU == 7 then
      MN8()
    end
    if MENU == 8 then
      SKINHACKS()
    end
    if MENU == 9 then
      skyoff()
    end
    if MENU == 10 then
      EXIT()
    end
  end
  PUBGMH = -1
end




function MN1()
gg.alert(" ⭐ OKU ⭐ \n 💎 Önemli Not 💎 \n 🍇 İlk Misafir Hesapta Oynayınız 🍇 \n ❗ Herhangi Bir İstemci Banı Yerseniz On & Off Yapınız ❗ \n 🍓 10 Yıl Ban Yerseniz Bir Diğer Antibanı Kullanın 🍓 ", " ↪️Devam Et")
WC = gg.multiChoice({
          " 《🐨》ᴀɴᴛɪʙᴀɴ ɢʟ & ᴋʀ ᴠ1 \n╚❑[ʟᴏʙɪ]", 
          " 《♨️》ᴀɴᴛɪʙᴀɴ ɢʟ & ᴋʀ ᴠ2 \n╚❑[ʟᴏʙɪ]",
          " 《🍓》ᴏғғʟɪɴᴇ ʙᴀɴ ғɪx \n╚❑[ʟᴏʙɪ]",
          " 《🚯》ᴠɪᴘ ʟᴏɢ & ʀᴇᴘᴏʀᴛ ᴄʟᴇᴀʀ \n╚❑[ʟᴏʙɪ]",
          " 《📴》ᴏɴ & ᴏғғ \n╚❑[Oʏᴜɴ]",
          " 《🌚》3ʳᵈ ʙᴀɴ ғɪx \n╚❑[ʟᴏɢᴏ]",
          " 《🚪》ɢᴇʀɪ ",
OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯")
  if WC == nil then
  else
    if WC [1] == true then
      WC1()   
    end
    if WC [2] == true then
     WC2()
    end
    if WC [3] == true then
      WC3()
    end
    if WC [4] == true then
     WC4()
    end
    if WC [5] == true then
      WC5()
    end
    if WC [6] == true then
      WC6()
    end
    if WC [7] == true then
      HOME()
    end
  end
  PUBGMH = -1
end

function WC1()
gg.alert(" ══════════════════════════════════════════ \n \n 🛡️ 𝙰𝙽𝚃𝙸𝙱𝙰𝙽 𝙰𝙲̧𝙸𝙻𝙸𝚈𝙾𝚁 𝚅𝙴 𝙻𝙾𝙶𝙻𝙰𝚁 𝚂𝙸̇𝙻𝙸̇𝙽𝙸̇𝚈𝙾𝚁. 𝙻𝚄̈𝚃𝙵𝙴𝙽 𝙱𝙴𝙺𝙻𝙴 ⏳ \n \n ══════════════════════════════════════════ ", " ↪️Tamam")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.pubg.krmobile/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.tencent.iglite/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.rekoo.pubgm/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
gg.clearResults()
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(500)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(99999)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("65795~590336;67109633;131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("65795~590336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(56789)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(500)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.sleep(100)----@DEADLOXY 
gg.sleep(100)----@DEADLOXY 
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")                                                                                                         
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70368744177664;288232579469934592", gg.TYPE_QWORD)
gg.refineNumber("70368744177664", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
gg.refineNumber("582749752655872", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
gg.refineNumber("565157566611456", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("17,592,186,044,416;582749752655872", gg.TYPE_QWORD)
gg.refineNumber("17,592,186,044,416", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("577252194516992;288232579469934592", gg.TYPE_QWORD)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("578351706144768;578351706144768", gg.TYPE_QWORD)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) --HACKER
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0) --HACKER
gg.getResults(0) --HACKER
gg.editAll("0yl", gg.TYPE_FLOAT) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) --HACKER
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0) --HACKER
gg.getResults(0) --HACKER
gg.editAll("0lt", gg.TYPE_FLOAT) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber(";com.vng.pubgmobile", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) --HACKER
gg.refineNumber(";com.vng.pubgmobile", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0) --HACKER
gg.getResults(0) --HACKER
gg.editAll("0t=", gg.TYPE_FLOAT) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber(";com.rekoo.pubgm", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1) --HACKER
gg.refineNumber(";com.rekoo.pubgm", gg.TYPE_DOUBLE, false, gg.SIGN_EQUAL, 0, -1, 0) --HACKER
gg.getResults(0) --HACKER
gg.editAll("0tt", gg.TYPE_FLOAT) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("70368744177664ly;288233678981562368yl", gg.TYPE_QWORD) --HACKER
gg.refineNumber("70368744177664", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368gy", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("578351706144768zg;564058054983680yz", gg.TYPE_QWORD) --HACKER
gg.refineNumber("578351706144768", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368t=", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("582749752655872tg;620137442967552gg", gg.TYPE_QWORD) --HACKER
gg.refineNumber("582749752655872", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368g=", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("620137442967552yy;579451217772544gt", gg.TYPE_QWORD) --HACKER
gg.refineNumber("620137442967552", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368tl", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("566257078239232y=;573957954600960ly", gg.TYPE_QWORD) --HACKER
gg.refineNumber("566257078239232", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368==", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("573953659633664=t;582749752655872yz", gg.TYPE_QWORD) --HACKER
gg.refineNumber("573953659633664", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368lz", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("572854148005888l=;620137442967552=y", gg.TYPE_QWORD) --HACKER
gg.refineNumber("572854148005888;", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368zg", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("196=g,864zt;16y=,842gy,753==::5tl", gg.TYPE_QWORD) --HACKER
gg.refineNumber("196,864", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368=t", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("288233678981562368zz;288233678981562368zg", gg.TYPE_QWORD) --HACKER
gg.refineNumber("288233678981562368", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368tl", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("565157566611456zt;566257078239232lz", gg.TYPE_QWORD) --HACKER
gg.refineNumber("565157566611456", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368tl", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("562954248388607ly;578351706144768y=", gg.TYPE_QWORD) --HACKER
gg.refineNumber("562954248388607", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368zt", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("4398046511104tg;544434349408256gg", gg.TYPE_QWORD) --HACKER
gg.refineNumber("4398046511104", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368yl", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("577252194516992g=;288233678981562368ty", gg.TYPE_QWORD) --HACKER
gg.refineNumber("577252194516992", gg.TYPE_QWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("288233678981562368=l", gg.TYPE_QWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("133634g=;134914gy", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1) --HACKER
gg.refineNumber("133634", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842t=", gg.TYPE_DWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("132098zz;133635l=", gg.TYPE_DWORD) --HACKER
gg.refineNumber("132098", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842yg", gg.TYPE_DWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("4096yz;135682=z", gg.TYPE_DWORD) --HACKER
gg.refineNumber("4096", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842zt", gg.TYPE_DWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("131586l=", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842=y", gg.TYPE_DWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("131842ty;132098ll", gg.TYPE_DWORD) --HACKER
gg.refineNumber("131842", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842ly", gg.TYPE_DWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("133378l=;134914yl", gg.TYPE_DWORD) --HACKER
gg.refineNumber("133378", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842y=", gg.TYPE_DWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("131331zt;133634ty", gg.TYPE_DWORD) --HACKER
gg.refineNumber("131331", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842tg", gg.TYPE_DWORD) --\
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("133634gz;134658g=", gg.TYPE_DWORD) --HACKER
gg.refineNumber("133634", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842=z", gg.TYPE_DWORD) --HACKER
gg.clearResults() --HACKER
gg.setRanges(gg.REGION_C_ALLOC) --HACKER
gg.setVisible(false) --HACKER
gg.searchNumber("134658yl;134658t=", gg.TYPE_DWORD) --HACKER
gg.refineNumber("134658", gg.TYPE_DWORD) --HACKER
gg.getResults(0) --HACKER
gg.editAll("131842tg", gg.TYPE_DWORD) --HACKER
gg.clearResults() --HACKER
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("70368744177664;288232579469934592", gg.TYPE_QWORD)--HACKER SİKTİ
gg.refineNumber("70368744177664", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResultsCount()--HACKER SİKTİ
gg.getFile()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("70368744177664;288232579469934592", gg.TYPE_QWORD)--HACKER SİKTİ
gg.refineNumber("70368744177664", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD)--HACKER SİKTİ
gg.refineNumber("578351706144768", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("582749752655872;361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.refineNumber("582749752655872", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)--HACKER SİKTİ
gg.refineNumber("565157566611456", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("17,592,186,044,416;582749752655872", gg.TYPE_QWORD)--HACKER SİKTİ
gg.refineNumber("17,592,186,044,416", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.searchNumber("577252194516992;288232579469934592", gg.TYPE_QWORD)--HACKER SİKTİ
gg.refineNumber("577252194516992", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResults(5000)--HACKER SİKTİ
gg.editAll("361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.searchNumber("578351706144768;578351706144768", gg.TYPE_QWORD)--HACKER SİKTİ
gg.refineNumber("578351706144768", gg.TYPE_QWORD)--HACKER SİKTİ
gg.getResults(5000)--HACKER SİKTİ
gg.editAll("361418272522109953", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("134658;134658", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("134658", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("131331;131331", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("131331", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("132098;133635", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("132098", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("852002;851986", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("851986", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("131075;131074", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("131074", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("196610;131076", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("196610", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("331107;196608", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("196608", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("262144;196611", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("262144", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("7077901", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("7077901", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":.pak", gg.TYPE_BYTE)--HACKER SİKTİ
gg.getResults(99999)--HACKER SİKTİ
gg.editAll("116", gg.TYPE_BYTE)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":http://", gg.TYPE_BYTE)--HACKER SİKTİ
gg.getResults(99999)--HACKER SİKTİ
gg.editAll("116", gg.TYPE_BYTE)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":https://", gg.TYPE_BYTE)--HACKER SİKTİ
gg.getResults(99999)--HACKER SİKTİ
gg.editAll("116", gg.TYPE_BYTE)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("133,378;262,403", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("133,378", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("133,890", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.refineNumber("133,890", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("131,331;131,586", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("131,331", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("134,146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.refineNumber("134,146", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("133,634;134,914", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("133,634", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50500)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("134,402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.refineNumber("134,402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("132,098;133,635", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("132,098", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50500)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("7077901", gg.TYPE_DWORD)--HACKER SİKTİ
gg.refineNumber("7077901", gg.TYPE_DWORD)--HACKER SİKTİ
gg.getResults(50500)--HACKER SİKTİ
gg.editAll("67109633", gg.TYPE_DWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)--HACKER SİKTİ
gg.editAll(":", gg.TYPE_BYTE)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":Tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)--HACKER SİKTİ
gg.editAll(":", gg.TYPE_BYTE)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":ss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)--HACKER SİKTİ
gg.editAll(":", gg.TYPE_BYTE)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":TSS", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)--HACKER SİKTİ
gg.editAll(":", gg.TYPE_BYTE)--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":http://", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)--HACKER SİKTİ
gg.editAll(":", gg.TYPE_BYTE)--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":https://", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)--HACKER SİKTİ
gg.editAll(":", gg.TYPE_BYTE)--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber(":lobby.igamecj.com", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)--HACKER SİKTİ
gg.editAll(":", gg.TYPE_BYTE)--HACKER SİKTİ
gg.setRanges(gg.REGION_C_ALLOC)--HACKER SİKTİ
gg.searchNumber("300~50000;67109633;131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.refineNumber("300~50000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER SİKTİ
gg.getResults(50000)--HACKER SİKTİ
gg.editAll("67,371,777", gg.TYPE_QWORD)--HACKER SİKTİ
gg.clearResults()--HACKER SİKTİ
gg.searchNumber("1400;0.10000000149;1000;88;60;30", gg.TYPE_FLOAT)
gg.searchNumber("60", gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll("-64", gg.TYPE_FLOAT)
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD)
gg.getResults(1401)
gg.editAll("4,525,216,907,473,673,257", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("-1,328,550,408,728,725,571", gg.TYPE_QWORD)
gg.getResults(1401)
gg.editAll("-1,328,550,408,576,460,390", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("-1505254313802431360", gg.TYPE_QWORD)
gg.getResults(1401)
gg.editAll("-1505254313804899999", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD)
gg.getResults(1401)
gg.editAll("-1296744149264269342", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("-1.0530367e28;-5.8454586e27;-2.7860151e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT)
gg.searchNumber("-2.7860151e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT)
gg.getResults(1401)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-6.1526231e27;-1.0070975e28;::", gg.TYPE_FLOAT)
gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT)
gg.getResults(1401)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-1585267064848315881", gg.TYPE_QWORD)
gg.getResults(100)
gg.editAll("-1585267068834414550", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
gg.refineNumber("565157566611456", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("578351706144768;578351706144768", gg.TYPE_QWORD)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("572854148005888;1127012303372288", gg.TYPE_QWORD)
gg.refineNumber("572854148005888", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658;134658", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("196864", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("132098;133635", gg.TYPE_DWORD)
gg.refineNumber("132098", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("196864", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("852002;851986", gg.TYPE_DWORD)
gg.refineNumber("851986", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("196864", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131075;131074", gg.TYPE_DWORD)
gg.refineNumber("131074", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("196864", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842;132098", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;262403", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4096;135682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("4096", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,635;131,842", gg.TYPE_DWORD)
gg.refineNumber("133,635", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134,914;134,658", gg.TYPE_DWORD)
gg.refineNumber("134,914", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("65,863", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("38,724", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196867", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("262403", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("459011", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("143756", gg.TYPE_DWORD)
gg.refineNumber("143756", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("404230", gg.TYPE_DWORD)
gg.refineNumber("404230", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133894", gg.TYPE_DWORD)
gg.refineNumber("133894", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,867;134,658", gg.TYPE_DWORD)
gg.refineNumber("196,867", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131,331;134,914", gg.TYPE_DWORD)
gg.refineNumber("131,331", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("132098;131586", gg.TYPE_DWORD)
gg.refineNumber("132098", gg.TYPE_DWORD)
gg.getResults(50500)
gg.editAll("-67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("13,073.3740234375", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("-67109633", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.21956299e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll("-67109633", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.setVisible(false)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135938", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133635", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("147971", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196867", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67110145", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("327939", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("262403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("83887361", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("100664577", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("117441793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135938", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133635", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134402", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("144387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("147971", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196867", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67110145", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("327939", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("262403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("83887361", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("100664577", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("117441793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(11082001)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setVisible(false)
gg.searchNumber("8241920931592632165", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("8241820031592000165", gg.TYPE_QWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131.072", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67.043.328", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("66.977.792", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196.608", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearList()
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fec,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fdc,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fe4,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81ff0,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f58,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f5c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f60,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f64,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f68,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f6c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f70,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f74,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f78,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f7c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f80,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f84,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f88,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f8c,['flags'] = 16,['value'] = 0,},})
gg.isPackageInstalled("com.hckeam.mjgql")--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.sleep(1000)--gg
gg.setVisible(false)--gg
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4.128.768", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.031.616", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("16.777.216", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134.218.241", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("65.535", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,986,356,271", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(50000)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67,865,722~69,866,014", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(2000)
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("117,768,197", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.getResults(50000)
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("-16,613,685", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.clearResults()
gg.alert(" 🥇 ᴀɴᴛɪʙᴀɴ ᴀᴄ̧ɪʟᴅɪ 🥇 \n \n 🇹🇷 ᴛᴜ̈ʀᴋɪʏᴇ'ɴɪɴ ɢᴜʀᴜʀᴜ ᴏʟᴀʀᴀᴋ ʜᴇʀ ᴢᴀᴍᴀɴ ʜɪᴢᴍᴇᴛ ᴇᴅᴇᴄᴇɢ̆ɪᴢ 🇹🇷 \n \n ☢️ ɪʟᴋ 3 ᴍᴀᴄ̧ ɢᴜᴇsᴛ ᴏʏɴᴀ ☢️ ", " ↪️Tᴀᴍᴀᴍ")
gg.clearResults()
gg["toast"](" \nBᴇᴋʟᴇ...10%\n🧹▒▒▒▒▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...20%\n🧹🧹▒▒▒▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...30%\n🧹🧹🧹▒▒▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...40%\n🧹🧹🧹🧹▒▒▒▒▒▒")
 gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...50%\n🧹🧹🧹🧹🧹▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...60%\n🧹🧹🧹🧹🧹🧹▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...70%\n🧹🧹🧹🧹🧹🧹🧹▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...80%\n🧹🧹🧹🧹🧹🧹🧹🧹▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...90%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹▒")
gg["sleep"](260)
gg["toast"](" \nBᴀşᴀʀıʟı…100%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹🧹")
gg["toast"]("By KNOXY")
end

function WC2()
gg.alert(" ══════════════════════════════════════════ \n \n 🛡️ 𝙰𝙽𝚃𝙸𝙱𝙰𝙽 𝙰𝙲̧𝙸𝙻𝙸𝚈𝙾𝚁 𝚅𝙴 𝙻𝙾𝙶𝙻𝙰𝚁 𝚂𝙸̇𝙻𝙸̇𝙽𝙸̇𝚈𝙾𝚁. 𝙻𝚄̈𝚃𝙵𝙴𝙽 𝙱𝙴𝙺𝙻𝙴 ⏳ \n \n ══════════════════════════════════════════ ", " ↪️Tamam")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.pubg.krmobile/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.tencent.iglite/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.rekoo.pubgm/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
gg.clearResults()
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(500)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(99999)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("65795~590336;67109633;131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("65795~590336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(56789)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(500)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.sleep(100)----@DEADLOXY 
gg.sleep(100)----@DEADLOXY 
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682;134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("135862", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000)
gg.editAll("67240448", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;133635", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000)
gg.editAll("67240448", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331;131330", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("131331", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50000)
gg.editAll("67240448", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD)
gg.getResultsCount()
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.84749992e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.84749992e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll("1.5047707E-36", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.85108725e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.85108725e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll("1.5047707E-36", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.87258316e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1.87258316e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50000)
gg.editAll("1.5047707E-36", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.searchNumber("70,368,744,177,664;288,232,579,469,934,592", gg.TYPE_QWORD)
gg.refineNumber("70,368,744,177,664", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqq", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("119", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqqmusic", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("#", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.oktabagames.puzzle", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("119", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqqq", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("#", gg.TYPE_BYTE)
gg.clearResults()
gg.getRangesList(":com.tencent.mobileqq")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70,368,744,177,664;288,232,579,469,934,592", gg.TYPE_QWORD)
gg.refineNumber("70,368,744,177,664", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("578,351,706,144,768;564,058,054,983,680", gg.TYPE_QWORD)
gg.refineNumber("578,351,706,144,768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
gg.refineNumber("582749752655872", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
gg.refineNumber("565157566611456", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("17,592,186,044,416;582749752655872", gg.TYPE_QWORD)
gg.refineNumber("17,592,186,044,416", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("578,351,706,144,768;578,351,706,144,768", gg.TYPE_QWORD)
gg.refineNumber("578,351,706,144,768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
gg.refineNumber("582749752655872", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD)
gg.refineNumber("565157566611456", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD)
gg.refineNumber("577252194516992", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288232579469934592", gg.TYPE_QWORD)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634;134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("132098;133635", gg.TYPE_DWORD)
gg.refineNumber("132098", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4096;135682", gg.TYPE_DWORD)
gg.refineNumber("4096", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131586", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("361418272522109953;132098", gg.TYPE_DWORD)
gg.refineNumber("361418272522109953", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;134914", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331;133634", gg.TYPE_DWORD)
gg.refineNumber("131331", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634;134658", gg.TYPE_DWORD)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658;134658", gg.TYPE_DWORD)
gg.refineNumber("134658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("132098;133635", gg.TYPE_DWORD)
gg.refineNumber("132098", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("361418272522109953", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqq", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("119", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqqmusic", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("#", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.oktabagames.puzzle", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("119", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":com.tencent.mobileqqq", gg.TYPE_BYTE)
gg.getResults(50000)
gg.editAll("#", gg.TYPE_BYTE)
gg.clearResults()
gg.getRangesList(":com.tencent.mobileqq")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70,368,744,177,664;288,232,579,469,934,592", gg.TYPE_QWORD)
gg.refineNumber("70,368,744,177,664", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("578,351,706,144,768;564,058,054,983,680", gg.TYPE_QWORD)
gg.refineNumber("578,351,706,144,768", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD)
gg.refineNumber("582749752655872", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()--HACKER
gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_BAD)--HACKER
gg.clearResults()--HACKER
gg.setRanges(gg.REGION_C_ALLOC)--HACKER
gg.searchNumber("582749752655872;620137442967552", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("582749752655872", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("565157566611456;566257078239232", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("565157566611456", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("567356589867008;620137442967552", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("567356589867008", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("4398046511104;13344463388672:29", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("4398046511104", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("577252194516992;288233678981562368", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("577252194516992", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("578351706144768;578351706144768", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("578351706144768", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("578351706144768;42949672960", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("578351706144768", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("70368744177664;288232579469934592", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("70368744177664", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("578351706144768", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("17592186044416;582749752655872", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("17592186044416", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("288233678981562369", gg.TYPE_QWORD)--HACKER
gg.clearResults()--HACKER
gg.setRanges(gg.REGION_CODE_APP)--HACKER
gg.searchNumber("911104607", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.searchNumber("911104607", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("911104607", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("0", gg.TYPE_DWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("1734308723", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("1734308723", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("0", gg.TYPE_DWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("1735681395", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("1735681395", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("0", gg.TYPE_DWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("1718511967", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("1718511967", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("0", gg.TYPE_DWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("1986225522", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("1986225522", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("0", gg.TYPE_DWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("1734964063", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("1734964063", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("0", gg.TYPE_DWORD)--HACKER
gg.clearResults()--HACKER
gg.searchNumber("16384;67108864", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.refineNumber("16384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--HACKER
gg.getResults(90000)--HACKER
gg.editAll("0", gg.TYPE_DWORD)--HACKER
gg.clearList()
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fec,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fdc,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fe4,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81ff0,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f58,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f5c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f60,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f64,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f68,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f6c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f70,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f74,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f78,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f7c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f80,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f84,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f88,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f8c,['flags'] = 16,['value'] = 0,},})
gg.isPackageInstalled("com.hckeam.mjgql")--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.sleep(1000)--gg
gg.setVisible(false)--gg
gg.alert(" 🥇 ᴀɴᴛɪʙᴀɴ ᴀᴄ̧ɪʟᴅɪ 🥇 \n \n 🇹🇷 ᴛᴜ̈ʀᴋɪʏᴇ'ɴɪɴ ɢᴜʀᴜʀᴜ ᴏʟᴀʀᴀᴋ ʜᴇʀ ᴢᴀᴍᴀɴ ʜɪᴢᴍᴇᴛ ᴇᴅᴇᴄᴇɢ̆ɪᴢ 🇹🇷 \n \n ☢️ ɪʟᴋ 3 ᴍᴀᴄ̧ ɢᴜᴇsᴛ ᴏʏɴᴀ ☢️ ", " ↪️Tᴀᴍᴀᴍ")
gg.clearResults()                         
gg["toast"](" \nBᴇᴋʟᴇ...10%\n🧹▒▒▒▒▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...20%\n🧹🧹▒▒▒▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...30%\n🧹🧹🧹▒▒▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...40%\n🧹🧹🧹🧹▒▒▒▒▒▒")
 gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...50%\n🧹🧹🧹🧹🧹▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...60%\n🧹🧹🧹🧹🧹🧹▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...70%\n🧹🧹🧹🧹🧹🧹🧹▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...80%\n🧹🧹🧹🧹🧹🧹🧹🧹▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...90%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹▒")
gg["sleep"](260)
gg["toast"](" \nBᴀşᴀʀıʟı…100%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹🧹")
gg["sleep"](1000)
gg["toast"]("By KNOXY")
end



function WC3()
gg.clearList()
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fec,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fdc,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81fe4,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f81ff0,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f58,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f5c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f60,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f64,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f68,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f6c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f70,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f74,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f78,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f7c,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f80,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f84,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f88,['flags'] = 16,['value'] = 0,},})
gg.getRangesList("libtersafe.so")
gg.setValues({[1] = {['address'] = 0xe4f51f8c,['flags'] = 16,['value'] = 0,},})
gg.isPackageInstalled("com.hckeam.mjgql")--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.sleep(1000)--gg
gg.setVisible(false)--gg
 gg["sleep"](200)
gg["toast"](" \nBᴇᴋʟᴇ...50%\n🧹🧹🧹🧹🧹▒▒▒▒▒")
gg["sleep"](2500)
gg["toast"](" \nBᴇᴋʟᴇ...60%\n🧹🧹🧹🧹🧹🧹▒▒▒▒")
gg["sleep"](2500)
gg["toast"](" \nBᴇᴋʟᴇ...70%\n🧹🧹🧹🧹🧹🧹🧹▒▒▒")
gg["sleep"](2500)
gg["toast"](" \nBᴇᴋʟᴇ...80%\n🧹🧹🧹🧹🧹🧹🧹🧹▒▒")
gg["sleep"](2500)
gg["toast"](" \nBᴇᴋʟᴇ...90%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹▒")
gg["sleep"](4000)
gg["toast"](" \nBᴀşᴀʀıʟı…100%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹🧹")
gg["sleep"](2500)
gg.alert(" 💛 ᴀɴᴛɪ ᴏғғʟɪɴᴇ ʙᴀɴ ᴀᴋᴛɪғ 💛 \n 🍺 ᴇɢ̆ᴇʀ ʏɪɴᴇ ᴏғғʟɪɴᴇ ʙᴀɴ ʏᴇʀsᴇɴ ᴛᴇʟᴇɢʀᴀᴍ ᴜ̈ᴢᴇʀɪɴᴅᴇɴ @knoxygamingg 'ᴇ ʏᴀᴢ 🍺")
end


function WC4()
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.pubg.krmobile/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.tencent.iglite/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
os.remove("/data/data/com.tencent.iglite/app_crashrecord/1004")
os.remove("/data/data/com.tencent.iglite/files/__tsecache.dat")
os.remove("/data/data/com.tencent.iglite/files/AdjustAttribution")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoActivityState")
os.remove("/data/data/com.tencent.iglite/files/AdjustIoPackageQueue")
os.remove("/data/data/com.tencent.iglite/files/apm_cc")
os.remove("/data/data/com.tencent.iglite/files/AppEventsLogger.persistedevents")
os.remove("/data/data/com.tencent.iglite/files/cache.crc.dat")
os.remove("/data/data/com.tencent.iglite/files/gcTestConfig.txt")
os.remove("/data/data/com.tencent.iglite/files/hawk_data_init")
os.remove("/data/data/com.tencent.iglite/files/local_crash_lock")
os.remove("/data/data/com.tencent.iglite/files/tersafe.update")
os.remove("/data/data/com.tencent.iglite/files/mycpuinfo")
os.remove("/data/data/com.tencent.iglite/files/tpnlcache.data")
os.remove("/data/data/com.tencent.iglite/files/tss_app_915c.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_cs_stat2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_uts_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss.i.m.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config2.xml.6dab626b")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/config3.xml")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.tencent.iglite/files/tss_tmp/tss.ano2.dat")
os.remove("/storage/emulated/0/tencent/Midas/Log/com.rekoo.pubgm/MidasLog.mmap")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache/GCloud.config")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/Epic Games/KeyValueStore.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppBaseConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AppConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AudioPluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/BuildConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/CustomDeviceList.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceProfiles.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/DeviceSwitchers.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/EditorPerProjectUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Engine.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Game.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/GameUserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Hardware.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IMSDKConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Input.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/LogSuppression.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/MidasConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OBHttp.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/OpenIDCommand.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/PufferDownloader.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Scalability.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/ServerSwitch.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UAE.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/Updater.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserCustom.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/UserSettings.ini")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora/dns.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/CommonSaveGame_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LeagueStatue.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/MailPhoneLogin.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/personalprefs_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/playerprefs.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4123188938540329.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/RecruitFilterSetting_4126599880770857.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/business_res_download_priority_table_new")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/cadge_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/dubber_table_ext")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/easy_buy_cfg")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_award_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/mentor_task_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/new_level_task_cover_table")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/social_authorize_config")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TableDatas/upgrade_parameter")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_loglist.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/apollo_uuid_define.json")
gg.toast(" \n 🚯 Loglar Silinyor... 🚯")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":get_report_data", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":get_report_data2", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":Delete_reports.bat", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":report_apk", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":tdm_report_sdk_update_config_finish", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.toast(" \n ⛔ Reportlar Temizleniyor... ⛔")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":tdm_report_sdk_update_config_finish", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":sc_report", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":TssSDKGetReportData", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll(":TssSDKDelReportData", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":TssSDKOnRecvData", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll(":TssSDKDelRecvData", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":N6TssSDK11ReportQueueE", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll(":Block", gg.TYPE_BYTE)
gg.clearResults()
 gg["sleep"](500)
gg["toast"](" \nBᴇᴋʟᴇ...50%\n🧹🧹🧹🧹🧹▒▒▒▒▒")
gg["sleep"](500)
gg["toast"](" \nBᴇᴋʟᴇ...60%\n🧹🧹🧹🧹🧹🧹▒▒▒▒")
gg["sleep"](500)
gg["toast"](" \nBᴇᴋʟᴇ...70%\n🧹🧹🧹🧹🧹🧹🧹▒▒▒")
gg["sleep"](500)
gg["toast"](" \nBᴇᴋʟᴇ...80%\n🧹🧹🧹🧹🧹🧹🧹🧹▒▒")
gg["sleep"](500)
gg["toast"](" \nBᴇᴋʟᴇ...90%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹▒")
gg["sleep"](500)
gg["toast"](" \nBᴀşᴀʀıʟı…100%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹🧹")
gg.sleep(1000)
gg.toast(" \n 🚯 Log & Report Başarıyla Silindi 🚯")
end

function WC5()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("220676386071773185", gg.TYPE_QWORD)
gg.getResults(69)
gg.editAll("220676386036121600", gg.TYPE_QWORD)
gg.toast("❌ ʙᴀɢ̆ʟᴀɴᴛɪ ᴋᴇsɪʟᴅɪ ❌")
gg.sleep(6000)
gg.editAll("220676386071773185", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("✅ ʏᴇɴɪᴅᴇɴ ʙᴀɢ̆ʟᴀɴᴅɪ ✅")
end

function WC6()
gg.isPackageInstalled("com.hckeam.mjgql")--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.tencent.ig", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.setRanges(gg.REGION_C_ALLOC)--gg
gg.searchNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.setVisible(false)--gg
gg.refineNumber(";com.pubg.krmobile", gg.TYPE_DOUBLE)--gg
gg.getResults(99999)--gg
gg.editAll("0", gg.TYPE_FLOAT)--gg
gg.setVisible(false)--gg
gg.clearResults()--gg
gg.sleep(1000)--gg
gg.setVisible(false)--gg
end



function MN2()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" ᴠɪᴘ ʜɪʟᴇ ᴜᴄ̧ᴜʏᴏʀsᴜɴ... 🚀")
end





Uzayan_checker = off
function MN3()
ML = gg.multiChoice({
           "᚛🥶᚜ ᴋᴀғᴀᴅᴀɴ ᴠᴜʀᴍᴀ %999 \n╚❑[Oʏᴜɴ]",
           "᚛⚡᚜ ᴀɪᴍʙᴏᴛ & ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ \n╚❑[Oʏᴜɴ]",
           "᚛🔥᚜ sᴇᴋᴍᴇᴍᴇ \n╚❑[ʟᴏʙɪ + Oʏᴜɴ]",
           "᚛🧨᚜ ʜɪᴢʟɪ ᴍᴇʀᴍɪ++++ \n╚❑[Oʏᴜɴ]",
           "᚛➕᚜ ɴᴀᴍʟᴜ ᴜᴄᴜ sᴀʙɪᴛʟᴇᴍᴇ \n╚❑[Oʏᴜɴ]",
           "᚛👿᚜ sɪʜɪʀʟɪ ᴍᴇʀᴍɪ \n╚❑[Oʏᴜɴ]",
           "᚛🛐᚜ ɪʟᴇʀɪ & ʏᴜᴋᴀʀɪ ᴜᴢᴀɴᴀɴ ᴋᴏʟ \n╚❑[Oʏᴜɴ]" ..Uzayan_checker,
           "᚛☠️᚜ ᴀɪᴍʙᴏᴛ & ʜᴇᴀᴅsʜᴏᴛ & ᴍᴀɢɪᴄ \n╚❑[Oʏᴜɴ]",
           "᚛🌀᚜ ᴀɪᴍʟᴏᴄᴋ & ᴍᴀɢɪᴄ \n╚❑[Oʏᴜɴ]",
           "᚛🚪᚜ ɢᴇʀɪ ",               
  OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯")
  if ML == nil then
  else
    if ML [1] == true then
      ML1()
    end
    if ML [2] == true then
     ML2()
    end
    if ML [3] == true then
     ML3()
    end
    if ML [4] == true then
     ML4()    
    end
    if ML [5] == true then
      ML5()
    end
    if ML [6] == true then
      ML6()
    end
   if  ML [7] == true then
      ML7()
    end
    if  ML [8] == true then
      ML8()
    end
    if  ML [9] == true then
      ML9()
    end
    if ML [10] == true then
      HOME()
    end
  end
  PUBGMH = -1
end









function ML1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33,90000152588 ;-8,8291245e-8;-2,8322467e25;1,9197789e-43:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("33,90000152588", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("48,56470489502 ;6,1529782e-39;-10.357.658,0;-5,2374822e26:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("48,56470489502", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30.5;23.0", gg.TYPE_FLOAT)
gg.refineNumber("30.5;23.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5~60.5", gg.TYPE_FLOAT)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("29,5;30,0 ;1,5046328e-36;4,2319214e-42:21", gg.TYPE_FLOAT)
gg.refineNumber("29,5;30,0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1348759109;1953067887;1634692166;1920287604::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1634692166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1634692266", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(16384)
SearchWrite({
{-1.4278110478704994E28, 0},
{8.562694393506966E-26, -12},
{1.8175359108152E-27, -8}
}, {
{0, 0}
}, 16, Name)
gg.setRanges(16384)
SearchWrite({
{-3.254379949369797E30, 0},
{2.646983324423844E-23, -56}
}, {
{0, -56}
}, 16, Name)
gg.clearResults()
gg.toast(" \n ⛑️ ʜᴇᴀᴅsʜᴏᴛ %999 ᴀᴋᴛɪғ ⛑️ ")          
end


function ML2()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--Telegram @VipCodes
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1,324,366,404", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1,324,366,404", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(80)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("99", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(56)
  gg.editAll("-1339", gg.TYPE_FLOAT)
  gg.clearResults()  
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("189", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(56)
  gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.9986295104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.9986295104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("1224995", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()          
gg.toast(" ᴀɪᴍʙᴏᴛ & ᴍᴀɢɪᴄ ᴀᴋᴛɪғғ ")
end

function ML3()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-309056968;-298841599;-309061065::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298841599::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.427811e28;8.5626969e-26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.427811e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("90", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.786982e28;-2.2673448e24;-1.13688735e-13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.786982e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2~4;1.09375::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2~4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("-0.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" \n ☄️ sᴇᴋᴍᴇᴍᴇ ᴀᴋᴛɪғ ☄️")
end


function ML4()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...50%\n🧹🧹🧹🧹🧹▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...60%\n🧹🧹🧹🧹🧹🧹▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...70%\n🧹🧹🧹🧹🧹🧹🧹▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...80%\n🧹🧹🧹🧹🧹🧹🧹🧹▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...90%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹▒")
gg["sleep"](260)
gg["toast"](" \nBᴀşᴀʀıʟı…100%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹🧹")
  gg.toast(" \n ☄️ ʜɪᴢʟɪ ᴍᴇʀᴍɪ ᴀᴋᴛɪғ ᴠɪᴘ ʜɪʟᴇ ᴋᴇʏғɪɴᴇ ʙᴀᴋ  ")
gg["sleep"](260)
end


function ML5()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.clearResults()
  gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("90", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.toast(" ➕ ɴᴀᴍʟᴜ ᴜᴄᴜ sᴀʙɪᴛʟᴇᴍᴇ ᴀᴋᴛɪғʟᴇşᴛɪ ➕  ")         
end


function ML6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5~60.5", gg.TYPE_FLOAT)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(56)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)--@VipCodes
gg.getResults(56)
gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("25.0;30.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("220", gg.TYPE_FLOAT)
    gg.clearResults()
gg.toast(" Magic Bullet Aktif ⚡")
end

function ML9()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2015175168", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("0", 16)
gg.clearResults()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("25.0;30.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("220", gg.TYPE_FLOAT)
    gg.clearResults()
gg.toast(" \n 👻 ᴀɪᴍʟᴏᴄᴋ & ᴍᴀɢɪᴄ ᴀᴋᴛɪғʟᴇşᴛɪɪɪɪɪ.... 👻")
end

function ML7()
if Uzayan_checker == off then
    Uzayan_checker = on
gg.setRanges(gg.REGION_ANONYMOUS)
    gg.clearResults()
    gg.searchNumber("1,100,159,584", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    Uzayan_value0 = gg.getResults(100)
    gg.editAll("1,122,159,584", gg.TYPE_DWORD)
    gg.clearResults()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.sleep(140)
    gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.sleep(140)
    gg.refineNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    sta_value0 = gg.getResults(1401)
    gg.editAll("4848124999984742400", gg.TYPE_QWORD)
    gg.clearResults()
gg.toast(" \n 🌝 ɪʟᴇʀɪ ᴠᴇ ʏᴜᴋᴀʀɪ ᴜᴢᴀɴᴀɴ ᴋᴏʟ ᴀᴋᴛɪғ 🌝")
else
Uzayan_checker = off 
gg.clearResults()
    gg.setValues(Uzayan_value0)
    gg.clearResults()
    gg.clearResults()
    gg.setValues(sta_value0)
    gg.clearResults()
gg.toast(" 🌚 ɪʟᴇʀɪ ᴠᴇ ʏᴜᴋᴀʀɪ ᴜᴢᴀɴᴀɴ ᴋᴏʟ ᴅᴇᴠʀᴇ ᴅɪşɪ 🌚")
 end
end

function ML8()
gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("25.0;30.5::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("300", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("220", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)--Telegram @VipCodes
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("1,324,366,404", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1,324,366,404", gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(80)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("99", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("200", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(56)
  gg.editAll("-1339", gg.TYPE_FLOAT)
  gg.clearResults()  
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("189", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(56)
  gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.9986295104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.9986295104", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("1224995", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()          
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33,90000152588 ;-8,8291245e-8;-2,8322467e25;1,9197789e-43:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("33,90000152588", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("48,56470489502 ;6,1529782e-39;-10.357.658,0;-5,2374822e26:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("48,56470489502", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30.5;23.0", gg.TYPE_FLOAT)
gg.refineNumber("30.5;23.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5~60.5", gg.TYPE_FLOAT)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("29,5;30,0 ;1,5046328e-36;4,2319214e-42:21", gg.TYPE_FLOAT)
gg.refineNumber("29,5;30,0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(15)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1348759109;1953067887;1634692166;1920287604::28", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1634692166", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1634692266", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(16384)
SearchWrite({
{-1.4278110478704994E28, 0},
{8.562694393506966E-26, -12},
{1.8175359108152E-27, -8}
}, {
{0, 0}
}, 16, Name)
gg.setRanges(16384)
SearchWrite({
{-3.254379949369797E30, 0},
{2.646983324423844E-23, -56}
}, {
{0, -56}
}, 16, Name)
gg.clearResults()
gg.toast(" \n ⛑️ ʜᴇᴀᴅsʜᴏᴛ %999 ᴀᴋᴛɪғ ⛑️ ")          
end

aa2 = off
khfygdu_checker = off
khfygdu_checkeer = off
function MN4()
AM = gg.multiChoice({
          "᚛🚔᚜ ᴀʀᴀᴄ̧ ʜɪᴢʟᴀɴᴅɪʀ \n╚❑[Oʏᴜɴ]",
          "᚛💨᚜ ғʟᴀsʜ \n╚❑[Oʏᴜɴ]" .. khfygdu_checker,
          "᚛⏬᚜ ғᴀsᴛ ʟᴀɴᴅ \n╚❑[Oʏᴜɴ]" .. aa2,
          "᚛🐍᚜ ʜɪᴢʟɪ sᴜ̈ʀᴜ̈ɴᴍᴇ \n╚❑[Oʏᴜɴ]" .. khfygdu_checkeer,
          "᚛🚪᚜ ɢᴇʀɪ ",
  OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯")
  if AM == nil then
  else
    if AM [1] == true then
      AM1()
    end 
    if AM [2] == true then
      AM2()
    end
    if AM [3] == true then
      AM3()
    end
    if AM [4] == true then
      AM4()
    end
    if AM [5] == true then
      HOME()
    end
  end
  PUBGMH = -1
end


function AM1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1000;10;4D;4D;50;5;2;0.01::", gg.TYPE_FLOAT,false, gg.SIGN_EQUAL,0,-1)
gg.refineNumber( "0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(280)
gg.editAll("-0.23", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" \n  ʜɪᴢʟᴀɴɪʏᴏʀsᴜɴ... 👻")
end

function AM2()
if khfygdu_checker == off then
    khfygdu_checker = on
    gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_DATA|gg.REGION_CODE_APP)
gg.searchNumber("-6.03221444e26;-1.3078764e28;-3.74440972e28;-1.86389771e-20;-1.11445016e28;-9.39921508e20;-1.8331477e27:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.86389771e-20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
VipCodepm = gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
    gg.toast("‍ \n 🦄 sᴘᴇᴇᴅ ᴀᴋᴛɪғ 🦄️")
  else
    khfygdu_checker = off
    gg.clearResults()
gg.setValues(VipCodepm)
gg.clearResults()
    gg.toast("\n ❌ sᴘᴇᴇᴅ ᴅᴇᴠʀᴇ ᴅɪşɪ ❌")
  end
end


function AM3()
if aa2 == off then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,477,699,789", gg.TYPE_QWORD)
gg.clearResults()
aa2 = on
gg.toast(" \n 🚁 ғᴀsᴛ ʟᴀɴᴅ ᴀᴋᴛɪғ 🚁")
else 
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,414,147,695", gg.TYPE_QWORD)
gg.clearResults()
aa2 = off
gg.toast("\n ❌ ғᴀsᴛ ʟᴀɴᴅ ᴅᴇᴠʀᴇ ᴅɪşɪ ❌")
end
end


function AM4()
if khfygdu_checkeer == off then
    khfygdu_checkeer = on
gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  Lanet10 = gg.getResults(1401)
  gg.editAll("1,873,498,234,778,812,416", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  Lanet20 = gg.getResults(100)
  gg.editAll("403,635,275,035,574,272", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  Lanet30 = gg.getResults(1401)
  gg.editAll("-2,044,616,634,647,180,800", gg.TYPE_QWORD)
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP)
  gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  Lanet40 = gg.getResults(1401)
  gg.editAll("-1296744153870237696", gg.TYPE_QWORD)
  gg.clearResults()
  gg.toast("🐊 HİZLİ SURUNME AKTİF 🐊")
else
gg.setValues(Lanet10)
  gg.setValues(Lanet20)
  gg.setValues(Lanet30)
  gg.setValues(Lanet40)
  gg.toast(" ⛔ Hızlı Sürünme Kapalı ⛔")
  end
end


bullettrack_checker = off
aaa2 = off
Sky = off
function MN5() 
OK = gg.multiChoice({
          "᚛🛑᚜ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋɪɴɢ \n╚❑[Oʏᴜɴ]" .. bullettrack_checker,
          "᚛💀️᚜ ᴏᴛᴏ sɴɪᴘᴇʀ [ᴀᴡᴍ & ᴍ24] \n╚❑[Oʏᴜɴ]",
          "᚛🚔᚜ ᴀʀᴀʙᴀ ᴜᴄ̧ᴜʀᴍᴀ ᴍᴇɴᴜ̈ \n╚❑[Oʏᴜɴ]",
          "᚛🛬᚜ ʜɪᴢʟɪ ᴘᴀʀᴀşᴜ̈ᴛ \n╚❑[Aᴅᴀᴅᴀ]"  .. aaa2,
          "᚛🗽᚜ ʏᴜ̈ᴋsᴇɢ̆ᴇ ᴢɪᴘʟᴀᴍᴀ \n╚❑[Oʏᴜɴ]" .. Sky,
          "᚛💍᚜ ᴜᴢᴜɴ ᴀᴛʟᴀᴍᴀ \n╚❑[Oʏᴜɴ]",
          "᚛🔋᚜ ᴏɴᴇ sʜᴏᴛ \n╚❑[ʟᴏʙɪ + Oʏᴜɴ]",
          "᚛❌᚜ ʜᴀsᴀʀ ᴇғᴇᴋᴛɪ \n╚❑[Oʏᴜɴ]",
          "᚛👣᚜ ᴀʏᴀᴋ sᴇsʟᴇʀɪ ᴋᴀʟᴅɪʀ \n╚❑[Oʏᴜɴ]",
          "᚛🚪᚜ ɢᴇʀɪ ",
  OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯")
  if OK == nil then
  else
    if OK [1] == true then
      OK1()
    end
    if OK [2] == true then
     OK2()
    end
    if OK [3] == true then
      OK3()
    end
    if OK [4] == true then
     OK4()
    end
    if OK [5] == true then
      OK5()
    end
    if OK [6] == true then
      OK6()
    end
    if OK [7] == true then
      OK7()
    end
    if OK [8] == true then
      OK8()
    end
    if OK [9] == true then
      OK9()
    end
    if OK [10] == true then
      HOME()
    end
  end
  PUBGMH = -1
end

function OK1()
if bullettrack_checker == off then
bullettrack_checker = on
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.15017700195;15:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
bulletrack_value0 = gg.getResults(10)
gg.editAll("51", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
bulletrack_value1 = gg.getResults(10)
gg.editAll("51", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("90.4850692749;27.25;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("27.25;28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
bulletrack_value2 = gg.getResults(10)
gg.editAll("51", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("1,104,805,888D;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
bulletrack_value3 = gg.getResults(250)
gg.editAll("70", gg.TYPE_FLOAT)
gg.toast("\n 🤯 ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋɪɴɢ ᴀᴋᴛɪғ ᴇᴅɪʟᴅɪ 🤯")
else
bullettrack_checker = off
gg.clearResults()
gg.setValues(bulletrack_value0)
gg.setValues(bulletrack_value1)
gg.setValues(bulletrack_value2)
gg.setValues(bulletrack_value3)
gg.clearResults()
gg.toast(" \n ❌ ʙᴜʟʟᴇᴛ ᴛʀᴀᴄᴋɪɴɢ ᴅᴇᴠʀᴇ ᴅɪşɪ ❌")
end
end

function OK2()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("91000;2.29999995232;1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("2.29999995232;1.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(15)
  gg.editAll("0", gg.TYPE_FLOAT)  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("79000;1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.79999995232;1.70000004768", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0.1", gg.TYPE_FLOAT)
   gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...50%\n🧹🧹🧹🧹🧹▒▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...60%\n🧹🧹🧹🧹🧹🧹▒▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...70%\n🧹🧹🧹🧹🧹🧹🧹▒▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...80%\n🧹🧹🧹🧹🧹🧹🧹🧹▒▒")
gg["sleep"](260)
gg["toast"](" \nBᴇᴋʟᴇ...90%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹▒")
gg["sleep"](260)
gg["toast"](" \nBᴀşᴀʀıʟı…100%\n🧹🧹🧹🧹🧹🧹🧹🧹🧹🧹")
gg.toast(" \n 🗡️ ᴏᴛᴏ sɴɪᴘᴇʀ ᴀᴋᴛɪғʟᴇşᴛɪ 🗡️ ")
end

function OK3()
KNOXYZA = gg.prompt({
    "🚙 ᴀʀᴀʙᴀʏɪ 5x ᴜᴄ̧ᴜʀ 🚙",
    "🚙 ᴀʀᴀʙᴀʏɪ 10x ᴜᴄ̧ᴜʀ 🚙️",
    "🚙 ᴀʀᴀʙᴀʏɪ 15x ᴜᴄ̧ᴜʀ 🚙",
    "🚙 ᴀʀᴀʙᴀʏɪ 25x ᴜᴄ̧ᴜʀ 🚙",
    "🚙 ᴀʀᴀʙᴀʏɪ 50x ᴜᴄ̧ᴜʀ 🚙",
    "🚙 ᴀʀᴀʙᴀʏɪ 100x ᴜᴄ̧ᴜʀ 🚙",
    "🔙 ʙᴀᴄᴋ 🔙",
  }, {}, {
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox",
    "checkbox"
  })
  if KNOXYZA == nil then
  else
    if KNOXYZA[1] == true then
      ZV1AA()
    end
    if KNOXYZA[2] == true then
      ZV2A()
    end
    if KNOXYZA[3] == true then
      UC3()
    end
    if KNOXYZA[4] == true then
      UC4()
    end
    if KNOXYZA[5] == true then
      UC5()
    end
    if KNOXYZA[6] == true then
      UC6()
    end
    if KNOXYZA[7] == true then
      HOME()
    end
  end
  PUBGMH = -1
end

function ZV1AA()
 gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(800)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
gg.clearResults()

 
end

function ZV2A()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(800)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(800)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
gg.clearResults()
end

function UC3()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(800)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(800)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(800)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
gg.clearResults()
end

function UC4()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(800)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("25000", gg.TYPE_FLOAT)
gg.sleep(800)
gg.editAll("-980", gg.TYPE_FLOAT)
gg.clearResults()
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
gg.clearResults()
end

function UC5()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800) 
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
gg.clearResults()
end

function UC6()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ")
 
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
   gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  ucurrr_value0 = gg.getResults(30)
  gg.editAll("20000", gg.TYPE_FLOAT)
  gg.sleep(800)
  gg.editAll("-980", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast(" \n 🚙 ᴄᴏᴅᴇ ʙʏ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🚙 \n ") 
end

function OK4()
if aaa2 == off then
aaa2 = on 
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("20000;750;0.0001;0.0005 ", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0005", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
S1=gg.getResults(100)
gg.editAll("0.09", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1585267064848315881", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
S2=gg.getResults(100)
gg.editAll("-1585267068834414550", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("\n✅ ʜɪᴢʟɪ ᴘᴀʀᴀşᴜ̈ᴛ ᴀᴋᴛɪғ ✅")              
else
aaa2 = off
gg.clearResults()
gg.setValues(S1)
gg.setValues(S2)
gg.clearResults()
gg.toast(" \n ❌ ʜɪᴢʟɪ ᴘᴀʀᴀşᴜ̈ᴛ ᴅᴇᴠʀᴇ ᴅɪşɪ ❌")
end
end

function OK5()
 if Sky == off then
    Sky = on
 gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
--
gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
--
gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
--
W1 = gg.getResults(1401)
--
gg.editAll("1,873,498,234,778,812,416", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
--
gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
--
gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
--
W2 = gg.getResults(1401)
--
gg.editAll("403,635,275,035,574,272", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
W3 = gg.getResults(1401)
gg.editAll("-2,044,616,634,647,180,800", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)

gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
W4 = gg.getResults(1401)
gg.editAll("-1296744153870237696", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2188679037581846016", gg.TYPE_QWORD)
--
gg.getResultsCount()
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3000", gg.TYPE_QWORD)
--
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5.0000002E-4", gg.TYPE_FLOAT)
--
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--
gg.refineNumber("1;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--
W5 = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
--
gg.editAll("-9", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2188679037581846016", gg.TYPE_QWORD)
--
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("5.0000002E-4", gg.TYPE_FLOAT)
--
gg.getResultsCount()
gg.toast(" \n ✅ sᴋʏ ᴊᴜᴍᴘ ᴀᴋᴛɪғ ✅") 
gg.clearResults() 
 else 
Sky = off
gg.setValues(W1)
gg.setValues(W2)
gg.setValues(W3)
gg.setValues(W4)
gg.setValues(W5)
gg.toast("\n ❌ sᴋʏ ᴊᴜᴍᴘ ᴅᴇᴠʀᴇ ᴅɪşɪ ❌ ")
end
end


function OK6()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1;-0.70710676908;0.70710670948;64;1.793662e-43;1.4012985e-45;1D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(9999)
  gg.editAll("999", gg.TYPE_FLOAT)
  gg.toast(" \n ⛹️‍♂️ ᴜᴢᴜɴ ᴀᴛʟᴀᴍᴀ ᴀᴋᴛɪғ ⛹️‍♂️")
end

function OK7()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("0.10000000149;64.50088500977", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("250", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16000~99999;3D;0.1;1D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0000B040rA;0000803FrA;0000403FrA:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(31)
gg.editAll("1,087,897,600;1,075,838,976;1,075,838,976", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88000;0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500;0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("87000;0.09600000083", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("71500;0.109", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("91500;0.07500000298", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("91500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("400000", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" \n 👿 ᴏɴᴇ sʜᴏᴛ ᴀᴋᴛɪғ 👿")                 
end


function OK8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" ❌ ᴇғᴇᴋᴛ ᴀᴋᴛɪғʟᴇşᴛɪɪɪɪ... ❌")                      
end

function OK9()
gg.clearResults()
gg.setVisible(false)
edit({
{
gg.REGION_ANONYMOUS
},
{
"👣 ᴀʏᴀᴋ sᴇsɪ ᴋᴀʟᴅɪʀᴍᴀ ʙʏᴘᴀss ᴀᴋᴛɪғ 👣"
},
{
1118830592,
gg.TYPE_DWORD
},
{
1148846080,
-12,
gg.TYPE_DWORD
},
{
1,
-16,
gg.TYPE_DWORD
}
}, {
{
1112539136,
0,
gg.TYPE_DWORD
}
})
gg.clearResults()
gg.setVisible(false)
gg.toast("👣 ᴀʏᴀᴋ sᴇsɪ ᴋᴀʟᴅɪʀɪʟᴅɪ 👣")
end


function MN6()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("220676386071773185", gg.TYPE_QWORD)
gg.getResults(69)
gg.editAll("220676386036121600", gg.TYPE_QWORD)
gg.toast("📵 ɪɴᴛᴇʀɴᴇᴛ ᴅɪsᴄᴏɴɴᴇᴄᴛᴇᴅ 📵")
gg.sleep(6000)
gg.editAll("220676386071773185", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("✅ ɪɴᴛᴇʀɴᴇᴛ ᴄᴏɴɴᴇᴄᴛᴇᴅ ✅")
end 


function MN7()
MNN6 = gg.multiChoice({
      'sɴᴀᴘᴅʀᴀԍoɴ 415',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 425',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 620',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 636',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 625',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 660',
      'ᴛᴜ̈ᴍ sɴᴀᴘᴅʀᴀɢᴏɴ ɪşʟᴇᴍᴄɪʟᴇʀɪ',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 835',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 820',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 845',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 400',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 410',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 430',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 435',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 450',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 615',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 616',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 626',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 650',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 653',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 670',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 710',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 800',
      'sɴᴀᴘᴅʀᴀɢᴏɴ 801',
      'ᴋɪʀᴍɪᴢɪ ʀᴇɴᴋ',
      'ʏᴇşɪʟ ʀᴇɴᴋ',
      'ʙᴇʏᴀᴢ ʀᴇɴᴋ',
      'ʙᴀᴄᴋ',
 OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯")
    if MNN6 == nil then
    else
      if MNN6[1] == true then
        wh1()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[2] == true then
        wh2()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[3] == true then
        wh3()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[4] == true then
        wh636()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[5] == true then
        wh625()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[6] == true then
        wh660()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[7] == true then
        whp()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[8] == true then
        wh835()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[9] == true then
        wh820()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[10] == true then
        wh845()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[11] == true then
        wh400()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[12] == true then
        wh410()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[13] == true then
        wh430()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[14] == true then
        wh435()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[15] == true then
        wh450()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[16] == true then
        wh615()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[17] == true then
        wh616()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[18] == true then
        wh626()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[19] == true then
        wh650()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[20] == true then
        wh653()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[21] == true then
        wh670()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[22] == true then
        wh710()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[23] == true then
        wh800()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[24] == true then
        wh801()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[25] == true then
        Red()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[26] == true then
        Yellow()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[27] == true then
        White()
      end--Iғ | ∂є¢ ву α¢ιℓ
      if MNN6[28] == true then
        HOME()
      end--Iғ | ∂є¢ ву α¢ιℓ
    end--Eʟsᴇ | ∂є¢ ву α¢ιℓ
    PUBGMH = -1
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function Red()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('8,192D;256D;8200D', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('8200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('7', gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast(' ᴋɪʀᴍᴜᴢɪɪ ʀᴇɴᴋ ᴀᴋᴛɪғ 😂')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function Yellow()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('8,192D;256D;8200D', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('8200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('6', gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast(' sᴀʀɪ ʀᴇɴᴋ ᴀᴋᴛɪғ')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function White()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('8,192D;256D;8200D', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('8200', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('5', gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast('ʙᴇʏᴀᴢ ʀᴇɴᴋ ᴀᴋᴛɪғ')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh1()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_HEAP)
    gg.searchNumber('3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('120', gg.TYPE_FLOAT, false, 536870912, 0, -1)
    gg.clearResults()
    gg.searchNumber('3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('120', gg.TYPE_FLOAT, false, 536870912, 0, -1)
    gg.clearResults()
    gg.toast('Aktif🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh2()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber('3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('120', gg.TYPE_FLOAT, false, 536870912, 0, -1)
    gg.clearResults()
    gg.searchNumber('3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('120', gg.TYPE_FLOAT, false, 536870912, 0, -1)
    gg.clearResults()
    gg.toast('Aktif🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh636()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('100%')
    gg.toast('WallhacK AKTIF🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh3()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('WH  435🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh625()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.0F;4.7961574e21F;4.7408166e21F:512', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('2.0F;4.8699472e21F;4.8699466e21F:512', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('2.0F;4.7777152e21F;4.7777146e21F:512', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('SD 625🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh660()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('8E;2.5;6.0255834e-44::150', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2.5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('-999', gg.TYPE_FLOAT)
    gg.setRanges(gg.REGION_BAD)
    gg.clearResults()
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;1.0F;-127.0F;0.00999999978F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('SD 660🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function whp()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('200', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('-5.5693206e-40;4.814603e21;3.7615819e-37;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('200', gg.TYPE_FLOAT)
    gg.toast('Aktif🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh835()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.1097599e21;2.0;1.6623071e-19::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('-0.01000213623;2;-1;0;0.04000854492', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(131072)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('Aktif🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh820()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('4.814603e21;3.5032462e-44;3.7615819e-37;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('-5.5693206e-40;4.814603e21;3.7615819e-37;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.1848043e-44;-1.0285578e-38;3.7615819e-37;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('304.00009155273;3.7615819e-37;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.toast('Wallhack 100%🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh845()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.3680222e21;1.3312335e-43;1.3912563e-19;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('4.8146053e21;2.8866748e-43;1.3912556e-19;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.201992e21;4.4028356e-29;2.25000452995;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('4.9252857e21;6.488138e-40;4.9252863e21;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('1.0761972e-42;4.5920551e-41;-1.7632415e-38;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('1.0761972e-42;4.5923353e-41;-1.7632457e-38;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.3311276e21;1.3312335e-43;1.391256e-19;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('4.8146041e21;2.8866748e-43;1.3912537e-19;2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('Aktif🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh400()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('135,215D;4,140D;3.7615819e-37;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('194D;3.7615819e-37;2;-1;1;-127::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(' wᴀʟʟнᴀcκ 400 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh410()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('135,215D;4,140D;3.7615819e-37;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('194D;3.7615819e-37;2;-1;1;-127::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 410 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh430()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('4,141D;4.7408155e21;-5.5693206e-40;4.814603e21;3.7615819e-37;2:', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(4)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 430 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh435()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;-1.0F;-127.0F::520', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.toast('wᴀʟʟнᴀcκ 435 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh450()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('135,215D;4,140D;3.7615819e-37;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('194D;3.7615819e-37;2;-1;1;-127::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('1.1202013e-19;1.1202017e-19;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll('9999', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('150', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('150', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('4.7961574e21;3.7615819e-37;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('150', gg.TYPE_FLOAT)
    gg.toast('wᴀʟʟнᴀcκ 450 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh615()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_HEAP)
    gg.searchNumber('3.2229865e-43;2.0;-1.0;-1.0;2.0:145', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('122', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_HEAP)
    gg.searchNumber('3.3631163e-44;2.0;3.5032462e-44;-1.0;3.643376e-44;3.7835059e-44;-1.0;3.9236357e-44;4.0637655e-44;1.0;-127.0:129', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('3.1809475e-43;3.1949605e-43;2.0;3.2089735e-43:53', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 615 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh616()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('4,140D;4.7408166e21F;4.7223665e21;0D;0D;0D;0D;0D;0D;-0.0F;2.0F', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.718519e-43;2.0F;-1.0F;1.0F;-127F;0.24022650719F;-0.0', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 616 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh626()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('32769D;32770D;2.0F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('1.1202013e-19;1.1202017e-19;2::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll('9999', gg.TYPE_FLOAT)
    gg.toast('wᴀʟʟнᴀcκ 626 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh650()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 650 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh653()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('5.8013756e-42F;-5.5695588e-40F;2.0F::100', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber(2, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 653 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh670()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('274,677,779D;2.25000452995;2;1.6623054e-19', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.toast('25%')
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('218D;3.7615819e-37;2;-1;1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.toast('50%')
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('95D;2;9.2194229e-41', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.toast('75%')
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('206D;3.7615819e-37;2;-1;1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 670 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh710()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('274,677,779D;2.25000452995;2;1.6623054e-19', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('218D;3.7615819e-37;2;-1;1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('95D;2;9.2194229e-41', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('206D;3.7615819e-37;2;-1;1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll('130', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 710 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh800()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 800 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  
  function wh801()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber('5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber('2.0;-1.0;0.0;1.0;-127.0::17', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber('2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll('120', gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast('wᴀʟʟнᴀcκ 801 ᴀcтιvᴇ🇹🇷')
  end--Fᴜɴᴄᴛɪᴏɴ | ∂є¢ ву α¢ιℓ
  

safeipad_checker = off
safeanten_check = off
function MN8() 
WCD = gg.multiChoice({
           "᚛🔱᚜ ᴀɪᴍʙᴏᴛ 400ᴍ \n╚❑[Oʏᴜɴ]",
           "᚛🐸᚜ ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ %100 ᴠ1 \n╚❑[Oʏᴜɴ]",
           "╭────────────────────╮\n 💛 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ %100 ᴠ2 💛\n╰────────────────────╯ ",   
           "╭────────────────────╮\n 👿 ʜᴇᴀᴅsʜᴏᴛ %100 👿\n╰────────────────────╯",    
           "╭────────────────────╮\n 🔙 ʙᴀᴄᴋ 🔙\n╰────────────────────╯",
  OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯") 
  if WCD == nil then
  else
    if WCD [1] == true then
      WC1D()   
    end
    if WCD [2] == true then
     WC2D()
    end
    if WCD [3] == true then
      WC3D()
    end
    if WCD [4] == true then
      WC4D()
    end
    if WCD [5] == true then
      HOME()
    end
  end
  PUBGMH = -1
end

function WC1D()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-476053504", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-476053504", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast(" 🖤 ᴀɪᴍʙᴏᴛ ᴀᴋᴛɪғ 🖤")
end


function WC2D()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("50000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5~60.5", gg.TYPE_FLOAT)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(56)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)--@VipCodes
gg.getResults(56)
gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" 🍺 ᴀᴋᴛɪғ 🍺")

end

function WC3D()
gg.setVisible(false)
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber('1041462460', gg.TYPE_DWORD)
    gg.getResults('9999', nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll('1077936128', gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("🍺 ᴀᴋᴛɪғ 🍺")
end

function WC4D()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33,90000152588 ;-8,8291245e-8;-2,8322467e25;1,9197789e-43:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("33,90000152588", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("48,56470489502 ;6,1529782e-39;-10.357.658,0;-5,2374822e26:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("48,56470489502", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30.5;23.0", gg.TYPE_FLOAT)
gg.refineNumber("30.5;23.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(50)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5~60.5", gg.TYPE_FLOAT)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("29,5;30,0 ;1,5046328e-36;4,2319214e-42:21", gg.TYPE_FLOAT)
gg.refineNumber("29,5;30,0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("253", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.1022205e-38;0.0001;9.1025635e-38::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("125", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-7.1611644e24;0.0001;1.1297201e-37::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-125", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("👿 ʜᴇᴀᴅsʜᴏᴛ %100 ᴀᴋᴛɪғ 👿")
end


blacksky_check = off
anten = off
function SKINHACKS()
WCC = gg.multiChoice({
           "  ╭────────────────────╮ \n   🚫 sᴇᴋᴍᴇᴍᴇ %75 🚫  \n  ╰────────────────────╯ ",
           "  ╭────────────────────╮ \n   ⚕️ sᴀғᴇ ᴀɪᴍʙᴏᴛ ⚕️ \n  ╰────────────────────╯",       
           "  ╭────────────────────╮ \n   🧫 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ %60 🧫 \n  ╰────────────────────╯",   
           "  ╭────────────────────╮ \n   👁️‍🗨️ sᴀғᴇ ᴀɴᴛᴇɴ 👁️‍🗨️ \n  ╰────────────────────╯ " ..anten,
           "  ╭────────────────────╮ \n   🏜️ ᴄ̧ɪᴍᴇɴ ᴋᴀʟᴅɪʀ 🏜️️ \n  ╰────────────────────╯", 
           "  ╭────────────────────╮ \n   ⚜️ sᴀғᴇ ᴀɪᴍʙᴏᴛ ᴠ2 ⚜️ \n  ╰────────────────────╯",
           "  ╭────────────────────╮ \n   🌃 sɪʏᴀʜ ɢᴏ̈ᴋʏᴜ̈ᴢᴜ̈ 🌃️ \n  ╰────────────────────╯" ..blacksky_check,
           "  ╭────────────────────╮ \n    🔙 ɢᴇʀɪ 🔙 \n  ╰────────────────────╯",
  OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯")
  if WCC == nil then
  else
    if WCC [1] == true then
      WCC1()   
    end
    if WCC [2] == true then
     WCC2()
    end
    if WCC [3] == true then
      WCC3()
    end
    if WCC [4] == true then
      WCC4()
    end
    if WCC [5] == true then
     WCC5()
    end
    if WCC [6] == true then
      WCC6()
    end
    if WCC [7] == true then
      WCC7()
    end
    if WCC [8] == true then
      HOME()
    end
  end
  PUBGMH = -1
end

function WCC1()
gg.setVisible(false)
gg.searchNumber(-1228926272664233280, gg.TYPE_QWORD)
gg.getResultsCount()
gg.getResults(0)
gg.setRanges(gg.REGION_CODE_APP)
gg.setVisible(false)
gg.searchNumber(4827858804535200272, gg.TYPE_QWORD)
gg.getResultsCount()
gg.getResults(0)
gg.setRanges(gg.REGION_CODE_APP)
gg.setVisible(false)
gg.searchNumber(2211278695137542152, gg.TYPE_QWORD)
gg.getResultsCount()
gg.getResults(0)
gg.clearList()
gg.toast("🚫 sᴀғᴇ sᴇᴋᴍᴇᴍᴇ ᴀᴋᴛɪғ 🚫")            
end

function WCC2()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("50000", gg.TYPE_FLOAT)
gg.toast("⚕️ sᴀғᴇ ᴀɪᴍʙᴏᴛ ᴀᴋᴛɪғ ⚕️")                    
end

function WCC3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("25;30.5~60.5", gg.TYPE_FLOAT)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(56)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)--@VipCodes
gg.getResults(56)
gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" 🥇 ᴍᴀɢɪᴄ ʙᴜʟʟᴇᴛ ᴀᴄᴛɪᴠɪᴛᴇ ᴋɴᴏxʏ ɢᴀᴍɪɴɢ 🥇")                    
end

function WCC4()
 if anten == off then
    anten = on
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    safeantenvalue0 = gg.getResults(6)
    gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(" \n 👨‍🔧 sᴀғᴇ ᴀɴᴛᴇɴ ᴀᴄ̧ɪʟᴅɪ...")
  else
    anten = off
    gg.clearResults()
    gg.setValues(safeantenvalue0)
    gg.clearResults()
    gg.toast(" \n ❌ sᴀғᴇ ᴀɴᴛᴇɴ ᴅᴇᴠʀᴇ ᴅɪşɪ ❌")
  end
end


function WCC5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(":Default__MaterialExpressionLandscapeGrassOutput", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.toast(' \n ᴄ̧ɪᴍᴇɴʟᴇʀ ᴘᴜғ ᴏʟᴅᴜ :D 🤪')
end

function WCC6()
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-476053504", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1.6615354e35;-5.8048945e26:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("1.6615351e35", gg.TYPE_FLOAT)
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-511703038;-336586961:29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511703038", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-476053504", gg.TYPE_DWORD)
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("2015175168", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(6)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("🔗 sᴀғᴇ ᴀɪᴍʙᴏᴛ ᴠ2 ᴀᴋᴛɪғ 🔗")                   
end

function WCC7()
if blacksky_check == off then
blacksky_check = on
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3.4028235e38;0.05000000075::5", gg.TYPE_FLOAT, false)
gg.searchNumber("0.05000000075", gg.TYPE_FLOAT, false)
bskys1 = gg.getResults(30)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast(" 🌃 sɪʏᴀʜ ɢᴏ̈ᴋʏᴜ̈ᴢᴜ̈ 🌃")
gg.clearResults()
else
blacksky_check = off
gg.clearResults()
gg.setValues(bskys1)
gg.toast(" ❌ sɪʏᴀʜ ɢᴏ̈ᴋʏᴜ̈ᴢᴜ̈ ᴅᴇᴠʀᴇ ᴅɪşɪ ❌")
gg.clearResults()
end
end


  

function skyoff()
EM = gg.multiChoice({
"᚛🤴᚜ sɪʟᴀʜ sᴋɪɴʟᴇʀɪ \n╚❑[ʟᴏʙɪ + Oʏᴜɴ]",
"᚛🤴᚜ ᴇʟʙɪsᴇ sᴋɪɴʟᴇʀɪ \n╚❑[ʟᴏʙɪ + Oʏᴜɴ]",
"᚛💃᚜ ᴅᴀɴs ʜɪʟᴇsɪ \n╚❑[ʟᴏʙɪ + Oʏᴜɴ]",
"᚛🔥᚜ ᴇxᴛʀᴀ ᴍᴇɴᴜ̈ \n╚❑[ʟᴏʙɪ + Oʏᴜɴ]",
"᚛🚪᚜ ɢᴇʀɪ",
  OJ }, nil, "  ╭────────────────────╮\n 👻 ᴋɴᴏxʏ ɢᴀᴍɪɴɢ sᴄʀɪᴘᴛ 1.0 👻 \n 🚫 ʙᴀɴ sɪᴋɪɴᴛɪsɪ ʏᴏᴋ 🚫 \n 🎲 ᴏ̈ᴢᴇʟ ᴋᴏᴅʟᴀᴍᴀʟᴀʀ ɪᴄ̧ᴇʀɪʀ 🎲 \n  ╰────────────────────╯")
  if EM == nil then
  else
    if EM [1] == true then
      EM1()   
    end
    if EM [2] == true then
     EM2()
    end
    if EM [3] == true then
      EM3()
    end
    if EM [4] == true then
      EM4()
    end
    if EM [5] == true then
      HOME()
    end
  end
  PUBGMH = -1
end


function EM3()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2200101", gg.TYPE_DWORD)
gg.refineNumber("2200101", gg.TYPE_DWORD)
gg.getResults(500)
gg.editAll("2204101", gg.TYPE_DWORD)
gg.processResume()
gg.toast(" ✅ ᴅᴀɴs ʜɪʟᴇsɪ ᴀᴋᴛɪғ ✅")
end


function EM1()
SD = gg.choice({
	"🔫 ᴀᴋᴍ ʙᴜᴢ ᴅɪʏᴀʀɪ",
	"🔫 ᴀᴋᴍ ғᴏsɪʟ",
	"🔫 ᴀᴋᴍ ʏᴇᴅɪᴅᴇɴɪᴢʟᴇʀ",
	"🔫 ᴀᴋᴍ ᴀʟᴛɪɴ",
	"🔫 ᴀᴋᴍ ɪşɢᴀʟᴄɪ",
	"🔫 ᴍ416 ᴍᴀsᴋᴀʀᴀ",
	"🔫 ᴍ416 ʙᴜᴢᴅɪʏᴀʀɪ",
	"🔫 ᴍ416 ᴋᴇʀᴛᴇɴᴋᴇʟᴇ",
	"🔫 ᴍ416 ɢᴏ̈ᴄ̧ᴇʙᴇ",
	"🔫 ᴍ416 ᴀʟᴛɪɴ",
	"🔫 sᴄᴀʀ-ʟ ʙᴀʟᴋᴀʙᴀɢ̆ɪ",
	"🔫 sᴄᴀʀ-ʟ sᴜᴛᴀʙᴀɴᴄᴀsɪ",
	"🔫 sᴄᴀʀ-ʟ ʏᴀʀɪɴ ᴏᴘᴇʀᴀsʏᴏɴᴜ",
	"🔙ʙᴀᴄᴋ",
},nil," ⭐ sɪʟᴀʜ sᴋɪɴ ʜɪʟᴇsɪ ᴍᴇɴᴜ̈")
if SD == nil then else
if SD == 1 then SD1() end
if SD == 2 then SD2() end
if SD == 3 then SD3() end
if SD == 4 then SD4() end
if SD == 5 then SD5() end
if SD == 6 then SD6() end
if SD == 7 then SD7() end
if SD == 8 then SD8() end
if SD == 9 then SD9() end
if SD == 10 then SD10() end
if SD == 11 then SD11() end
if SD == 12 then SD12() end
if SD == 13 then SD13() end
if SD == 14 then HOME() end
end
PUBGMH=-1
end

function SD1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101001089", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ✅ ʙᴜᴢ ᴅɪʏᴀʀɪ ᴀᴋᴍ ᴀᴋᴛɪғ ✅")
end

function SD2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100",gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101001103", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ✅ ғᴏsɪʟ ᴀᴋᴍ ᴀᴋᴛɪғ ✅")
end

function SD3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101001063", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ✅ ʏᴇᴅɪ ᴅᴇɴɪᴢʟᴇʀ ᴀᴋᴍ ᴀᴋᴛɪғ ✅")
end

function SD4()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101001030", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ✅ ᴀʟᴛɪɴ ᴀᴋᴍ ᴀᴋᴛɪғ ✅")
end
	
function SD5()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101001046", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ✅ ɪşɢᴀʟᴄɪ ᴀᴋᴍ ᴀᴋᴛɪғ ✅")
end

function SD6()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101004062", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✅ ᴍᴀsᴋᴀʀᴀ ᴍ416 ᴀᴋᴛɪғ ✅")
end

function SD7()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101004046", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ✅ ʙᴜᴢ ᴅɪʏᴀʀɪ ᴀᴋᴛɪғ ✅")
end

function SD8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101004086", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ✅ ᴋᴇʀᴛᴇɴᴋᴇʟᴇ ᴋᴜ̈ᴋʀᴇᴍᴇsɪ ᴍ416 ᴀᴋᴛɪғ ✅")
end

function SD9()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101004078", gg.TYPE_DWORD)
gg.clearResults()
gg.toast(" ✅ ɢᴏ̈ᴄ̧ᴇʙᴇ ᴍ416 ᴀᴋᴛɪғ ✅")
end

function SD10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101004034", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("✅ ᴀʟᴛɪɴ ᴍ416 ᴀᴋᴛɪғ ✅")
end

function SD11()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300",gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101003070",4)
gg.clearResults()
gg.toast("✅ ʙᴀʟᴋᴀʙᴀɢ̆ɪ sᴄᴀʀ-ʟ ᴀᴋᴛɪғ ✅")
end

function SD12()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101003057",4)
gg.clearResults()
gg.toast(" ✅ sᴜ ᴛᴀʙᴀɴᴄᴀsɪ sᴄᴀʀ-ʟ ᴀᴋᴛɪғ ✅")
end
	
function SD13()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300", gg.TYPE_DWORD)
gg.getResults(10)
gg.editAll("1101003080",4)
gg.clearResults()
gg.toast(" ✅ ʏᴀʀɪɴ ᴏᴘᴇʀᴀsʏᴏɴᴜ sᴄᴀʀ-ʟ ᴀᴋᴛɪғ ✅")
end


function EM2()
SJD = gg.choice({
	"🤴 ғɪʀᴀᴠᴜɴ sᴇᴛɪ",
	"🤴 ᴍᴀsᴋᴀʀᴀ sᴇᴛɪ",
	"🤴 sᴀʀɪ ᴍᴜᴍʏᴀ sᴇᴛɪ",
	"🤴 ᴍᴜᴍʏᴀ sᴇᴛɪ",
    "🤴 ᴜɴɪᴄᴏʀɴ sᴇᴛɪ",
	"🤴 ᴋᴀɴʟɪ ᴋᴜᴢɢᴜɴ sᴇᴛɪ",
	"🤴 ʙᴜᴢᴜʟ ᴄᴀᴅɪsɪ sᴇᴛɪ",
	"🤴 ɢᴏᴅᴢɪʟʟᴀ sᴇᴛɪ",
	"🔙 ʙᴀᴄᴋ",
},nil," ⭐ ᴇʟʙɪsᴇ ʜɪʟᴇsɪ ᴍᴇɴᴜ̈ ̈")
if SJD == nil then else
if SJD == 1 then SJD1() end
if SJD == 2 then SJD2() end
if SJD == 3 then SJD3() end
if SJD == 4 then SJD4() end
if SJD == 5 then SJD5() end
if SJD == 6 then SJD6() end
if SJD == 7 then SJD7() end
if SJD == 8 then SJD8() end
if SJD == 9 then HOME() end
end
PUBGMH=-1
end

function SJD1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(1400129, gg.TYPE_DWORD)
gg.getResultCount()
gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10300300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1103003022", gg.TYPE_DWORD)
gg.toast(" ⭐ ғɪʀᴀᴠᴜɴ sᴇᴛɪ ᴀᴋᴛɪғ ⭐")
end

function SJD2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001116", gg.TYPE_DWORD)
gg.clearResults() 
gg.toast(" ✅ ᴍᴀsᴋᴀʀᴀ sᴇᴛɪ ᴀᴋᴛɪғ ✅")
end

function SJD3()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
qmnb = {
{["memory"] = 32},
{["name"] = "Mummy set"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
gg.setVisible(false)
qmxg = {
{["value"] = 1405623, ["offset"] = 0, ["type"] = 4},
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.toast(" ✅ sᴀʀɪ ᴍᴜᴍʏᴀ sᴇᴛɪ ᴀᴋᴛɪғ ✅")
end

function SJD4()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber(1400129, gg.TYPE_DWORD)
gg.getResultCount()
gg.toast(" ✅ ᴍᴜᴍʏᴀ sᴇᴛ ᴀᴋᴛɪғ ✅")
end

function SJD5()
gg.setVisible(false)

gg.clearResults()
qmnb={
{["memory"] = 32},
{["name"]="ᴜᴄɪᴄᴏʀɴ sᴇᴛ ᴀᴋᴛɪғ 🦄"},
{["value"] = 1400129, ["type"] =4},
{["lv"]=519,["offset"]=4,["type"]=4}

}
qmxg={
{["value"]=1405482,["offset"]=0,["type"]=4},

}
xqmnb(qmnb)

gg.clearResults()
end

function SJD6()
gg.setVisible(false)

gg.clearResults()
qmnb={
{["memory"]=32},
{["name"]="Kanlı Kuzgun Seti Aktif 🔥"},
{["value"]=1400129,["type"]=4},
{["lv"]=519,["offset"]=4,["type"]=4},
}
qmxg={
{["value"]=1405870,["offset"]=0,["type"]=4},

}
xqmnb(qmnb)

gg.clearResults()
end

function SJD7()
qmnb={
{
["memory"]=32
},
{
["name"]="BUZUL CADISETİ AKTİF 🥋"
},
{
["value"]=1400129,
["type"]=4
},
{
["lv"]=519,
["offset"]=4,
["type"]=4
},
}
qmxg={
{
["value"]=1405384,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
end

function SJD8()
gg.clearResults()

qmnb={
{["memory"]=32},
{["name"]="GodzillaOutfit"},
{["value"]=1400129,["type"]=4},
{["lv"]=519,["offset"]=4,["type"]=4},
}
qmxg={
{["value"]=1405186,["offset"]=0,["type"]=4},

}
xqmnb(qmnb)
gg.clearResults()
gg.toast(' ʙɪ ᴅᴀᴋɪᴋᴀ ᴋᴀғᴀᴍᴅᴀ ɢᴏᴅᴢɪʟʟᴀ ')
end

function EM4()
OJ = gg.choice({
	"⛑️ ʙᴜᴢ ᴅɪʏᴀʀɪ ᴋᴀsᴋ",
	"🎒 ᴋɪş ᴋʀᴀʟɪᴄ̧ᴇsɪ ᴄ̧ᴀɴᴛᴀ",
	"🔙ʙᴀᴄᴋ",
},nil," ⭐ sɪʟᴀʜ sᴋɪɴ ʜɪʟᴇsɪ ᴍᴇɴᴜ̈")
if OJ == nil then else
if OJ == 1 then OJ1() end
if OJ == 2 then OJ2() end
if OJ == 3 then HOME() end
end
PUBGMH=-1
end

function OJ1()
gg["clearResults"]()

gg["setRanges"](
gg["REGION_ANONYMOUS"])
qmnb={
{
["memory"]=32
},
{
["name"]="BuzDiyarıKask"
},
{
["value"]=502001,
["type"]=4
},
{
["lv"]=502,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1502001023,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="BuzDiyarıKask"
},
{
["value"]=502004,
["type"]=4
},
{
["lv"]=502,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1502002023,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="BuzDiyarıKask"
},
{
["value"]=502002,
["type"]=4
},
{
["lv"]=502,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1502002023,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="BuzDiyarıKask"
},
{
["value"]=502005,
["type"]=4
},
{
["lv"]=502,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1502002023,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="BuzDiyarıKask"
},
{
["value"]=502003,
["type"]=4
},
{
["lv"]=502,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1502002023,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
end


function OJ2()
gg["clearResults"]()

gg["setRanges"](
gg["REGION_ANONYMOUS"])
qmnb={
{
["memory"]=32
},
{
["name"]="AKTİF🔥"
},
{
["value"]=501001,
["type"]=4
},
{
["lv"]=501,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1501001216,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="AKTİF🔥"
},
{
["value"]=501002,
["type"]=4
},
{
["lv"]=501,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1501002216,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="AKTİF🔥"
},
{
["value"]=501003,
["type"]=4
},
{
["lv"]=501,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1501003216,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="AKTİF🔥"
},
{
["value"]=501004,
["type"]=4
},
{
["lv"]=501,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1501002216,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="AKTİF🔥"
},
{
["value"]=501005,
["type"]=4
},
{
["lv"]=501,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1501003216,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
qmnb={
{
["memory"]=32
},
{
["name"]="AKTİF🔥"
},
{
["value"]=501006,
["type"]=4
},
{
["lv"]=501,
["offset"]=-4,
["type"]=4
},
}
qmxg={
{
["value"]=1501003216,
["offset"]=0,
["type"]=4
},
}
xqmnb(qmnb)

gg["clearResults"]()
end



function EXIT()
  print("Hoscakalin 🥀\n Bizi tercih ettiginiz icin teşekkürler ")
  print("━━━━━━━━━━━━━━━")
  print("⭐️ Tᴇʟᴇɢʀᴀᴍ")
  print("↪️  @knoxygaminghack ")
  print("⭐️  ᴄᴏᴅᴇʀ")
  print("↪️   @knoxygamingg")
  print("©️ ᴀʟʟ ʀɪɢʜᴛs ʀᴇsᴇʀᴠᴇᴅ")
  print("━━━━━━━━━━━━━━━")
print("  ⠀      ｡ﾟﾟ･｡･ﾟﾟ｡")
print("          ﾟ。        ｡ﾟ")
print("              ﾟ･｡･ﾟ")
print("        ︵               ︵")
 print("    (        ╲       /       /")
print("       ╲          ╲/       /")
  print("          ╲          ╲  /")
 print("          ╭ ͡   ╲           ╲")
print("      ╭ ͡   ╲        ╲       ﾉ")
print(" ╭ ͡   ╲        ╲         ╱")
print("  ╲       ╲          ╱")
print("       ╲         ╱")
 print("          ︶ ⠀      ｡ﾟﾟ･｡･ﾟﾟ｡")
print("          ﾟ。        ｡ﾟ")
print("              ﾟ･｡･ﾟ")
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end

while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
  if PUBGMH == 1 then
    HOME()
  end
end





