class CreateCardDatabaseCards < ActiveRecord::Migration
  def change
    create_table :card_database_cards do |t|
      t.string :type
      t.references :hclass, index: true
      t.integer :cost
      t.integer :attack
      t.integer :defense
      t.integer :spell_damage_bonus
      t.integer :overload
      t.boolean :stealth
      t.boolean :divine_shield
      t.boolean :windfury
      t.boolean :targetable
      t.boolean :playable
      t.references :deathrattle
      t.references :battlecry
      t.references :action_on_summon
      t.references :action_on_spellcast
      t.references :action_on_take_damage
      t.references :action_on_deal_damage
      t.references :action_on_minion_death
      t.references :action_on_friendly_minion_death
      t.references :action_on_friendly_minion_take_damage
      t.references :action_on_character_heal
      t.references :action_on_cast
      t.references :action_on_overload
      t.references :action_at_eot
      t.references :action_on_minion_heal
      t.references :combo
      t.references :enrage
      t.references :adjacent

      t.timestamps
    end
  end
end
