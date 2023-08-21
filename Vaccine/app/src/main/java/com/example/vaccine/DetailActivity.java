package com.example.vaccine;

import androidx.appcompat.app.AppCompatActivity;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;

public class DetailActivity extends AppCompatActivity {

    protected Cursor cursor;
    DBHelper db;
    Button btn_simpan;
    TextView name, email, variant, location;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail);
        db = new DBHelper(this);
        name = findViewById(R.id.name);
        email = findViewById(R.id.email);
        variant = findViewById(R.id.variant);
        location = findViewById(R.id.location);

        SQLiteDatabase dbl = db.getReadableDatabase();
        cursor = dbl.rawQuery("SELECT * FROM history where name = '" +
                getIntent().getStringExtra("name")+"'", null);
        cursor.moveToFirst();
        if (cursor.getCount() > 0){
            cursor.moveToPosition(0);
            name.setText(cursor.getString(0).toString());
            email.setText(cursor.getString(1).toString());
            variant.setText(cursor.getString(2).toString());
            location.setText(cursor.getString(3).toString());
        }
    }
}