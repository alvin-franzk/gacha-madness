local playerCurrency = {}

-- Initialize player's currency
playerCurrency.balance = 5000 -- Starting currency amount

-- Function to get the current balance
function playerCurrency.getBalance()
    return playerCurrency.balance
end

-- Function to add currency
function playerCurrency.addCurrency(amount)
    playerCurrency.balance = playerCurrency.balance + amount
end

-- Function to deduct currency
function playerCurrency.deductCurrency(amount)
    if amount <= playerCurrency.balance then
        playerCurrency.balance = playerCurrency.balance - amount
        return true -- Deduction successful
    else
        return false -- Not enough currency
    end
end

return playerCurrency