require "spec_helper"

describe Lumos::SurroundMessage do
  context "arguments" do
    it "returns wrapped message" do
      expect(described_class.new(message: "Defodio").message).to eq("###########\n#         #\n# Defodio #\n#         #\n###########")
    end

    it "returns delimiter message" do
      expect(described_class.new(message: "Deletrius", delimiter: "❤").message).to eq("❤❤❤❤❤❤❤❤❤❤❤❤❤\n❤           ❤\n❤ Deletrius ❤\n❤           ❤\n❤❤❤❤❤❤❤❤❤❤❤❤❤")
    end

    it "returns 2-digits padding message" do
      expect(described_class.new(message: "Densaugeo", padding: 2).message).to eq("###############\n#             #\n#             #\n#  Densaugeo  #\n#             #\n#             #\n###############")
    end

    it "returns multiline message" do
      expect(described_class.new(message: "Coffee has long had a reputation as being unhealthy. But in almost every single respect that reputation is backward. The potential health benefits are surprisingly large.").message).to eq("Real case here")
    end
  end

  context "self methods" do
    it "returns delimiter line" do
      expect(described_class.new(message: "Deprimo").line).to eq("###########")
    end

    it "returns offset" do
      expect(described_class.new(message: "Diffindo").offset).to eq("#          #\n")
    end

    it "returns body" do
      expect(described_class.new(message: "Dissendium").body).to eq("# Dissendium #")
    end
  end
end
