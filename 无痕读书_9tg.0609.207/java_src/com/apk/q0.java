package com.apk;

import com.biquge.ebook.app.bean.RankListBean;
import com.google.gson.internal.bind.TypeAdapters;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: PublicDataHelper.java */
/* loaded from: classes8.dex */
public class q0 {

    /* renamed from: do  reason: not valid java name */
    public static String[] f3773do = {ze.q(R.string.main_list_mode_small), ze.q(R.string.main_list_mode_big), ze.q(R.string.main_grid_mode_small), ze.q(R.string.main_grid_mode_big)};

    /* renamed from: if  reason: not valid java name */
    public static String[] f3777if = {ze.q(R.string.main_sort_mode_read), ze.q(R.string.main_sort_mode_update)};

    /* renamed from: for  reason: not valid java name */
    public static String[] f3775for = {ze.q(R.string.element_my_booklist_release_txt), ze.q(R.string.element_my_booklist_draft_txt), ze.q(R.string.element_my_booklist_collect_txt)};

    /* renamed from: new  reason: not valid java name */
    public static String[] f3778new = {ze.q(R.string.rank_hot_txt), ze.q(R.string.rank_new_txt), ze.q(R.string.rank_grade_txt), ze.q(R.string.rank_finish_txt)};

    /* renamed from: try  reason: not valid java name */
    public static final String[] f3780try = {"hot", "new", "vote", "over"};

    /* renamed from: case  reason: not valid java name */
    public static final String[] f3771case = {ze.q(R.string.rank_week_txt), ze.q(R.string.rank_month_txt), ze.q(R.string.rank_all_txt)};

    /* renamed from: else  reason: not valid java name */
    public static final String[] f3774else = {"week", TypeAdapters.AnonymousClass27.MONTH, "total"};

    /* renamed from: goto  reason: not valid java name */
    public static final String[] f3776goto = {ze.q(R.string.rank_category_man_txt), ze.q(R.string.rank_category_woman_txt)};

    /* renamed from: this  reason: not valid java name */
    public static final String[] f3779this = {"man", "lady"};

    /* renamed from: break  reason: not valid java name */
    public static final String[] f3770break = {ze.q(R.string.comic_rank_area_all), ze.q(R.string.comic_rank_area_gn), ze.q(R.string.comic_rank_area_rh), ze.q(R.string.comic_rank_area_om), ze.q(R.string.comic_rank_area_gt), ze.q(R.string.comic_rank_area_qt)};

    /* renamed from: catch  reason: not valid java name */
    public static final String[] f3772catch = {"area/all", "area/gn", "area/rh", "area/om", "area/gt", "area/qt"};

    /* renamed from: do  reason: not valid java name */
    public static String[] m2098do() {
        return new String[]{ze.q(R.string.element_my_booklist_release_txt), ze.q(R.string.element_my_booklist_draft_txt), ze.q(R.string.element_my_booklist_collect_txt)};
    }

    /* renamed from: for  reason: not valid java name */
    public static String[] m2099for() {
        return new String[]{ze.q(R.string.rank_hot_txt), ze.q(R.string.rank_new_txt), ze.q(R.string.rank_grade_txt), ze.q(R.string.rank_finish_txt)};
    }

    /* renamed from: if  reason: not valid java name */
    public static List<RankListBean> m2100if() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new RankListBean("hot", ze.q(R.string.rank_category_hot)));
        arrayList.add(new RankListBean("over", ze.q(R.string.rank_category_finish)));
        arrayList.add(new RankListBean("commend", ze.q(R.string.rank_category_recommend)));
        arrayList.add(new RankListBean("new", ze.q(R.string.rank_category_new)));
        arrayList.add(new RankListBean("vote", ze.q(R.string.rank_category_grade)));
        arrayList.add(new RankListBean("collect", ze.q(R.string.rank_category_collect)));
        return arrayList;
    }

    /* renamed from: new  reason: not valid java name */
    public static String[] m2101new() {
        return new String[]{ze.q(R.string.book_element_new_txt), ze.q(R.string.book_element_hot_txt), ze.q(R.string.book_element_collect_txt), ze.q(R.string.book_element_recommend_txt)};
    }

    /* renamed from: try  reason: not valid java name */
    public static String[] m2102try() {
        return new String[]{ze.q(R.string.rank_week_txt), ze.q(R.string.rank_month_txt), ze.q(R.string.rank_all_txt)};
    }
}
