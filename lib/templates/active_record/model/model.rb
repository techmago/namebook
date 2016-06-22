<% module_namespacing do -%>
class <%= class_name %> < <%= parent_class_name.classify %>
  # ============ Relações ============================================================
<% attributes.select(&:reference?).each do |attribute| -%>
  belongs_to :<%= attribute.name %><%= ', polymorphic: true' if attribute.polymorphic? %><%= ', required: true' if attribute.required? %>
<% end -%>
<% if attributes.any?(&:password_digest?) -%>
  has_secure_password
<% end -%>
  # ============ Validações ==========================================================
  # ============ Métodos =============================================================
  #def to_s
  #  nome
  #end
end
<% end -%>
