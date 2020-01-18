package biz.aliustaoglu.rnp;

import android.content.Context;
import pl.bclogic.pulsator4droid.library.PulsatorLayout;


public class RNPulsatorView extends PulsatorLayout {


    public RNPulsatorView(Context context) {
        super(context);
        this.start();

    }

    @Override
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
    }

}
