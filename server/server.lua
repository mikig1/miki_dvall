


RegisterCommand(Config.commandName, function(source, args, rawCommand) 
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.2vw;"> {0}<br> {1}<br> {2}<br></div>',
          args = { '^3[MIKI BRISANJE VOZILA]^0', '^0Vozila ce biti ^8obrisana ^0za 10 sekundi!', '^0Udjite u svoja vozila da se ^8ne bi obrisala!^0'}
        })

    Wait(10000)

    TriggerClientEvent("wld:delallveh", -1) 

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.2vw;"> {0}<br> {1}<br> {2}<br></div>',
          args = { '^3[MIKI VOZILA OBRISANA]^0', '^0Sva vozila su ^4obrisana!', ""}
        })
end, Config.restricCommand)
