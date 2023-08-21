package com.example.vaccine;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

public class Home extends AppCompatActivity {

    EditText inputName, inputEmail;
    RadioGroup radioGroup, radioGLoc;
    RadioButton radioButton, radioBLoc;
    Button confirmbtn;
    private TextInputLayout text_input_name;
    private TextInputLayout text_input_email;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        // validate name & email
        text_input_name = findViewById(R.id.text_input_name);
        text_input_email = findViewById(R.id.text_input_email);

        // for a setter and getter the value
        inputName = findViewById(R.id.textinputname);
        inputEmail = findViewById(R.id.textinputemail);
        radioGroup = findViewById(R.id.radio_vaccine);
        radioGLoc = findViewById(R.id.radio_location);
        confirmbtn = (Button) findViewById(R.id.confirm_btn);

        confirmbtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String layoutname = text_input_name.getEditText().getText().toString();
                String layoutemail = text_input_email.getEditText().getText().toString();
                String inputtextName = inputName.getText().toString();
                String inputtextEmail = inputEmail.getText().toString();

                int selectedId =radioGroup.getCheckedRadioButtonId();
                radioButton = (RadioButton)findViewById(selectedId);

                int locationId =radioGLoc.getCheckedRadioButtonId();
                radioBLoc = (RadioButton)findViewById(locationId);

                if (layoutname.isEmpty()||layoutemail.isEmpty()){
                    Toast.makeText(Home.this, "Please enter all the field", Toast.LENGTH_SHORT).show();
                    Intent stay = new Intent(getApplicationContext(), Home.class);
                    startActivity(stay);
                } else {
                    Intent intent = new Intent(getApplicationContext(), DetailForm.class);
                    intent.putExtra("Keyname", inputtextName);
                    intent.putExtra("Keyemail", inputtextEmail);
                    intent.putExtra("selectedId", radioButton.getText().toString());
                    intent.putExtra("locationId", radioBLoc.getText().toString());
                    startActivity(intent);
                }
            }
        });
    }
}