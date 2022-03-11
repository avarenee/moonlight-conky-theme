local _name = ""

function conky_name()
  return _name
end

function conky_distro()
  local pattern = 'PRETTY_NAME'
  local distro_line = sys_call("cat /etc/os-release | grep " .. pattern, true)
  local distro = string.match(distro_line, '[%a_]*="([%a ]*)"')
  return conky_parse(distro)
end

-- Borrowed this function from jxai here: https://github.com/jxai/lean-conky-config/blob/master/utils.lua. Thank you jxai!
function sys_call(cmd, as_string)
    local pipe = io.popen(cmd)
    local lines = {}
    for l in pipe:lines() do
        table.insert(lines, l)
    end
    pipe:close()
    if as_string then
        return table.concat(lines, "\n")
    else
        return lines
    end
end
