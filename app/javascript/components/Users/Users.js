import React, { useState, useEffect, Fragment } from 'react'
import axios from 'axios'

const Users = () => {
  const [users, setUsers] = useState([])

  useEffect(() => {
    axios.get('/api/v1/users.json')
      .then( resp => {
        setUsers(resp.data.data)
      })
      .catch( resp => console.log(resp) )
  }, [users.length])


  const list = users.map( item => {
    return (<li key={item.attributes.name}>{item.attributes.name}</li>)
  } )

  return (
    <div className="home">
      <div className="header">
        <h1>Improve My Emissions</h1>
        <div className="subheader">Users</div>
      </div>
      <div className="grid">
        <ul>{list}</ul>
      </div>
    </div>
  )
}

export default Users
