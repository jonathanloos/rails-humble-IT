import {Controller} from "stimulus"

export default class extends Controller {
    static targets = ["status", "category", "priority", "assignee", "requester", "search", "order"]

    initialize() {
        // console.log("Stimulus at your service!")
    }

    connect() {
        // this.outputTarget.textContent = 'Hello, Stimulus!'
        // console.log('connected!')
    }

    get status() {
        return this.statusTarget.value
    }

    get category() {
        return this.categoryTarget.value
    }

    get priority() {
        return this.priorityTarget.value
    }

    get assignee() {
        return this.assigneeTarget.value
    }

    get requester() {
        return this.requesterTarget.value
    }

    get search() {
        return this.searchTarget.value
    }

    get order() {
        return this.orderTarget.value
    }

    reloadUrl() {
        var params = [];
        console.log("HERERE");
        if (this.status != "") {
            params.push(`status=${this.status}`)
        }
        if (this.category != "") {
            params.push(`category=${this.category}`)
        }
        if (this.priority != "") {
            params.push(`priority=${this.priority}`)
        }
        if (this.assignee != "") {
            params.push(`assignee=${this.assignee}`)
        }
        if (this.requester != "") {
            params.push(`requester=${this.requester}`)
        }
        if (this.search != "") {
            params.push(`search=${this.search}`)
        }
        if (this.order != "") {
            params.push(`order=${this.order}`)
        }

        location.href = '?' + params.join('&')
    }
}
