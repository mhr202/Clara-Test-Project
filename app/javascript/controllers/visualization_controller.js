import { Controller } from "@hotwired/stimulus"
import { load } from "../load"

export default class extends Controller {
  static targets = ['nodeCount', 'linkCount','isLoaded','preLoader']
  static values = { id: Number }

  connect = async () => {
    this.isLoadedTarget.hidden = true
    if (this.idValue) {
      await load(this.idValue).then(data => {
        this.updateCounts(data.nodes.length, data.links.length)
      }).catch(error => {
        console.error(error)
      })
      this.preLoaderTarget.hidden = true
      this.isLoadedTarget.hidden = false
    }
    else {
      console.error("No Id was passed")
    }
  }
  
  updateCounts = (nodeCount, linkCount) => {
    this.nodeCountTarget.textContent = nodeCount
    this.linkCountTarget.textContent = linkCount
  }
}
