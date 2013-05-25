package com.converter;
import com.calatrava.CalatravaPage;
import com.calatrava.bridge.RegisteredActivity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@CalatravaPage(name = "successPage")
public class SuccessPage extends RegisteredActivity
{

  @Override
  public void onCreate(Bundle savedInstanceState)
  {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.form);
  }

  @Override
  protected String getPageName() {
    return "successPage";
  }

  @Override
  public void render(final String json) {
  }

  @Override
  public String getFieldValue(String field){
    return "hello";
  }


}
