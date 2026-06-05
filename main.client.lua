-- Carregar WindUI
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-- Criar Tema
WindUI:AddTheme({
    Name = "GenesisTheme",
    Accent = Color3.fromHex("#18181b"),
    Background = Color3.fromHex("#101010"),
    Outline = Color3.fromHex("#FFFFFF"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#7a7a7a"),
    Button = Color3.fromHex("#52525b"),
    Icon = Color3.fromHex("#a1a1aa"),
})

WindUI:SetTheme("GenesisTheme")

-- Criar Janela
local Window = WindUI:CreateWindow({
    Title = "GÊNESIS HUB",
    Icon = "zap",
    Author = "v1.0.0",
    Folder = "GenesisHub",
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    ToggleKey = Enum.KeyCode.LeftShift,
    Transparent = true,
    Theme = "GenesisTheme",
    Resizable = true,
    SideBarWidth = 200,
    HideSearchBar = false,
    ScrollBarEnabled = false,
})

-- Criar Tab Principal "Main"
local MainTab = Window:Tab({
    Title = "Main",
    Icon = "home",
})

-- Seção Principal
local MainSection = MainTab:Section({
    Title = "Main Features",
    Opened = true,
})

-- Exemplo de Botão
MainSection:Button({
    Title = "Example Button",
    Desc = "This is an example button",
    Callback = function()
        print("Button clicked!")
    end
})

-- Exemplo de Toggle
MainSection:Toggle({
    Title = "Example Toggle",
    Desc = "This is an example toggle",
    Value = false,
    Callback = function(state)
        print("Toggle state: " .. tostring(state))
    end
})

-- Exemplo de Slider
MainSection:Slider({
    Title = "Example Slider",
    Desc = "This is an example slider",
    Step = 1,
    Value = {
        Min = 1,
        Max = 100,
        Default = 50,
    },
    Callback = function(value)
        print("Slider value: " .. tostring(value))
    end
})

-- Exemplo de Dropdown
MainSection:Dropdown({
    Title = "Example Dropdown",
    Desc = "This is an example dropdown",
    Values = {"Option 1", "Option 2", "Option 3"},
    Value = "Option 1",
    Multi = false,
    AllowNone = false,
    Callback = function(option)
        print("Selected: " .. tostring(option))
    end
})

-- Exemplo de Input
MainSection:Input({
    Title = "Example Input",
    Desc = "This is an example input",
    Value = "",
    Type = "Input",
    Placeholder = "Enter text...",
    Callback = function(input)
        print("Input: " .. input)
    end
})

-- Exemplo de Colorpicker
MainSection:Colorpicker({
    Title = "Example Colorpicker",
    Desc = "This is an example colorpicker",
    Default = Color3.fromRGB(255, 255, 255),
    Transparency = 0,
    Callback = function(color)
        print("Color selected: " .. tostring(color))
    end
})

-- Exemplo de Keybind
MainSection:Keybind({
    Title = "Example Keybind",
    Desc = "This is an example keybind",
    Value = "G",
    Callback = function(v)
        print("Key pressed: " .. v)
    end
})

-- Exemplo de Paragraph
MainSection:Paragraph({
    Title = "Example Paragraph",
    Desc = "This is an example paragraph with description",
})

-- Notificação de carregamento
WindUI:Notify({
    Title = "GÊNESIS HUB",
    Content = "Hub carregado com sucesso!",
    Duration = 3,
    Icon = "check-circle",
})

-- Tag de versão
Window:Tag({
    Title = "v1.0.0",
    Icon = "zap",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 5,
})

print("GÊNESIS HUB v1.0.0 carregado com sucesso!")
