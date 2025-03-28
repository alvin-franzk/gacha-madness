-- currency.lua

local currencyModule = {}

-- Initialize player's currency
currencyModule.balance = 1000 -- Starting currency amount

-- Function to get the current balance
function currencyModule.getBalance()
    return currencyModule.balance
end

-- Function to add currency
function currencyModule.addCurrency(amount)
    currencyModule.balance = currencyModule.balance + amount
end

-- Function to deduct currency
function currencyModule.deductCurrency(amount)
    if amount <= currencyModule.balance then
        currencyModule.balance = currencyModule.balance - amount
        return true -- Deduction successful
    else
        return false -- Not enough currency
    end
end

return currencyModule