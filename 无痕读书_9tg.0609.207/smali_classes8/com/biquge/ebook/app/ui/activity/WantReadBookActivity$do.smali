.class public Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;
.super Lcom/apk/u5;
.source "WantReadBookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public native()V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SP_WANT_BOOK_FIRST_SHOW_MSG_KEY"

    .line 1
    invoke-static {v1, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    const v1, 0x7f1003e2

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do$do;

    invoke-direct {v3, p0}, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do$do;-><init>(Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;)V

    .line 4
    invoke-static {v0, v1, v3, v2, v2}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    const/4 v0, 0x0

    const-string v1, "REFRESH_WANTBOOK_KEY"

    .line 5
    invoke-static {v1, v0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "data"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "MarqueeList"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 5
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v6, "BookName"

    .line 6
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Author"

    .line 7
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "UserName"

    .line 8
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f1003d4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    aput-object v6, v8, v5

    .line 9
    invoke-static {v7, v8}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->mMarqueeView:Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;

    .line 11
    iget v3, v0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->goto:I

    iget v4, v0, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->this:I

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;->setNotices(Ljava/util/List;)V

    .line 14
    new-instance v1, Lcom/apk/xh;

    invoke-direct {v1, v0, v3, v4}, Lcom/apk/xh;-><init>(Lcom/biquge/ebook/app/widget/marqueeview/MarqueeView;II)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->post(Ljava/lang/Runnable;)Z

    .line 15
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->lastWeekNumberTv:Landroid/widget/TextView;

    const-string v1, "LastWeekBookCount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->lastWeekPeopleTv:Landroid/widget/TextView;

    const-string v1, "LastWeekCount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/WantReadBookActivity;->totalPeopleTv:Landroid/widget/TextView;

    const-string v1, "SeekOutNumber"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method
