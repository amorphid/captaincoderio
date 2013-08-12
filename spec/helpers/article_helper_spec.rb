require "spec_helper"

describe "ArtcileHelper" do
  context "#normalize_title" do
    let(:str_a) { "It's the one that says 'Bad M@#$%^ F&*!@`'" }
    let(:str_b) { "This post_title is rather bland.  Sorry :P" }
    let(:str_c) { "I'm going to enjoy watching you die, Mr. Anderson." }
    let(:str_d) { "needs fewer--------hyphens            and spaces  " }


    it "should normalize str_a" do
      normalized = normalize_title(str_a)

      expect(normalized).to eq("its-the-one-that-says-bad-m-f")
    end

    it "should normalize str_b" do
      normalized = normalize_title(str_b)

      expect(normalized).to eq("this-post_title-is-rather-bland-sorry-p")
    end

    it "should normalize str_c" do
      normalized = normalize_title(str_c)

      expect(normalized).to eq(
        "im-going-to-enjoy-watching-you-die-mr-anderson"
      )
    end

    it "should normalize str_d" do
      normalized = normalize_title(str_d)

      expect(normalized).to eq("needs-fewer-hyphens-and-spaces")
    end
  end

  context "#normailze_string" do
    it "should normalize 'F'" do
      normalized = normalize_character("F")

      expect(normalized).to eq("f")
    end

    it "should normalize 'c'" do
      normalized = normalize_character("c")

      expect(normalized).to eq("c")
    end

    it "should normalize '4'" do
      normalized = normalize_character("4")

      expect(normalized).to eq("4")
    end

    it "should normalize '-'" do
      normalized = normalize_character("-")

      expect(normalized).to eq("-")
    end

    it "should normalize '_'" do
      normalized = normalize_character("_")

      expect(normalized).to eq("_")
    end

    it "should normalize '~'" do
      normalized = normalize_character("~")

      expect(normalized).to eq("")
    end

    it "should normalize '.'" do
      normalized = normalize_character(".")

      expect(normalized).to eq("")
    end

    it "should normalize '$'" do
      normalized = normalize_character("$")

      expect(normalized).to eq("")
    end

    it "should normalize '|'" do
      normalized = normalize_character("|")

      expect(normalized).to eq("")
    end

    it "should normalize '\\'" do
      normalized = normalize_character("\\")

      expect(normalized).to eq("")
    end
  end
end
