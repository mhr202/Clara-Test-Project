import { Controller } from "@hotwired/stimulus"
import { load } from "../load"

export default class extends Controller {
  static targets = ['nodeCount', 'linkCount']
  static values = {id: Number}

  connect = () => {
    if (this.idValue) {
      load(this.idValue).then(data => {
        this.updateCounts(data.nodes.length, data.links.length)
      }).catch(error => {
        console.error(error)
      })
    }
    else {
      // console.error("No Id was passed")
    }
  }
  
  updateCounts = (nodeCount, linkCount) => {
    this.nodeCountTarget.textContent = nodeCount
    this.linkCountTarget.textContent = linkCount
  }
}
