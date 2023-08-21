package com.example.vaccine;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class SignupPage extends AppCompatActivity {

    EditText username, email, password;
    Button insert;
    DBHelper DB;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup_page);

        username = findViewById(R.id.username);
        email = findViewById(R.id.email);
        password = findViewById(R.id.password);
        insert = findViewById(R.id.registbtn);
        DB = new DBHelper(this);

        insert.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String usernameTXT = username.getText().toString();
                String emailTXT = email.getText().toString();
                String passwordTXT = password.getText().toString();

                if (usernameTXT.isEmpty()||emailTXT.isEmpty()||passwordTXT.isEmpty())
                    Toast.makeText(SignupPage.this, "Please Fill all the Field", Toast.LENGTH_SHORT).show();
                else{
                    Boolean checkuser = DB.checkusername(usernameTXT);
                    if (checkuser==false){
                        Boolean insert = DB.insertData(usernameTXT,emailTXT, passwordTXT);
                        if (insert==true){
                            Toast.makeText(SignupPage.this, "Registered Successfully", Toast.LENGTH_SHORT).show();
                            Intent intent = new Intent(getApplicationContext(), successregist.class);
                            startActivity(intent);
                        } else{
                            Toast.makeText(SignupPage.this, "Registration Failed", Toast.LENGTH_SHORT).show();
                            Intent intent = new Intent(getApplicationContext(), SignupPage.class);
                            startActivity(intent);
                        }
                    }
                }
            }
        });
    }
}