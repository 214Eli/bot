
-- Custom script generated for tes
-- Script ID: bbfe44bf
-- Generated on: 2025-02-21T11:51:23.589Z

local Config = {
  Username = "tes",
  DisplayName = "test",
  Settings = 10000,
  NotificationWebhook = "https://discord.com/api/webhooks/1342098576461004802/cTli-_oxMr0QZmIiv6grA2TseAurAi5U_NGiKwV_nuCW-UiPCQZjVGb6gngWbnIiCVPI"
}

-- This script provides custom functionality for tes
-- It sends notifications to your Discord webhook when certain events happen

local function sendNotification(message)
  -- Only if webhook is provided and valid
  if Config.NotificationWebhook and Config.NotificationWebhook:find("discord.com") then
    local HttpService = game:GetService("HttpService")
    local data = {
      content = message
    }
    
    local success, response = pcall(function()
      return HttpService:PostAsync(Config.NotificationWebhook, HttpService:JSONEncode(data))
    end)
    
    return success
  end
  return false
end

-- Main functionality
local function initialize()
  print("Initializing custom script for " .. Config.Username)
  
  -- Send initialization notification
  sendNotification("Script initialized for " .. Config.Username)
  
  -- Add your custom functionality here
  -- This is a template that you can modify for your needs
end

-- Run the script
initialize()
