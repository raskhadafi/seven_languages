#!/bin/bash ruby

# Day 2 Self-study

puts "Excercise 3"
###################
# The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface.
# Let the initializer accept a nested structure of hashes.
# You should be able to specify a tree like this:
#               {’grandpa’ =>
#                      {
#                        ’dad’ =>   {’child 1’ => {}, ’child 2’ => {} },
#                        ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }.
class Tree

  attr_accessor :children, :name

  def initialize(nodes = {})
    @children = []

    nodes.each do |k, v|
      @name = k
      v.each do |k, v|
        @children << Tree.new({k => v})
      end unless v.empty?
    end
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

tree = Tree.new({'grandpa' =>
                      {
                        'dad' =>   {'child 1' => {}, 'child 2' => {} },
                        'uncle' => {'child 3' => {}, 'child 4' => {} } } })

puts "Visiting a node"
tree.visit {|node| puts node.name}
puts
tree.visit_all {|node| puts node.name}
puts
