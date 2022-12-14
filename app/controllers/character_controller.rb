# frozen_string_literal: true

class CharacterController < BaseAuthController
  def list
    @characters = Player.where(id: session[:user_id])[0].characters_lists
    pp params
  end

  def new

  end

  def save_edit

  end

  def edit_char
    return render status: :bad_request unless @current_user.characters_lists.ids.include?(params[:id].to_i)
    @character = CharactersList.find_by_id(params[:id].to_i)
    @character_characteristics = CharacterCharacteristics.where(character_id: @character.id)[0]
    @character_throws = CharacterSavingThrow.where(character_id: @character.id)[0]
    @character_perks = CharacterPerks.where(character_id: @character.id)[0]

    pp @character_throws
  end

  def create
    pp params

    par = params.require(:character_list_characteristics).permit(
      :character_name,
      :background,
      :race,
      :alignment,
      :exp,
      :lvl,
      :current_hp,
      :inspiration,
      :armor_class,
      :initiative,
      :speed,
      :max_hp,
      :temporary_hp,
      :money,

      :strength_throws,
      :dexterity_throws,
      :constitution_throws,
      :intelligence_throws,
      :wisdom_throws,
      :charisma_throws,
      :proficiency_bonus,

      :strength,
      :dexterity,
      :constitution,
      :intelligence,
      :wisdom,
      :charisma,

      :acrobatics,
      :animal_handling,
      :arcana,
      :athletics,
      :deception,
      :history,
      :insight,
      :intimidation,
      :investigation,
      :medicine,
      :nature,
      :perception,
      :performance,
      :persuasion,
      :religion,
      :sleight_of_hand,
      :stealth,
      :survival
    )

    character = CharactersList.new(
      player_id: session[:user_id],
      character_name: par[:character_name],
      background: par[:background],
      race: par[:race],
      alignment: par[:alignment],
      exp: par[:exp],
      lvl: par[:lvl],
      current_hp: par[:current_hp],
      inspiration: !!par[:inspiration],
      armor_class: par[:armor_class],
      initiative: par[:initiative],
      speed: par[:speed],
      max_hp: par[:max_hp],
      temporary_hp: par[:temporary_hp],
      money: par[:money]
    )

    unless character.save
      pp "character"
      pp character.errors.full_messages
    end

    id = character.id

    pp par
    cst = CharacterSavingThrow.new(
      character_id: id,
      strength: (par[:strength_throws] == "1"),
      dexterity: (par[:dexterity_throws] == "1"),
      constitution: (par[:constitution_throws] == "1"),
      intelligence: (par[:intelligence_throws] == "1"),
      wisdom: (par[:wisdom_throws] == "1"),
      charisma: (par[:charisma_throws] == "1")
    )

    pp cst
    pp cst.valid?

    unless cst.save
      pp "cst"
      pp cst.errors.full_messages
    end

    cc = CharacterCharacteristics.new(
      character_id: id,
      proficiency_bonus: par[:proficiency_bonus],
      strength: par[:strength],
      dexterity: par[:dexterity],
      constitution: par[:constitution],
      intelligence: par[:intelligence],
      wisdom: par[:wisdom],
      charisma: par[:charisma]
    )

    unless cc.save
      pp "cc"
      pp cc.errors.full_messages
    end

    cp = CharacterPerks.new(
      character_id: id,
      acrobatics: par[:acrobatics],
      animal_handling: par[:animal_handling],
      arcana: par[:arcana],
      athletics: par[:athletics],
      deception: par[:deception],
      history: par[:history],
      insight: par[:insight],
      intimidation: par[:intimidation],
      investigation: par[:investigation],
      medicine: par[:medicine],
      nature: par[:nature],
      perception: par[:perception],
      performance: par[:performance],
      persuasion: par[:persuasion],
      religion: par[:religion],
      sleight_of_hand: par[:sleight_of_hand],
      stealth: par[:stealth],
      survival: par[:survival]
    )
    unless cp.save
      pp "cp"
      pp cp.errors.full_messages
    end
    redirect_to character_list_path
  end

end