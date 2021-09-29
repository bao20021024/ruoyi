package com.ruoyi.medical.modle;

import java.util.List;

public class Option {

    private String label;
    private Object value;

    private List<Option> children;

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public Object getValue() {
        return value;
    }

    public void setValue(Object value) {
        this.value = value;
    }

    public List<Option> getChildren() {
        return children;
    }

    public void setChildren(List<Option> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "Option{" +
                "label='" + label + '\'' +
                ", value=" + value +
                ", children=" + children +
                '}';
    }
}
