import { BridgeComponent } from "@hotwired/hotwire-native-bridge"

// Connects to data-controller="bridge--button"
export default class extends BridgeComponent {
  static component = "button"

  connect() {
    super.connect()

    const title = this.bridgeElement.bridgeAttribute("title")
    const imageName = this.bridgeElement.bridgeAttribute("image-name")
    const style = this.bridgeElement.bridgeAttribute("style")

    this.send("connect", { title, imageName, style }, () => {
      this.bridgeElement.click()
    })
  }

  disconnect() {
    super.disconnect()

    this.send("disconnect")
  }
}
