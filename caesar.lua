local function encrypt(text,key)
    return text:gsub("%a", function(t)
        local base = (t:lower() == t and string.byte('a') or string.byte('A'))
        local r = t:byte() - base
        r = r + key
        r = r%26
        r = r + base
        return string.char(r)
    end)
end

caesar = {
    encrypt = encrypt
}

do 
    local text = "HACKtoberfest"
    local encrypted = caesar.encrypt(text,23)
    print("Texto original: ", text)
    print("Texto encriptado: ", encrypted)
    print("Que codigo meu Deus do Ceu!!!!")
    print("Um dia eu volto pra isso aqui.")
end