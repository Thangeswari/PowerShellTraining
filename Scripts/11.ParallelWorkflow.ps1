Workflow Test-Workflow3 {
    "This will run first"

    parallel {
        "Command 1"
        "Command 2"

        sequence {
            "Command A"
            "Command B"
        }
    }
}

Test-Workflow3