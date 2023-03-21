package com.biquge.ebook.app.bean;

/* loaded from: classes8.dex */
public class SameCommendBean {
    public int by_minus;
    public int first;
    public int get_data_size;
    public int max_count;
    public MovieBean movie;
    public MovieBean tingshu;

    /* loaded from: classes8.dex */
    public static class MovieBean {
        public int time_gap;
        public int time_total;
        public String ys_apk;
        public String ys_pkg;

        public int getTime_gap() {
            return this.time_gap;
        }

        public int getTime_total() {
            return this.time_total;
        }

        public String getYs_apk() {
            return this.ys_apk;
        }

        public String getYs_pkg() {
            return this.ys_pkg;
        }

        public void setTime_gap(int i) {
            this.time_gap = i;
        }

        public void setTime_total(int i) {
            this.time_total = i;
        }

        public void setYs_apk(String str) {
            this.ys_apk = str;
        }

        public void setYs_pkg(String str) {
            this.ys_pkg = str;
        }
    }

    public int getBy_minus() {
        if (this.by_minus == 0) {
            this.by_minus = 10;
        }
        return this.by_minus;
    }

    public int getFirst() {
        if (this.first == 0) {
            this.first = 10;
        }
        return this.first;
    }

    public int getGet_data_size() {
        if (this.get_data_size == 0) {
            this.get_data_size = 1;
        }
        return this.get_data_size;
    }

    public int getMax_count() {
        if (this.max_count == 0) {
            this.max_count = 3;
        }
        return this.max_count;
    }

    public MovieBean getMovie() {
        return this.movie;
    }

    public MovieBean getTingshu() {
        return this.tingshu;
    }

    public void setBy_minus(int i) {
        this.by_minus = i;
    }

    public void setFirst(int i) {
        this.first = i;
    }

    public void setGet_data_size(int i) {
        this.get_data_size = i;
    }

    public void setMax_count(int i) {
        this.max_count = i;
    }

    public void setMovie(MovieBean movieBean) {
        this.movie = movieBean;
    }

    public void setTingshu(MovieBean movieBean) {
        this.tingshu = movieBean;
    }
}
