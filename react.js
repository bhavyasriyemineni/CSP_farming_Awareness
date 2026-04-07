import React from 'react';

class CounterDemo extends React. Component { state = {
count: 0
};

handleClick = e => {
const count = this.state.count; this.setState({ count: count + 1 });
};

render() { return (
<div>
<h1>Counter Demo - Class Components</h1>
<button id = "kpbtn" className = "block" onClick = {this. handleClick}>
<div className="counter"> {this. state. Count} </div>
</button>
</div>
);
}
}

export default CounterDemo;
 
