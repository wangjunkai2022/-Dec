.class public Lcom/apk/rq0;
.super Ljava/lang/Object;
.source "SkinMaterialViewInflater.java"

# interfaces
.implements Lcom/apk/dq0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "androidx.coordinatorlayout.widget.CoordinatorLayout"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Lcom/apk/vq0;

    invoke-direct {p2, p1, p3}, Lcom/apk/vq0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p2

    :cond_0
    const-string v0, "com.google.android.material."

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.google.android.material.bottomnavigation.BottomNavigationView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "com.google.android.material.textfield.TextInputEditText"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "com.google.android.material.textfield.TextInputLayout"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "com.google.android.material.navigation.NavigationView"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "com.google.android.material.floatingactionbutton.FloatingActionButton"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "com.google.android.material.appbar.CollapsingToolbarLayout"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "com.google.android.material.appbar.AppBarLayout"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_7
    const-string v2, "com.google.android.material.tabs.TabLayout"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    new-instance v1, Lcom/apk/uq0;

    invoke-direct {v1, p1, p3}, Lcom/apk/uq0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 6
    :pswitch_1
    new-instance v1, Lcom/apk/tq0;

    invoke-direct {v1, p1, p3}, Lcom/apk/tq0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 7
    :pswitch_2
    new-instance v1, Lcom/apk/wq0;

    invoke-direct {v1, p1, p3}, Lcom/apk/wq0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 8
    :pswitch_3
    new-instance v1, Lcom/apk/xq0;

    invoke-direct {v1, p1, p3}, Lcom/apk/xq0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 9
    :pswitch_4
    new-instance v1, Lcom/apk/zq0;

    invoke-direct {v1, p1, p3}, Lcom/apk/zq0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 10
    :pswitch_5
    new-instance v1, Lcom/apk/ar0;

    invoke-direct {v1, p1, p3}, Lcom/apk/ar0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 11
    :pswitch_6
    new-instance v1, Lcom/apk/yq0;

    invoke-direct {v1, p1, p3}, Lcom/apk/yq0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_1

    .line 12
    :pswitch_7
    new-instance v1, Lcom/apk/sq0;

    invoke-direct {v1, p1, p3}, Lcom/apk/sq0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_1
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7e5534f1 -> :sswitch_7
        -0x1fc92048 -> :sswitch_6
        -0xc2e83c1 -> :sswitch_5
        0x1759dbce -> :sswitch_4
        0x31576793 -> :sswitch_3
        0x5ec1a986 -> :sswitch_2
        0x617199b3 -> :sswitch_1
        0x7432f393 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
