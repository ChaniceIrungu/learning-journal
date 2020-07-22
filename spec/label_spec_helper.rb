# frozen_string_literal: true

def create_glossary_entry_with_label(glossary, label)
  click_link 'Glossary'
  click_link 'Create new entry'
  fill_in_glossary_form_with_label(glossary.term, glossary.definition, label.name)
  click_button 'Add entry'
end

# def edit_glossary_entry(new_glossary)
#   click_link 'Edit'
#   fill_in_glossary_form(new_glossary.term, new_glossary.definition)
#   click_button 'Update entry'
# end

def fill_in_glossary_form_with_label(term, definition, label_name)
  fill_in 'Term', with: term
  fill_in 'Definition', with: definition
  fill_in 'Label', with: label_name
end