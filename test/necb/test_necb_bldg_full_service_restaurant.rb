require_relative '../helpers/minitest_helper'
require_relative '../helpers/create_doe_prototype_helper'
require_relative '../helpers/compare_models_helper'
require_relative './regression_helper'

class TestNECBFullServiceRestaurant < Minitest::Test

  def test_necb2011_full_service_restaurant()
    result, msg = create_model_and_regression_test('FullServiceRestaurant',
                                                   'CAN_AB_Calgary.Intl.AP.718770_CWEC2016.epw',
                                                   'NECB 2011'
    )
    assert(result, msg)
  end

end
