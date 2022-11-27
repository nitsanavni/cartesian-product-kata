def product:
    .;

def tests:
    [
        {   
            name: "single input value",
            input: ["0"],
            expectedOutput: ["0"]
        },
        {   
            name: "two input arrays",
            input: [
                "0 1",
                "0 1"
            ],
            expectedOutput: [
                "0 0",
                "0 1",
                "1 0",
                "1 1"
            ]
        }
    ];

tests |
map(
    . as $test |
    $test.input |
    product | 
    "test '" + $test.name + "' " +
        (if . != $test.expectedOutput
        then "failed, received: " + (.|tostring)
        else "passed"
        end)
    )