-- Define the name of your plugin's toolbar
local toolbarName = "My Custom Tools"
-- Define the name of the button on the toolbar
local buttonName = "Create Basic Part"
-- Optional: A short description that appears on hover
local buttonTooltip = "Creates a simple unanchored Part in Workspace."
-- Optional: An Asset ID for the button's icon.
-- You can upload a small image (e.g., 32x32px) to Roblox and get its Asset ID.
-- For now, we'll leave it blank, or use a placeholder if you have one.
local buttonIconId = "" -- Example: "rbxassetid://YOUR_IMAGE_ID_HERE"

-- Create a new toolbar for your plugin if it doesn't already exist
local toolbar = plugin:CreateToolbar(toolbarName)

-- Create a button on the toolbar
local button = toolbar:CreateButton(
	buttonName,
	buttonTooltip,
	buttonIconId
)

-- Define the function that will run when the button is clicked
local function createPart()
	local newPart = Instance.new("Part") -- Create a new Part instance
	newPart.Name = "MyCreatedPart"      -- Set its name
	newPart.Size = Vector3.new(4, 4, 4) -- Set its size
	newPart.Position = Vector3.new(0, 5, 0) -- Set its position (in front of spawn, slightly up)
	newPart.BrickColor = BrickColor.random() -- Give it a random color
	newPart.Parent = workspace            -- Parent it to the Workspace to make it visible

	print("Plugin: Created a new part named '" .. newPart.Name .. "'!")
	-- You can also select the part after creation
	game:GetService("Selection"):Set({newPart})
end

-- Connect the function to the button's Click event
button.Click:Connect(createPart)

print("MyFirstPlugin: Plugin script loaded and button created!")
