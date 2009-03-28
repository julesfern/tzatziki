require File.dirname(__FILE__) + '/spec_helper'

describe Tzatziki::Site do

  before :each do 
    @site = get_test_site
  end

  describe "initialization" do
    
    it "should read the config file and include it in the site payload" do
      @site.read_config
      @site.config["api_key"].should == "FOOOOOBAAAAAAAR"
      @site.config["api_token"].should == "RHUUUUUBAAAAARRRB"
    end
    
    it "should read all the layouts" do
      @site.read_layouts
      @site.layouts["default"].should be_kind_of(Jekyll::Layout)
      @site.layouts["thingy"].should be_nil
    end
      
    # - root
    # - _templates
    # - _types
    # - _specifications
    # - _apis    
    # --- api_name
    # ------ _types
    # ------ _specifications
    # ------ index.markdown
    # ------ search.markdown
    # ------ another_api
    # --------- index.markdown
    # --------- _types
    
  end
  
end