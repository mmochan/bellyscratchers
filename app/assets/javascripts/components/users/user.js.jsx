var User = React.createClass({
  render: function () {
    console.log(this.props.user_data);

    var rows = this.props.user_data.map(function(user) {
      return <UserRow key={user.id} data={user} />
    })
    return  (
      <div>
        <nav className="top-bar" data-topbar role="navigation">
          <ul className="title-area">
            <li className="name">
              <h1><a href="#"><strong>S</strong></a></h1>
            </li>
            <li className="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
          </ul>
          <section className="top-bar-section">
          FooBar
          </section>
        </nav>

        <table>
          <thead>
            <th>Id</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>description</th>
          </thead>
          <tbody>
            {rows}
          </tbody>
        </table> 
      </div>
      )
  }
});

var UserRow = React.createClass({
  render: function() {
    return (
      <tr>
        <td>{this.props.data.id}</td>
        <td>{this.props.data.first_name}</td>
        <td>{this.props.data.last_name}</td>
        <td>{this.props.data.email}</td>
        <td>{this.props.data.description}</td>
      </tr>
    )
  }
});