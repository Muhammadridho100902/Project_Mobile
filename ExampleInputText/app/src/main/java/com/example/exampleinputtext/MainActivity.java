package com.example.exampleinputtext;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

import com.google.android.material.textfield.TextInputLayout;

public class MainActivity extends AppCompatActivity {
    private TextInputLayout textInputEmail;
    private TextInputLayout textInputUsername;
    private TextInputLayout textInputPassword;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        textInputEmail = findViewById(R.id.text_input_email);
        textInputUsername = findViewById(R.id.text_input_username);
        textInputPassword = findViewById(R.id.text_input_password);
    }

    private Boolean validateEmail(){
        String emailInput = textInputEmail.getEditText().getText().toString();

        if (emailInput.isEmpty()) {
            textInputEmail.setError("Field Can't be empty");
            return false;

        } else {
            textInputEmail.setError(null);
            return true;
        }
    }

    private Boolean validateUsername(){
        String usernameInput = textInputUsername.getEditText().getText().toString();

        if(usernameInput.isEmpty()) {
            textInputUsername.setError("Field Can't be empty");
            return false;

        } else if (usernameInput.length() > 15) {
            textInputUsername.setError("Username too long");
            return false;
        } else{
            textInputUsername.setError(null);
            return true;
        }
    }

    private Boolean validatePassword(){
        String passwordInput = textInputPassword.getEditText().getText().toString();

        if (passwordInput.isEmpty()) {
            textInputPassword.setError("Field Can't be empty");
            return false;

        } else {
            textInputEmail.setError(null);
            textInputPassword.setErrorEnabled(false);
            Toast.makeText(this, "Your data has been input", Toast.LENGTH_SHORT).show();
            return true;
        }
    }

    public void confirmInput(View v){
        if (!validateEmail() | !validateUsername() | !validatePassword()) {
            return;

        }
        }
    }