package biz.aliustaoglu.rnp;

import android.graphics.Color;

import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactProp;

import javax.annotation.Nullable;

public class RNPReactNativePulsatorManager extends ViewGroupManager<RNPulsatorView> {

    public static final String REACT_CLASS = "RNPReactNativePulsator";

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    public RNPulsatorView createViewInstance(ThemedReactContext c) {
        RNPulsatorView rnPulsatorView = new RNPulsatorView(c);
        return rnPulsatorView;
    }

    @ReactProp(name = "color")
    public void setColor(RNPulsatorView rnPulsatorView, @Nullable String color){
        rnPulsatorView.setColor(Color.parseColor(color));
    }

    @ReactProp(name = "numPulse")
    public void setNumPulse(RNPulsatorView rnPulsatorView, @Nullable Integer numPulse){
        rnPulsatorView.setCount(numPulse);
    }

    @ReactProp(name = "animationDuration")
    public void setAnimationDuration(RNPulsatorView rnPulsatorView, @Nullable Integer animationDuration){
        rnPulsatorView.setDuration(animationDuration * 1000);

    }
}
