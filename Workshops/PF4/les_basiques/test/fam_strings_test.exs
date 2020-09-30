defmodule FamStringsTest do
    use ExUnit.Case
    doctest FamStrings
  
    test "salutation" do
      assert FamStrings.salutation() == "Bonjour, Monde !!!"
    end

    test "salutation avec param" do
      assert FamStrings.salutation_plus_param("Alexa") == "Bonjour, Alexa !!!"
    end

    test "salutation sans param" do
      assert FamStrings.salutation_plus_param() == "Bonjour, Zura !!!"
    end

    test "salutation avec param 2" do
      assert FamStrings.salutation_plus_param2("Thania") == "Bonjour, Thania !!!"
    end
  end