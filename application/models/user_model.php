<?php


class User_model extends CI_Model {

    public function create_user() {

        $options = ['cost' => 12]; //Number of times that the function is executing - the bigger the better.

        $encripted_pass = password_hash($this->input->post('password'), PASSWORD_BCRYPT, $options); //This function will create an automatic salt

        $data = array(

            'first_name' => $this->input->post('first_name'),
            'last_name'  => $this->input->post('last_name'),
            'email'      => $this->input->post('email'),
            'username'   => $this->input->post('username'),
            'password'   => $encripted_pass

        );

        $insert_data = $this->db->insert('users', $data);

        return $insert_data;
    }

    public function login_user($username, $password) {

        $this->db->where('username', $username);

        $result      = $this->db->get('users');
        $db_password = $result->row(2)->password; //Bringing out the password from the Database and assigning to a variable db_password

        if(password_verify($password, $db_password)) { //password_verify is a PHP function that makes sure the both passwords are equal.
            return $result->row(0)->id;
        }

        return false;
    }
}