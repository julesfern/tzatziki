require File.dirname(__FILE__) + '/spec_helper'

describe Tzatziki::Site do

  before :each do 
    @site = get_test_site
  end

  it "should report ./ as the relative path from the site root"
  it "should use the in-gem layouts if no _layouts folder is present"
  it "should use the local layouts if a _layouts folder is present"
  
  it "should include the built-in specifications"
  it "should include the built-in data types"
  it "should allow local specifications to override the built-in ones"
  it "should allow local types to override the built-in ones"
  
  it "should provide a task for freezing the built-in specifications into a local folder"
  it "should provide a task for freezing the built-in types into a local folder"

  describe "initialization" do
    
    it "should read the config file" do
      @site.read_config
      @site.config["api_key"].should == "FOOOOOBAAAAAAAR"
      @site.config["api_token"].should == "RHUUUUUBAAAAARRRB"
    end
    
    it "should include the config file in the site payload"
        
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