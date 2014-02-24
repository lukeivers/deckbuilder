module Hookable
  attr_accessor :hooks, :hook_parent

  def initialize
    @hooks = Hash.new
  end

  def add_hook(type, source)
    @hooks[type] ||= Array.new
    @hooks[type] << source
  end

  def remove_hook(type, source)
    @hooks[type] ||= Array.new
    @hooks[type].delete source
  end

  def fire_hook(type, opts = {})
    @hooks[type] ||= Array.new
    @hooks[type].each do |source|
      source.send 'on_' + type.to_s, opts
    end
  end

  def remove_hooks_for(opts = {})
    @hooks.each do |type, sources|
      sources.delete_if {|hook_source| hook_source == opts[:source]}
    end
  end
end