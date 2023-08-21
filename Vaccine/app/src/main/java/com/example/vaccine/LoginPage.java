package com.example.vaccine;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class LoginPage extends AppCompatActivity {
    Button btnlogin;
    EditText username, password;
    DBHelper DB;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login_page);

        username = findViewById(R.id.usernameL);
        password = findViewById(R.id.paswordL);
        btnlogin = (Button) findViewById(R.id.btnlogin);
        DB = new DBHelper(this);

        btnlogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String user = username.getText().toString();
                String pass = password.getText().toString();

                if (user.isEmpty()||pass.isEmpty())
                    Toast.makeText(LoginPage.this, "Please Enter all the Field", Toast.LENGTH_SHORT).show();
                else{
                    Boolean checkuserpass =DB.checkusernamepassword(user, pass);
                    if (checkuserpass==true){
                        Toast.makeText(LoginPage.this, "Login Successfull", Toast.LENGTH_SHORT).show();
                        Intent intent = new Intent(getApplicationContext(), HomeIS.class);
                        startActivity(intent);
                    }else {
                        Toast.makeText(LoginPage.this, "Invalid Username or Password", Toast.LENGTH_SHORT).show();
                    }
                }
            }
        });
    }
}