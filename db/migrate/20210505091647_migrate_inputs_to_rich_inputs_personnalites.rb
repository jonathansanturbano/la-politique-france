class MigrateInputsToRichInputsPersonnalites < ActiveRecord::Migration[6.0]
  def up
    Personnalite.find_each do |personnalite|
      personnalite.update(rich_resume: personnalite.resume, rich_propositions: personnalite.propositions)
    end
  end

  def down
    Personnalite.find_each do |personnalite|
      personnalite.update(resume: personnalite.rich_resume, propositions: rich_propositions)
      personnalite.update(rich_resume: nil, rich_propositions: nil)
    end
  end
end
