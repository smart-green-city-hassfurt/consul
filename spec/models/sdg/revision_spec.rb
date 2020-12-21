require "rails_helper"

describe SDG::Revision do
  describe "Validations" do
    it "is valid" do
      revision = build(:sdg_revision, :debate_as_relatable)

      expect(revision).to be_valid
    end

    it "is not valid without a relatable" do
      revision = build(:sdg_revision, relatable: nil)

      expect(revision).not_to be_valid
    end

    it "is not valid without the revised_at" do
      revision = build(:sdg_revision, :poll_as_relatable, revised_at: nil)

      expect(revision).not_to be_valid
    end

    it "is not valid when a revision for given relatable already exists" do
      relatable = create(:sdg_revision, :proposal_as_relatable).relatable

      expect(build(:sdg_revision, relatable: relatable)).not_to be_valid
    end
  end
end
