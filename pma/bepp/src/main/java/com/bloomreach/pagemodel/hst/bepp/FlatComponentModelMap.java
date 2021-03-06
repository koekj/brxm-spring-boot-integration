package com.bloomreach.pagemodel.hst.bepp;

import java.util.HashMap;
import java.util.Map;

public class FlatComponentModelMap {

    private Map<String, FlatComponentModel> components = new HashMap<>();

    private Map<String, FlatComponentModel> content = new HashMap<>();

    private Map<String, FlatComponentModel> menu = new HashMap<>();

    public Map<String, FlatComponentModel> getComponents() {
        return components;
    }

    public void setComponents(final Map<String, FlatComponentModel> components) {
        this.components = components;
    }

    public FlatComponentModel putComponent(final String key, final FlatComponentModel value) {
        return components.put(key, value);
    }

    public FlatComponentModel putContent(final String key, final FlatComponentModel value) {
        return content.put(key, value);
    }

    public FlatComponentModel putMenu(final String key, final FlatComponentModel value) {
        return menu.put(key, value);
    }

    public Map<String, FlatComponentModel> getContent() {
        return content;
    }

    public void setContent(final Map<String, FlatComponentModel> content) {
        this.content = content;
    }

    public Map<String, FlatComponentModel> getMenu() {
        return menu;
    }

    public void setMenu(final Map<String, FlatComponentModel> menu) {
        this.menu = menu;
    }
}
