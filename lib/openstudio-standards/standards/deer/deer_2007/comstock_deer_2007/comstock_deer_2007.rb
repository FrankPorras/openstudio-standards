# This class holds methods that apply DEER 2007
# to a given model.
# @ref [References::DEERMASControl]
class ComStockDEER2007 < DEER2007
  @@template = 'ComStock DEER 2007' # rubocop:disable Style/ClassVars
  register_standard @@template
  attr_reader :template

  def initialize
    super()
    @template = @@template
    load_standards_database
  end
end
