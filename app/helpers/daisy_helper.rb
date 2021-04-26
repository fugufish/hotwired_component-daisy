# frozen_string_literal: true

##
# Daisy components helper
module DaisyHelper
  ##
  # Daisy form builder
  class FormBuilder < ActionView::Helpers::FormBuilder
    def label(method, content_or_options = {}, options = {}, &block)
      content, options = extract_label_options(content_or_options, options)

      template.render(Daisy::Forms::LabelComponent.new(
        method:      method,
        object_name: object_name,
        options:     options,
        value:       content
      ), &block)
    end

    def text_field(method, options = {})
      template.render(Daisy::Forms::InputComponent.new(
        method:      method,
        object_name: object_name,
        object:      object,
        options:     options
      ))
    end

    def email_field(method, options = {})
      text_field(method, options.merge(type: "email"))
    end

    def password_field(method, options = {})
      text_field(method, options.merge(type: "password"))
    end

    def submit(value, options = {})
      template.render(Daisy::Forms::SubmitButtonComponent.new(
        value:   value,
        options: options
      ))
    end

    private

    attr_reader :template

    def extract_label_options(content_or_options, options)
      if content_or_options.is_a? String
        content = content_or_options
      else
        options = content_or_options
      end

      [content, options]
    end
  end

  def daisy_card(classes: nil, &block)
    card = Daisy::CardComponent.new(classes: classes, &block)
    yield card
    render(card)
  end

  ##
  # Custom Form With for Daisy forms
  def daisy_form_with(**args, &block)
    form_with(**args.merge(builder: FormBuilder), &block)
  end

  def daisy_form_for(model, options = {}, &block)
    form_for(model, options.merge(builder: FormBuilder), &block)
  end
end
