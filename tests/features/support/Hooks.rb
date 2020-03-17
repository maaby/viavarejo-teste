Before do
    
    @login = Login.new
    page.driver.browser.manage.window.maximize()

end

After do |scenario|
    
    time = Time.now.strftime('%Y_%m_%d_%Y_%H_%M_%S_')
    scenario_name = time + scenario.name.gsub(/\s+/,'_').tr('/','_').tr(',','').tr('(','').tr(')','').tr('#','')

    if scenario.failed?

        getScreenShoot(scenario_name.downcase!, 'Falhou')

        puts "#===========================================================#"
        puts "Scenario:: #{scenario.name}"
        puts "#===========================================================#"
        
    end

end

def getScreenShoot(nomeArquivo, resultado)

    caminhoArquivo = "results/screenShots/test#{resultado}"
    picture = "#{caminhoArquivo}/#{nomeArquivo}.png"
    page.save_screenshot(picture)
    embed(picture, 'image/png', 'Visualizar')

end
