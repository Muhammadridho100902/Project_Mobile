package com.example.vaccine;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.google.android.material.textfield.TextInputLayout;

public class DetailForm extends AppCompatActivity {

    protected Cursor cursor;
    EditText input_name, input_email, input_vaccine, input_location;
    Button btnsave;
    TextInputLayout textinputname, textinputemail, textinputvaccine, textinputlocation;
    DBHelper DB;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_form);

        // for get the value from form
        input_name = findViewById(R.id.input_name);
        input_email = findViewById(R.id.input_email);
        input_vaccine = findViewById(R.id.input_vaccine);
        input_location = findViewById(R.id.input_location);

        String username =getIntent().getStringExtra("Keyname");
        String email = getIntent().getStringExtra("Keyemail");
        String vaccine = getIntent().getExtras().getString("selectedId");
        String location = getIntent().getExtras().getString("locationId");

        input_name.setText(username);
        input_email.setText(email);
        input_vaccine.setText(vaccine);
        input_location.setText(location);
        //

        textinputname = findViewById(R.id.textinputname);
        textinputemail = findViewById(R.id.textinputemail);
        textinputvaccine = findViewById(R.id.textinputvaccine);
        textinputlocation = findViewById(R.id.textinputlocation);
        DB =new DBHelper(this);

        btnsave = (Button) findViewById(R.id.btnsave);

//        SQLiteDatabase dbl = DB.getReadableDatabase();
//        cursor = dbl.rawQuery("SELECT * FROM history where name = '" +
//                getIntent().getStringExtra("name")+"'", null);
//        cursor.moveToFirst();
//        if (cursor.getCount() > 0){
//            cursor.moveToPosition(0);
//            input_name.setText(cursor.getString(0).toString());
//            input_email.setText(cursor.getString(1).toString());
//            input_vaccine.setText(cursor.getString(2).toString());
//            input_location.setText(cursor.getString(3).toString());
//        }

        btnsave.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name = textinputname.getEditText().getText().toString();
                String email = textinputemail.getEditText().getText().toString();
                String vaccine = textinputvaccine.getEditText().getText().toString();
                String location = textinputlocation.getEditText().getText().toString();

                if (name.isEmpty()||email.isEmpty()||vaccine.isEmpty()||location.isEmpty())
                    Toast.makeText(DetailForm.this, "Please Enter all the field", Toast.LENGTH_SHORT).show();
                else{
                    Boolean insert =DB.insertDataForm(name, email, vaccine, location);
                    if (insert==true){
                        Toast.makeText(DetailForm.this, "Data berhasil di Simpan", Toast.LENGTH_SHORT).show();
                        showdata.ma.RefreshList();
                        finish();
//                        Intent intent = new Intent(getApplicationContext(), successform.class);
//                        startActivity(intent);
                    } else
                        Toast.makeText(DetailForm.this, "please check all the field", Toast.LENGTH_SHORT).show();
                        Intent intent = new Intent(getApplicationContext(), successform.class);
                        startActivity(intent);
                }
            }
        });
    }
}