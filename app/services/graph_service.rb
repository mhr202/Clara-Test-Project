# app/services/graph_service.rb
class GraphService < ApplicationService
  require 'json'

  def initialize(id)
    @graph = id
    @payload = {}
  end

  def perform
    json_payload
  end

  private

  def json_payload
    get_graph_data
    generate_payload
    JSON.pretty_generate(@payload)
  end

  def get_graph_data
    @curr_graph = Graph.find_by_id(@graph)
  end

  def generate_payload
    @payload.merge!("nodes": nodes_to_json)
    @payload.merge!("links": links_to_json)
  end

  def nodes_to_json
    arr = []
    @curr_graph.nodes.each do |node|
      arr.append(node.as_json(except: [:created_at, :updated_at]).merge!("adjacentNodeIds": adjacent_nodes(node)))
    end
    arr
  end

  def adjacent_nodes(node)
    (node.incoming_links.map { |incoming| incoming.id } + node.outgoing_links.map { |incoming| incoming.id }).uniq
  end

  def links_to_json()
    @curr_graph.links.as_json(except: [:created_at, :updated_at])
  end
end