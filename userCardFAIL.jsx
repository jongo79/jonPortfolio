// UserCard.js
import React from 'react';

const UserCard = ({ name, email }) => {
  return (
    <div className="user-card">
      <p><strong>Name:</strong> {name}</p>
      <p><strong>Email:</strong> {email}</p>
    </div>
  );
};

export default UserCard;
