package com.converter;
import com.calatrava.CalatravaPage;
import com.calatrava.bridge.RegisteredActivity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import android.widget.TextView;
import android.util.Log;

import android.content.AbstractThreadedSyncAdapter;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;

import java.io.IOException;
import java.io.Reader;
import java.lang.String;
import java.lang.ThreadGroup;
import java.util.concurrent.CountDownLatch;
import com.calatrava.bridge.PageRegistry;

@CalatravaPage(name = "successPage")
public class SuccessPage extends RegisteredActivity
{

  public void onCreate(Bundle savedInstanceState)
  {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.form);
    PageRegistry.sharedRegistry().pageOnscreen(getPageName());
  }

  protected String getPageName() {
    return "successPage";
  }

  public void render(final String json) {
    Log.d(SuccessPage.class.getSimpleName(), "render page: " + getPageName());
    ((TextView)findViewById(R.id.result)).setText("json");
  }

  public String getFieldValue(String field){
    return "hello";
  }


}
