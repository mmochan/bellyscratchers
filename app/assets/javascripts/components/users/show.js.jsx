var Show = React.createClass({
  render: function() {
    console.log(this.props);
    return (
      <div>
        <h4>{this.props.user.first_name }</h4>
        <h4>{this.props.user.last_name }</h4>
      </div>
    );
  }
});