require_relative '../helpers/minitest_helper'
require_relative '../helpers/create_doe_prototype_helper'

class TestWarehouse < CreateDOEPrototypeBuildingTest
  building_types = ['Warehouse']
  templates = ['DOE Ref Pre-1980','DOE Ref 1980-2004','90.1-2007','90.1-2013']
  climate_zones = ['ASHRAE 169-2006-2A','ASHRAE 169-2006-3B','ASHRAE 169-2006-5A','ASHRAE 169-2006-8A']
  epw_files = ['USA_FL_Miami.Intl.AP.722020_TMY3.epw'] # not used for ASHRAE/DOE archetypes, but required for call
  create_models = true
  run_models = false
  compare_results = false
  debug = false
  TestWarehouse.create_run_model_tests(building_types, templates, climate_zones, epw_files, create_models, run_models, compare_results, debug)
end
