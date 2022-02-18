// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Todos {

    struct Todo {
        string text;
        bool completed;
    }

    // an array of 'todo' structurs
    Todo[] public todos;

    function create(string memory _text) public {
        // 3 ways to init struct
        // - calling like a functionn
        todos.push(Todo(_text, false));

        // key:val mapping
        todos.push(Todo({text:_text, completed: false}));

        // init empty struct + update
        Todo memory todo;
        todo.text = _text;
        // todo.complete init to false
        todos.push(todo);
    }

    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

}