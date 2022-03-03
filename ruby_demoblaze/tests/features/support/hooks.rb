World(Helper)

After '@deslogar_conta' do 
    #click_link("logout2")
    pagina_principal.deslogar
    sleep(2)
end

# depois de cada cenario ele tira um print e remove todos os espacos e virgulas

After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
    scenario_name = scenario.name.delete(',', '')
    scenario_name = scenario.name.delete('(', '')
    scenario_name = scenario.name.delete(')', '')
    scenario_name = scenario.name.delete('#', '')

    # Se o cenario passar ele vai chamar o metodo take passando dois
    # parametros o nome do senario com o nome minusculo e o resultado
    if scenario.failed?
        take_screenshot(scenario_name.downcase!, 'failed')
    else
        take_screenshot(scenario_name.downcase!, 'passed')
    end
end
